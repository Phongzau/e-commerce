<?php

namespace App\Http\Controllers\Backend\Vendor;

use App\DataTables\VendorProductVariantDataTable;
use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\ProductVariant;
use Illuminate\Http\Request;

class VendorProductVariantController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request, VendorProductVariantDataTable $dataTable)
    {
        $product = Product::query()->findOrFail($request->product_id);
        return $dataTable->render('vendor.product.product-variant.index', compact(['product']));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('vendor.product.product-variant.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'product_id' => ['required', 'integer'],
            'name' => ['required', 'max:200'],
            'status' => ['required'],
        ]);

        $productVariant = new ProductVariant();
        $productVariant->name = $request->name;
        $productVariant->product_id = $request->product_id;
        $productVariant->status = $request->status;
        $productVariant->save();

        toastr('Created Successfully!', 'success');

        return redirect()->route('vendor.product-variant.index', ['product_id' => $request->product_id]);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $productVariant = ProductVariant::query()->findOrFail($id);
        return view('vendor.product.product-variant.edit', compact('productVariant'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $variantProduct = ProductVariant::query()->findOrFail($id);
        $request->validate([
            'name' => ['required', 'max:200'],
            'status' => ['required'],
        ]);
        $variantProduct->name = $request->name;
        $variantProduct->product_id = $request->product_id;
        $variantProduct->status = $request->status;
        $variantProduct->save();

        toastr('Updated Successfully!', 'success');

        return redirect()->route('vendor.product-variant.index', ['product_id' => $variantProduct->product_id]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $productVariant = ProductVariant::query()->findOrFail($id);
        $productVariant->delete();

        return response([
            'status' => 'success',
            'message' => 'Deleted Successfully',
        ]);
    }

    public function changeStatus(Request $request)
    {
        $productVariant = ProductVariant::query()->findOrFail($request->id);
        $productVariant->status = $request->status == 'true' ? 1 : 0;
        $productVariant->save();

        return response([
            'status' => 'success',
            'message' => 'Status Updated Successfully!',
        ]);
    }
}
