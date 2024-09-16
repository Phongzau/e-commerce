<?php

namespace App\Http\Controllers\Backend\Admin;

use App\Http\Controllers\Controller;
use App\Models\CodSetting;
use App\Models\PaypalSetting;
use Illuminate\Http\Request;

class PaymentSettingController extends Controller
{
    public function index()
    {
        $codSetting = CodSetting::query()->findOrFail(1);
        $paypalSetting = PaypalSetting::query()->findOrFail(1);
        return view("admin.payment-settings.index", compact([
            'paypalSetting',
            'codSetting'
        ]));
    }
}
