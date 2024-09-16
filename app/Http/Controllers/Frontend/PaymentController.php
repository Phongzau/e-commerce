<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\CodSetting;
use App\Models\GeneralSetting;
use App\Models\Order;
use App\Models\OrderProduct;
use App\Models\PaypalSetting;
use App\Models\Product;
use App\Models\Transaction;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Srmklive\PayPal\Services\PayPal as PayPalClient;
use Illuminate\Support\Str;

class PaymentController extends Controller
{
    public function index()
    {
        if (!Session::has('address')) {
            return redirect()->route('user.checkout');
        }
        return view("frontend.pages.payment");
    }

    public function paymentSuccess()
    {
        return view('frontend.pages.payment-success');
    }

    public function storeOrder($paymentMethod, $paymentStatus, $transactionId, $paidAmount, $paidCurrencyName)
    {
        $settings = GeneralSetting::query()->first();

        $order = new Order();
        $order->invoice_id = rand(1, 999999);
        $order->user_id = Auth::user()->id;
        $order->sub_total = getCartTotal();
        $order->amount = getFinalPayableAmount();
        $order->currency_name = $settings->currency_name;
        $order->currency_symbol = $settings->currency_icon;
        $order->product_qty = Cart::content()->count();
        $order->payment_method = $paymentMethod;
        $order->payment_status = $paymentStatus;
        $order->order_address = json_encode(Session::get('address'));
        $order->shipping_method = json_encode(Session::get('shipping_method'));
        $order->coupon = json_encode(Session::get('coupon'));
        $order->order_status = 'pending';
        $order->save();

        // store order products
        foreach (Cart::content() as $item) {
            $product = Product::query()->findOrFail($item->id);
            $orderProduct = new OrderProduct();
            $orderProduct->order_id = $order->id;
            $orderProduct->product_id = $item->id;
            $orderProduct->vendor_id = $product->vendor_id;
            $orderProduct->product_name = $product->name;
            $orderProduct->variants = json_encode($item->options->variants);
            $orderProduct->variant_total = $item->options->variants_total;
            $orderProduct->unit_price = $item->price;
            $orderProduct->qty = $item->qty;
            $orderProduct->save();
        }

        // store transaction details
        $transaction = new Transaction();
        $transaction->order_id = $order->id;
        $transaction->transaction_id = $transactionId;
        $transaction->payment_method = $paymentMethod;
        $transaction->amount = getFinalPayableAmount();
        $transaction->amount_real_currency = $paidAmount;
        $transaction->amount_real_currency_name = $paidCurrencyName;
        $transaction->save();
    }

    public function clearSession()
    {
        Cart::destroy();
        Session::forget('address');
        Session::forget('shipping_method');
        Session::forget('coupon');
    }

    public function paypalConfig()
    {
        $paypalSetting = PaypalSetting::query()->findOrFail(1);
        $config =
            [
                'mode'    => $paypalSetting->mode == 1 ? 'live' : 'sandbox',
                'sandbox' => [
                    'client_id'         => $paypalSetting->client_id,
                    'client_secret'     => $paypalSetting->secret_key,
                    'app_id'            => 'APP-80W284485P519543T',
                ],
                'live' => [
                    'client_id'         => $paypalSetting->client_id,
                    'client_secret'     => $paypalSetting->secret_key,
                    'app_id'            => '',
                ],

                'payment_action' => 'Sale',
                'currency'       => $paypalSetting->currency_name,
                'notify_url'     => '',
                'locale'         => 'en_US',
                'validate_ssl'   =>  true,
            ];
        return $config;
    }

    /** Paypal redirect */
    public function payWithPaypal()
    {
        $paypalSetting = PaypalSetting::query()->findOrFail(1);
        $config = $this->paypalConfig();
        $provider = new PayPalClient($config);
        // $provider->setApiCredentials($config);
        $provider->getAccessToken();

        // calculate payable amount depending on currency rate
        $total = getFinalPayableAmount();
        $payableAmount = round($total * $paypalSetting->currency_rate, 2);
        $response = $provider->createOrder([
            "intent" => "CAPTURE",

            "application_context" => [
                "return_url" => route('user.paypal.success'),
                "cancel_url" => route('user.paypal.cancel'),
            ],
            "purchase_units" => [
                [
                    "amount" => [
                        "currency_code" => $config['currency'],
                        "value" => $payableAmount,
                    ],
                ]
            ]
        ]);

        if (isset($response['id']) && $response['id'] != null) {
            foreach ($response['links'] as $link) {
                if ($link['rel'] === 'approve') {
                    return redirect()->away($link['href']);
                }
            }
        } else {
            return redirect()->route('user.paypal.cancel');
        }
    }

    public function paypalSuccess(Request $request)
    {
        $config = $this->paypalConfig();
        $provider = new PayPalClient($config);
        $provider->getAccessToken();

        $response = $provider->capturePaymentOrder($request->token);

        if (isset($response['status']) && $response['status'] == 'COMPLETED') {

            // calculate payable amount depending on currency rate

            $paypalSetting = PaypalSetting::query()->findOrFail(1);
            $total = getFinalPayableAmount();
            $paidAmount = round($total * $paypalSetting->currency_rate, 2);

            $this->storeOrder('paypal', 1, $response['id'], $paidAmount, $paypalSetting->currency_name);

            // clear session
            $this->clearSession();

            return redirect()->route('user.payment.success');
        }

        return redirect()->route('user.paypal.cancel');
    }

    public function paypalCancel()
    {
        toastr('Some went wrong try again later!', 'error', 'Error');
        return redirect()->route('user.payment');
    }

    public function payWithCod(Request $request)
    {
        $codPaySetting = CodSetting::query()->first();
        $setting = GeneralSetting::query()->first();
        if ($codPaySetting->status == 0) {
            return redirect()->back();
        }

        // amount calculation
        $total = getFinalPayableAmount();
        $paidAmount = round($total, 2);

        $this->storeOrder('COD', 0, Str::random(10), $paidAmount, $setting->currency_name);

        // clear session
        $this->clearSession();

        return redirect()->route('user.payment.success');
    }
}
