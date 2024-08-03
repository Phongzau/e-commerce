<?php

namespace App\Http\Controllers\Backend\Vendor;

use App\DataTables\VendorProductDataTable;
use App\Http\Controllers\Controller;
use App\Models\Brand;
use App\Models\Category;
use App\Models\ChildCategory;
use App\Models\Product;
use App\Models\ProductImageGallery;
use App\Models\ProductVariant;
use App\Models\SubCategory;
use App\Traits\ImageUploadTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;


class VendorProductController extends Controller
{
    use ImageUploadTrait;
    /**
     * Display a listing of the resource.
     */
    public function index(VendorProductDataTable $dataTable)
    {
        return $dataTable->render('vendor.product.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $categories = Category::query()->where('status', 1)->get();
        $brands = Brand::query()->get();

        return view('vendor.product.create', compact(['categories', 'brands']));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'thumb_image' => ['required', 'image', 'max:3000'],
            'name' => ['required', 'max:200', 'unique:products,name'],
            'category_id' => ['required'],
            'brand_id' => ['required'],
            'price' => ['required'],
            'qty' => ['required'],
            'short_description' => ['required', 'max:600'],
            'long_description' => ['required'],
            'status' => ['required'],
        ]);

        $product = new Product();
        $product->thumb_image = $this->uploadImage($request, 'thumb_image', 'uploads');
        $product->name = $request->name;
        $product->slug = Str::slug($request->name);
        $product->vendor_id = Auth::user()->vendor->id;
        $product->category_id = $request->category_id;
        $product->sub_category_id = $request->sub_category_id;
        $product->child_category_id = $request->child_category_id;
        $product->brand_id = $request->brand_id;
        $product->qty = $request->qty;
        $product->short_description = $request->short_description;
        $product->long_description = $request->long_description;
        $product->sku = $request->sku;
        $product->price = $request->price;
        $product->offer_price = $request->offer_price;
        $product->offer_start_date = $request->offer_start_date;
        $product->offer_end_date = $request->offer_end_date;
        $product->product_type = $request->product_type;
        $product->status = $request->status;
        $product->is_approved = 0;

        $product->save();

        toastr('Created Successfully!', 'success');
        return redirect()->route('vendor.products.index');
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
        $product = Product::query()->findOrFail($id);
        /** Check if it's the owner of the product */
        if ($product->vendor_id != Auth::user()->vendor->id) {
            return redirect()->route('vendor.error.404');
        }
        $categories = Category::query()->where('status', 1)->get();
        $subCategories = SubCategory::query()->where('status', 1)->get();
        $childCategories = ChildCategory::query()->where('status', 1)->get();
        $brands = Brand::query()->where('status', 1)->get();
        return view('vendor.product.edit', compact(['product', 'categories', 'subCategories', 'childCategories', 'brands']));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $product = Product::query()->findOrFail($id);
        /** Check if it's the owner of the product */
        if ($product->vendor_id != Auth::user()->vendor->id) {
            return redirect()->route('vendor.error.404');
        }

        $request->validate([
            'thumb_image' => ['nullable', 'image', 'max:3000'],
            'name' => ['required', 'max:200', 'unique:products,name,' . $product->id],
            'category_id' => ['required'],
            'brand_id' => ['required'],
            'price' => ['required'],
            'qty' => ['required'],
            'short_description' => ['required', 'max:600'],
            'long_description' => ['required'],
            'status' => ['required'],
        ]);

        $product->thumb_image = $this->updateImage($request, 'thumb_image', 'uploads', $product->thumb_image);
        $product->name = $request->name;
        $product->slug = Str::slug($request->name);
        $product->vendor_id = Auth::user()->vendor->id;
        $product->category_id = $request->category_id;
        $product->sub_category_id = $request->sub_category_id;
        $product->child_category_id = $request->child_category_id;
        $product->brand_id = $request->brand_id;
        $product->qty = $request->qty;
        $product->short_description = $request->short_description;
        $product->long_description = $request->long_description;
        $product->sku = $request->sku;
        $product->price = $request->price;
        $product->offer_price = $request->offer_price;
        $product->offer_start_date = $request->offer_start_date;
        $product->offer_end_date = $request->offer_end_date;
        $product->product_type = $request->product_type;
        $product->status = $request->status;
        $product->is_approved = 0;

        $product->save();

        toastr('Updated Successfully!', 'success');
        return redirect()->route('vendor.products.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $product = Product::query()->findOrFail($id);
        if ($product->vendor_id != Auth::user()->vendor->id) {
            return redirect()->route('vendor.error.404');
        }
        $this->deleteImage($product->thumb_image);

        $imagePaths = ProductImageGallery::query()->where('product_id', $product->id)->get();

        foreach ($imagePaths as $path) {
            $this->deleteImage($path->image);
            $path->delete();
        }

        /** Delete product variant if exists */
        $variants = ProductVariant::query()->where('product_id', $product->id)->get();
        foreach ($variants as $variant) {
            $variant->productVariantItems()->delete();
            $variant->delete();
        }

        $product->delete();

        return response([
            'status' => 'success',
            'message' => 'Deleted Successfully!',
        ]);
    }

    public function getSubCategories(Request $request)
    {
        $subCategories = SubCategory::query()->where('status', 1)->where('category_id', $request->id)->get();
        return $subCategories;
    }

    public function getChildCategories(Request $request)
    {
        $childCategories = ChildCategory::query()->where('status', 1)->where('sub_category_id', $request->id)->get();
        return $childCategories;
    }

    public function changeStatus(Request $request)
    {
        $product = Product::query()->findOrFail($request->id);
        $product->status = $request->status == 'true' ? 1 : 0;
        $product->save();

        return response([
            'message' => 'Status has been updated'
        ]);
    }
}
