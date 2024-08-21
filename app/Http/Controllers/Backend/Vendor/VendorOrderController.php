<?php

namespace App\Http\Controllers\Backend\Vendor;

use App\DataTables\VendorOrderDataTable;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class VendorOrderController extends Controller
{
    public function index(VendorOrderDataTable $dataTable)
    {
        return $dataTable->render("vendor.order.index");
    }
}
