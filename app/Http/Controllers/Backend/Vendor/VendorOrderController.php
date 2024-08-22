<?php

namespace App\Http\Controllers\Backend\Vendor;

use App\DataTables\VendorOrderDataTable;
use App\Http\Controllers\Controller;
use App\Models\Order;
use Illuminate\Http\Request;

class VendorOrderController extends Controller
{
    public function index(VendorOrderDataTable $dataTable)
    {
        return $dataTable->render("vendor.order.index");
    }

    public function show(string $id)
    {
        $order = Order::query()->with(['orderProducts'])->findOrFail($id);
        return view('vendor.order.show', compact('order'));
    }

    public function orderStatus(Request $request, string $id)
    {
        $order = Order::query()->findOrFail($id);
        $order->order_status = $request->order_status;
        $order->save();

        toastr('Status Updated Successfully!', 'success', 'Success');
        return redirect()->back();
    }
}
