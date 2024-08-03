<?php

namespace App\Http\Controllers\Backend\Vendor;

use App\DataTables\VendorProductVariantItemDataTable;
use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\ProductVariant;
use App\Models\ProductVariantItem;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class VendorProductVariantItemController extends Controller
{
    public function index(VendorProductVariantItemDataTable $dataTable, $productId, $variantId)
    {
        $product = Product::query()->findOrFail($productId);
        $productVariant = ProductVariant::query()->findOrFail($variantId);
        /** Check if it's the owner of the product */
        if ($product->vendor_id != Auth::user()->vendor->id) {
            return redirect()->route('vendor.error.404');
        }
        return $dataTable->render('vendor.product.product-variant-item.index', compact(['product', 'productVariant']));
    }

    public function create($variantId)
    {
        $variant = ProductVariant::query()->findOrFail($variantId);
        return view('vendor.product.product-variant-item.create', compact('variant'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => ['required', 'max:200'],
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
        return redirect()->route('vendor.product-variant-item.index', ['product_id' => $variantItem->productVariant->product_id, 'variant_id' => $request->variant_id]);
    }

    public function edit($id)
    {
        $variantItem = ProductVariantItem::query()->findOrFail($id);
        if ($variantItem->productVariant->product->vendor_id != Auth::user()->vendor->id) {
            return redirect()->route('vendor.error.404');
        }
        return view('vendor.product.product-variant-item.edit', compact('variantItem'));
    }

    public function update(Request $request, $id)
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

        return redirect()->route('vendor.product-variant-item.index', ['product_id' => $variantItem->productVariant->product_id, 'variant_id' => $request->variant_id]);
    }

    public function destroy(string $id)
    {
        $variantItem = ProductVariantItem::query()->findOrFail($id);
        /** Check if it's the owner of the product */
        if ($variantItem->productVariant->product->vendor_id != Auth::user()->vendor->id) {
            return redirect()->route('vendor.error.404');
        }
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
