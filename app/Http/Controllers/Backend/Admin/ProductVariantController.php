<?php

namespace App\Http\Controllers\Backend\Admin;

use App\DataTables\ProductVariantDataTable;
use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\ProductVariant;
use App\Models\ProductVariantItem;
use Illuminate\Http\Request;

class ProductVariantController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request, ProductVariantDataTable $dataTable)
    {
        $product = Product::query()->findOrFail($request->product_id);
        return $dataTable->render('admin.product.product-variant.index', compact('product'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.product.product-variant.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'product_id' => ['required', 'integer'],
            'name' => ['required', 'max:200', 'unique:product_variants,name'],
            'status' => ['required'],
        ]);

        $productVariant = new ProductVariant();
        $productVariant->name = $request->name;
        $productVariant->product_id = $request->product_id;
        $productVariant->status = $request->status;
        $productVariant->save();

        toastr('Created Successfully!', 'success');

        return redirect()->route('admin.product-variant.index', ['product_id' => $request->product_id]);
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
        return view('admin.product.product-variant.edit', compact('productVariant'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $productVariant = ProductVariant::query()->findOrFail($id);
        $request->validate([
            'name' => ['required', 'max:200', 'unique:product_variants,name,' . $productVariant->id],
            'status' => ['required'],
        ]);
        $productVariant->name = $request->name;
        $productVariant->status = $request->status;
        $productVariant->save();

        toastr('Updated Successfully!', 'success');

        return redirect()->route('admin.product-variant.index', ['product_id' => $productVariant->product_id]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $productVariant = ProductVariant::query()->findOrFail($id);
        $variantItem = ProductVariantItem::query()->where('product_variant_id', $productVariant->id)->count();
        if ($variantItem > 0) {
            return response([
                'status' => 'error',
                'message' => 'This variant contain variant items in it delete the variant items first for delete this variant!',
            ]);
        } else {
            $productVariant->delete();
            return response([
                'status' => 'success',
                'message' => 'Deleted Successfully!',
            ]);
        }
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
