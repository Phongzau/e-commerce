<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Advertisement;
use App\Models\Brand;
use App\Models\FlashSale;
use App\Models\FlashSaleItem;
use App\Models\HomePageSetting;
use App\Models\Product;
use App\Models\Slider;
use App\Models\Wishlist;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    public function index()
    {
        $sliders = Slider::where('status', 1)->orderBy('serial', 'asc')->get();
        $flashSaleDate = FlashSale::query()->first();
        $flashSaleItem = FlashSaleItem::query()->where('show_at_home', 1)->where('status', 1)->get();
        $popularCategory = HomePageSetting::query()->where('key', 'popular_category_section')->first();
        $brands = Brand::query()->where('status', 1)->orderBy('id', 'DESC')->get();
        $typeBaseProducts = $this->getTypeBaseProduct();
        $categoryProductSliderSectionOne = HomePageSetting::query()->where('key', 'product_slider_section_one')->first();
        $categoryProductSliderSectionTwo = HomePageSetting::query()->where('key', 'product_slider_section_two')->first();
        $categoryProductSliderSectionThree = HomePageSetting::query()->where('key', 'product_slider_section_three')->first();

        $homepage_section_banner_one = Advertisement::query()->where('key', 'homepage_section_banner_one')->first();
        $homepage_section_banner_one = json_decode($homepage_section_banner_one->value);

        $homepage_section_banner_two = Advertisement::query()->where('key', 'homepage_section_banner_two')->first();
        $homepage_section_banner_two = json_decode($homepage_section_banner_two->value);

        $homepage_section_banner_three = Advertisement::query()->where('key', 'homepage_section_banner_three')->first();
        $homepage_section_banner_three = json_decode($homepage_section_banner_three->value);

        $homepage_section_banner_four = Advertisement::query()->where('key', 'homepage_section_banner_four')->first();
        $homepage_section_banner_four = json_decode($homepage_section_banner_four->value);

        return view('frontend.home.home', compact([
            'sliders',
            'flashSaleDate',
            'flashSaleItem',
            'popularCategory',
            'brands',
            'typeBaseProducts',
            'categoryProductSliderSectionOne',
            'categoryProductSliderSectionTwo',
            'categoryProductSliderSectionThree',
            'homepage_section_banner_one',
            'homepage_section_banner_two',
            'homepage_section_banner_three',
            'homepage_section_banner_four'
        ]));
    }

    public function getTypeBaseProduct()
    {
        $typeBaseProducts = [];

        // NewArrival
        $typeBaseProducts['new_arrival'] = Product::query()
            ->where(['product_type' => 'new_arrival', 'is_approved' => 1, 'status' => 1])
            ->orderBy('id', 'DESC')
            ->take(8)
            ->get();

        // Featured
        $typeBaseProducts['featured_product'] = Product::query()
            ->where(['product_type' => 'featured_product', 'is_approved' => 1, 'status' => 1])
            ->orderBy('id', 'DESC')
            ->take(8)
            ->get();

        // Top Product
        $typeBaseProducts['top_product'] = Product::query()
            ->where(['product_type' => 'top_product', 'is_approved' => 1, 'status' => 1])
            ->orderBy('id', 'DESC')
            ->take(8)
            ->get();

        // Best Product
        $typeBaseProducts['best_product'] = Product::query()
            ->where(['product_type' => 'best_product', 'is_approved' => 1, 'status' => 1])
            ->orderBy('id', 'DESC')
            ->take(8)
            ->get();

        return $typeBaseProducts;
    }
}
