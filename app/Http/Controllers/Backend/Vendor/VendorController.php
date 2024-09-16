<?php

namespace App\Http\Controllers\Backend\Vendor;

use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\OrderProduct;
use App\Models\Product;
use App\Models\ProductReview;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;

class VendorController extends Controller
{
    public function dashboard()
    {
        $todayOrder = Order::query()->where('created_at', Carbon::today())->whereHas('orderProducts', function ($query) {
            $query->where('vendor_id', Auth::user()->vendor->id);
        })->count();
        $todayPendingOrder = Order::query()->where(['created_at' => Carbon::today(), 'order_status' => 'pending'])->whereHas('orderProducts', function ($query) {
            $query->where('vendor_id', Auth::user()->vendor->id);
        })->count();
        $totalOrder = Order::query()->whereHas('orderProducts', function ($query) {
            $query->where('vendor_id', Auth::user()->vendor->id);
        })->count();
        $totalPendingOrder = Order::query()->where(['order_status' => 'pending'])->whereHas('orderProducts', function ($query) {
            $query->where('vendor_id', Auth::user()->vendor->id);
        })->count();
        $totalCompleteOrder = Order::query()->where(['order_status' => 'delivered'])->whereHas('orderProducts', function ($query) {
            $query->where('vendor_id', Auth::user()->vendor->id);
        })->count();
        $totalProducts = Product::query()->where('vendor_id', Auth::user()->vendor->id)->count();
        $todaysEarnings = OrderProduct::query()->where('created_at', Carbon::today())
            ->whereHas('order', function ($query) {
                $query->where('payment_status', 1);
            })
            ->where('vendor_id', Auth::user()->vendor->id)->sum('unit_price');
        $monthEarnings = OrderProduct::query()->where('created_at', Carbon::now()->month)
            ->whereHas('order', function ($query) {
                $query->where('payment_status', 1);
            })
            ->where('vendor_id', Auth::user()->vendor->id)->sum('unit_price');
        $yearEarnings = OrderProduct::query()->where('created_at', Carbon::now()->year)
            ->whereHas('order', function ($query) {
                $query->where('payment_status', 1);
            })
            ->where('vendor_id', Auth::user()->vendor->id)->sum('unit_price');
        $totalEarnings = OrderProduct::query()->where('vendor_id', Auth::user()->vendor->id)
            ->whereHas('order', function ($query) {
                $query->where('payment_status', 1);
            })
            ->sum('unit_price');
        $totalReview = ProductReview::query()->whereHas('product', function ($query) {
            $query->where('vendor_id', Auth::user()->vendor->id);
        })->count();
        return view('vendor.dashboard.dashboard', compact('todayOrder', 'todayPendingOrder', 'totalOrder', 'totalPendingOrder', 'totalCompleteOrder', 'totalProducts', 'todaysEarnings', 'monthEarnings', 'yearEarnings', 'totalEarnings', 'totalReview'));
    }
}
