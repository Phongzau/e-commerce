<?php

namespace App\Http\Controllers\Backend\Admin;

use App\Http\Controllers\Controller;
use App\Models\PaypalSetting;
use Illuminate\Http\Request;

class PaymentSettingController extends Controller
{
    public function index()
    {
        $paypalSetting = PaypalSetting::query()->findOrFail(1);
        return view("admin.payment-settings.index", compact([
            'paypalSetting'
        ]));
    }
}
