<?php

namespace App\Http\Controllers\Backend\Admin;

use App\DataTables\SellerPendingProductDataTable;
use App\DataTables\SellerProductsDataTable;
use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;

class SellerProductController extends Controller
{
    public function index(SellerProductsDataTable $dataTable)
    {
        return $dataTable->render('admin.product.seller-product.index');
    }

    public function pendingProducts(SellerPendingProductDataTable $dataTable)
    {
        return $dataTable->render('admin.product.seller-pending-product.index');
    }

    public function changeApproveStatus(Request $request)
    {
        $product = Product::query()->findOrFail($request->id);
        $product->is_approved = $request->value;
        $product->save();

        return response([
            'message' => 'Product Approve Status Has Been Changed',
        ]);
    }
}
