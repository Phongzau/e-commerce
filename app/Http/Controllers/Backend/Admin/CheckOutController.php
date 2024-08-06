<?php

namespace App\Http\Controllers\Backend\Admin;

use App\Http\Controllers\Controller;
use App\Models\ShippingRule;
use App\Models\UserAddress;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CheckOutController extends Controller
{
    public function index()
    {
        $shippingMethods = ShippingRule::query()->where('status', 1)->get();
        $userAddresses = UserAddress::query()->where('user_id', Auth::user()->id)->get();
        return view('frontend.pages.checkout', compact(['userAddresses', 'shippingMethods']));
    }

    public function createAddress(Request $request)
    {
        $request->validate([
            'name' => ['required', 'max:200'],
            'phone' => ['required', 'max:200'],
            'email' => ['required', 'email'],
            'country' => ['required', 'max:200'],
            'city' => ['required', 'max:200'],
            'zip' => ['required', 'max:200'],
            'address' => ['required', 'max:200'],
        ]);

        $userAddress = new UserAddress();
        $userAddress->user_id = Auth::user()->id;
        $userAddress->name = $request->name;
        $userAddress->phone = $request->phone;
        $userAddress->email = $request->email;
        $userAddress->country = $request->country;
        $userAddress->city = $request->city;
        $userAddress->zip = $request->zip;
        $userAddress->address = $request->address;
        $userAddress->save();

        toastr('Created Address Successfully!', 'success', 'Success');
        return redirect()->back();
    }
}
