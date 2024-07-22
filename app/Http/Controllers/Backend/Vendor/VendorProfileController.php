<?php

namespace App\Http\Controllers\Backend\Vendor;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class VendorProfileController extends Controller
{
    public function index()
    {
        return view('vendor.dashboard.profile');
    }
}
