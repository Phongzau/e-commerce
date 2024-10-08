<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Advertisement;
use App\Models\Brand;
use App\Models\Category;
use App\Models\ChildCategory;
use App\Models\Product;
use App\Models\ProductReview;
use App\Models\SubCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class FrontendProductController extends Controller
{
    public function productsIndex(Request $request)
    {
        if ($request->has('category')) {
            $category = Category::query()->where('slug', $request->category)->firstOrFail();
            $products = Product::query()->where([
                'category_id' => $category->id,
                'status' => 1,
                'is_approved' => 1,
            ])
                ->when($request->has('range'), function ($query) use ($request) {
                    $price = explode(';', $request->range);
                    $form = $price[0];
                    $to = $price[1];

                    return $query->where('price', '>=', $form)->where('price', '<=', $to);
                })
                ->paginate(12);
        } else if ($request->has('sub_category')) {
            $subCategory = SubCategory::query()->where('slug', $request->sub_category)->firstOrFail();
            $products = Product::query()->where([
                'sub_category_id' => $subCategory->id,
                'status' => 1,
                'is_approved' => 1,
            ])
                ->when($request->has('range'), function ($query) use ($request) {
                    $price = explode(';', $request->range);
                    $form = $price[0];
                    $to = $price[1];

                    return $query->where('price', '>=', $form)->where('price', '<=', $to);
                })
                ->paginate(12);
        } else if ($request->has('child_category')) {
            $childCategory = ChildCategory::query()->where('slug', $request->child_category)->firstOrFail();
            $products = Product::query()->where([
                'child_category_id' => $childCategory->id,
                'status' => 1,
                'is_approved' => 1,
            ])
                ->when($request->has('range'), function ($query) use ($request) {
                    $price = explode(';', $request->range);
                    $form = $price[0];
                    $to = $price[1];

                    return $query->where('price', '>=', $form)->where('price', '<=', $to);
                })
                ->paginate(12);
        } else if ($request->has('brand')) {
            $brand = Brand::query()->where('slug', $request->brand)->firstOrFail();
            $products = Product::query()->where([
                'brand_id' => $brand->id,
                'status' => 1,
                'is_approved' => 1,
            ])
                ->when($request->has('range'), function ($query) use ($request) {
                    $price = explode(';', $request->range);
                    $form = $price[0];
                    $to = $price[1];

                    return $query->where('price', '>=', $form)->where('price', '<=', $to);
                })
                ->paginate(12);
        } else if ($request->has('search')) {
            $products = Product::query()
                ->where(['status' => 1, 'is_approved' => 1])
                ->where(function ($query) use ($request) {
                    $query->where('name', 'like', '%' . $request->search . '%')
                        ->orWhere('long_description', 'like', '%' . $request->search . '%')
                        ->orWhereHas('category', function ($query) use ($request) {
                            $query->where('name', 'like', '%' . $request->search . '%')
                                ->orWhere('long_description', 'like', '%' . $request->search . '%');
                        });
                })

                ->paginate(12);
        } else {
            $products = Product::query()->where([
                'status' => 1,
                'is_approved' => 1,
            ])
                ->when($request->has('range'), function ($query) use ($request) {
                    $price = explode(';', $request->range);
                    $form = $price[0];
                    $to = $price[1];

                    return $query->where('price', '>=', $form)->where('price', '<=', $to);
                })
                ->paginate(12);
        }
        $categories = Category::query()->where('status', 1)->get();
        $brands = Brand::query()->where('status', 1)->get();
        $product_page_banner = Advertisement::query()->where('key', 'product_page_banner_section')->first();
        $product_page_banner = json_decode($product_page_banner?->value);

        return view('frontend.pages.product', compact('products', 'categories', 'brands', 'product_page_banner'));
    }

    public function showProduct(string $slug)
    {
        $product = Product::query()
            ->with(['vendor', 'category', 'productImageGalleries', 'productVariants', 'brand'])
            ->where('slug', $slug)
            ->where('status', 1)
            ->first();
        $reviews = ProductReview::query()->where('product_id', $product->id)->where('status', 1)->paginate(1);
        return view('frontend.pages.product-detail', compact('product', 'reviews'));
    }

    public function changeListView(Request $request)
    {
        Session::put('product_list_style', $request->style);
    }
}
