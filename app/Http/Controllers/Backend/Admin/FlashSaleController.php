<?php

namespace App\Http\Controllers\Backend\Admin;

use App\DataTables\FlashSaleItemDataTable;
use App\Http\Controllers\Controller;
use App\Models\FlashSale;
use App\Models\FlashSaleItem;
use App\Models\Product;
use Illuminate\Http\Request;

class FlashSaleController extends Controller
{
    public function index(FlashSaleItemDataTable $dataTable)
    {
        $flashSale = FlashSale::query()->first();
        $products = Product::query()->where('is_approved', 1)->where('status', 1)->orderBy('id', 'DESC')->get();
        return $dataTable->render('admin.flash-sale.index', compact('flashSale', 'products'));
    }

    public function update(Request $request)
    {
        $request->validate([
            'end_date' => ['required'],
        ]);

        FlashSale::updateOrCreate(
            ['id' => 1],
            ['end_date' => $request->end_date],
        );

        toastr('Updated Successfully!', 'success', 'Success');

        return redirect()->back();
    }

    public function addProduct(Request $request)
    {
        $request->validate([
            'product_id' => ['required', 'unique:flash_sale_items,product_id'],
            'show_at_home' => ['required'],
            'status' => ['required'],
        ], [
            'product_id.unique' => 'The product is already in flash sale!',
        ]);

        $flashSaleDate = FlashSale::first();

        $flashSaleItem = new FlashSaleItem();
        $flashSaleItem->product_id = $request->product_id;
        $flashSaleItem->flash_sale_id = $flashSaleDate->id;
        $flashSaleItem->show_at_home = $request->show_at_home;
        $flashSaleItem->status = $request->status;
        $flashSaleItem->save();

        toastr('Product Added Successfully!', 'success', 'Success');
        return redirect()->back();
    }

    public function changeShowAtHomeStatus(Request $request)
    {
        $flashSaleItem = FlashSaleItem::query()->findOrFail($request->id);
        $flashSaleItem->show_at_home = $request->status == 'true' ? 1 : 0;
        $flashSaleItem->save();
        return response([
            'message' => 'Show at home has been updated',
        ]);
    }


    public function changeStatus(Request $request)
    {
        $flashSaleItem = FlashSaleItem::query()->findOrFail($request->id);
        $flashSaleItem->status = $request->status == 'true' ? 1 : 0;
        $flashSaleItem->save();
        return response([
            'message' => 'Status has been updated',
        ]);
    }

    public function destroy(string $id)
    {
        $flashSaleItem = FlashSaleItem::query()->findOrFail($id);
        $flashSaleItem->delete();

        return response([
            'status' => 'success',
            'message' => 'Deleted Successfully!',
        ]);
    }
}
