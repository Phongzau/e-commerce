<?php

namespace App\Http\Controllers\Backend\Admin;

use App\DataTables\ProductVariantItemDataTable;
use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\ProductVariant;
use App\Models\ProductVariantItem;
use Illuminate\Http\Request;

class ProductVariantItemController extends Controller
{
    public function index(ProductVariantItemDataTable $dataTable, $productId, $variantId)
    {
        $product = Product::query()->findOrFail($productId);
        $productVariant = ProductVariant::query()->findOrFail($variantId);
        return $dataTable->render('admin.product.product-variant-item.index', compact(['productVariant', 'product']));
    }

    public function create(string $id)
    {
        $productVariant = ProductVariant::query()->findOrFail($id);
        return view('admin.product.product-variant-item.create', compact('productVariant'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => ['required', 'max:200', 'unique:product_variant_items,name'],
            'variant_id' => ['required', 'integer'],
            'price' => ['required', 'integer'],
            'status' => ['required'],
            'is_default' => ['required'],
        ]);
        // $product_id = ProductVariant::query()->where('id', $request->variant_id)->pluck('product_id')->first();
        $variantItem = new ProductVariantItem();
        $variantItem->name = $request->name;
        $variantItem->product_variant_id = $request->variant_id;
        $variantItem->price = $request->price;
        $variantItem->is_default = $request->is_default;
        $variantItem->status = $request->status;
        $variantItem->save();

        toastr('Created Successfully!', 'success');
        return redirect()->route('admin.product-variant-item.index', ['product_id' => $variantItem->productVariant->product_id, 'variant_id' => $request->variant_id]);
    }

    public function edit(string $id)
    {
        $variantItem = ProductVariantItem::query()->findOrFail($id);
        return view('admin.product.product-variant-item.edit', compact(['variantItem']));
    }

    public function update(Request $request, string $id)
    {
        $variantItem = ProductVariantItem::query()->findOrFail($id);
        $request->validate([
            'name' => ['required', 'max:200'],
            'variant_id' => ['required', 'integer'],
            'price' => ['required', 'integer'],
            'status' => ['required'],
            'is_default' => ['required'],
        ]);
        // $product_id = ProductVariant::query()->where('id', $request->variant_id)->pluck('product_id')->first();
        $variantItem->name = $request->name;
        $variantItem->product_variant_id = $request->variant_id;
        $variantItem->price = $request->price;
        $variantItem->is_default = $request->is_default;
        $variantItem->status = $request->status;
        $variantItem->save();

        toastr('Updated Successfully!', 'success');

        return redirect()->route('admin.product-variant-item.index', ['product_id' => $variantItem->productVariant->product_id, 'variant_id' => $request->variant_id]);
    }

    public function destroy(string $id)
    {
        $variantItem = ProductVariantItem::query()->findOrFail($id);
        $variantItem->delete();

        return response([
            'status' => 'success',
            'message' => 'Deleted Successfully!',
        ]);
    }

    public function changeStatus(Request $request)
    {
        $variantItem = ProductVariantItem::query()->findOrFail($request->id);
        $variantItem->status = $request->status == 'true' ? 1 : 0;
        $variantItem->save();

        return response([
            'message' => 'Status has been updated'
        ]);
    }
}
