<?php

namespace App\Http\Controllers\Backend\Admin;

use App\Http\Controllers\Controller;
use App\Models\UserAddress;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CheckOutController extends Controller
{
    public function index()
    {
        $userAddresses = UserAddress::query()->where('user_id', Auth::user()->id)->get();
        return view('frontend.pages.checkout', compact(['userAddresses']));
    }
}
