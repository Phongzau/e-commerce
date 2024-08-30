<?php

namespace App\Http\Controllers\Backend\Admin;

use App\Http\Controllers\Controller;
use App\Models\Advertisement;
use App\Traits\ImageUploadTrait;
use Illuminate\Http\Request;

class AdvertisementController extends Controller
{
    use ImageUploadTrait;
    public function index()
    {
        $homepage_section_banner_one = Advertisement::query()->where('key', 'homepage_section_banner_one')->first();
        $homepage_section_banner_one = json_decode($homepage_section_banner_one?->value);

        $homepage_section_banner_two = Advertisement::query()->where('key', 'homepage_section_banner_two')->first();
        $homepage_section_banner_two = json_decode($homepage_section_banner_two?->value);

        $homepage_section_banner_three = Advertisement::query()->where('key', 'homepage_section_banner_three')->first();
        $homepage_section_banner_three = json_decode($homepage_section_banner_three?->value);

        $homepage_section_banner_four = Advertisement::query()->where('key', 'homepage_section_banner_four')->first();
        $homepage_section_banner_four = json_decode($homepage_section_banner_four?->value);

        $product_page_banner = Advertisement::query()->where('key', 'product_page_banner_section')->first();
        $product_page_banner = json_decode($product_page_banner?->value);

        $cart_page_banner_section = Advertisement::query()->where('key', 'cart_page_banner_section')->first();
        $cart_page_banner_section = json_decode($cart_page_banner_section?->value);


        return view('admin.advertisement.index', compact(['homepage_section_banner_one', 'homepage_section_banner_two', 'homepage_section_banner_three', 'homepage_section_banner_four', 'product_page_banner', 'cart_page_banner_section']));
    }

    public function homepageBannerSectionOne(Request $request)
    {
        $request->validate([
            'banner_image' => ['image'],
            'banner_url' => ['url'],
        ]);

        // Handle the image upload
        $bannerSectionOne = Advertisement::query()->where('key', 'homepage_section_banner_one')->first();
        $sectionOne = json_decode($bannerSectionOne?->value);
        $imagePath = $this->updateImage($request, 'banner_image', 'uploads', $sectionOne?->banner_one->banner_image);

        $value = [
            'banner_one' => [
                'banner_image' => $imagePath,
                'banner_url' => $request->banner_url,
                'status' => $request->has('status') ? 1 : 0,
            ]
        ];

        // if (isset($imagePath)) {
        //     $value['banner_one']['banner_image'] = $imagePath;
        // }

        $value = json_encode($value);
        Advertisement::updateOrCreate(
            ['key' => 'homepage_section_banner_one'],
            ['value' => $value]
        );

        toastr('Updated Successfully!', 'success', 'success');

        return redirect()->back();
    }

    public function homepageBannerSectionTwo(Request $request)
    {
        $request->validate([
            'banner_one_image' => ['image'],
            'banner_one_url' => ['url'],
            'banner_two_image' => ['image'],
            'banner_two_url' => ['url'],
        ]);

        // Handle the image upload
        $bannerSectionTwo = Advertisement::query()->where('key', 'homepage_section_banner_two')->first();
        $sectionTwo = json_decode($bannerSectionTwo?->value);
        $imagePath = $this->updateImage($request, 'banner_one_image', 'uploads', $sectionTwo?->banner_one->banner_image);
        $imagePathTwo = $this->updateImage($request, 'banner_two_image', 'uploads', $sectionTwo?->banner_two->banner_image);

        $value = [
            'banner_one' => [
                'banner_image' => $imagePath,
                'banner_url' => $request->banner_one_url,
                'status' => $request->has('banner_one_status') ? 1 : 0,
            ],
            'banner_two' => [
                'banner_image' => $imagePathTwo,
                'banner_url' => $request->banner_two_url,
                'status' => $request->has('banner_two_status') ? 1 : 0,
            ]
        ];

        $value = json_encode($value);
        Advertisement::updateOrCreate(
            ['key' => 'homepage_section_banner_two'],
            ['value' => $value]
        );

        toastr('Updated Successfully!', 'success', 'success');

        return redirect()->back();
    }

    public function homepageBannerSectionThree(Request $request)
    {
        $request->validate([
            'banner_one_image' => ['image'],
            'banner_one_url' => ['url'],
            'banner_two_image' => ['image'],
            'banner_two_url' => ['url'],
            'banner_three_image' => ['image'],
            'banner_three_url' => ['url'],

        ]);

        // Handle the image upload
        $bannerSectionThree = Advertisement::query()->where('key', 'homepage_section_banner_three')->first();
        $sectionThree = json_decode($bannerSectionThree?->value);
        $imagePath = $this->updateImage($request, 'banner_one_image', 'uploads', $sectionThree?->banner_one->banner_image);
        $imagePathTwo = $this->updateImage($request, 'banner_two_image', 'uploads', $sectionThree?->banner_two->banner_image);
        $imagePathThree = $this->updateImage($request, 'banner_three_image', 'uploads', $sectionThree?->banner_three->banner_image);

        $value = [
            'banner_one' => [
                'banner_image' => $imagePath,
                'banner_url' => $request->banner_one_url,
                'status' => $request->has('banner_one_status') ? 1 : 0,
            ],
            'banner_two' => [
                'banner_image' => $imagePathTwo,
                'banner_url' => $request->banner_two_url,
                'status' => $request->has('banner_two_status') ? 1 : 0,
            ],
            'banner_three' => [
                'banner_image' => $imagePathThree,
                'banner_url' => $request->banner_three_url,
                'status' => $request->has('banner_three_status') ? 1 : 0,
            ]
        ];

        $value = json_encode($value);
        Advertisement::updateOrCreate(
            ['key' => 'homepage_section_banner_three'],
            ['value' => $value]
        );

        toastr('Updated Successfully!', 'success', 'success');

        return redirect()->back();
    }

    public function homepageBannerSectionFour(Request $request)
    {
        $request->validate([
            'banner_image' => ['image'],
            'banner_url' => ['url'],
        ]);

        // Handle the image upload
        $bannerSectionFour = Advertisement::query()->where('key', 'homepage_section_banner_four')->first();
        $sectionFour = json_decode($bannerSectionFour?->value);
        $imagePath = $this->updateImage($request, 'banner_image', 'uploads', $sectionFour?->banner_one->banner_image);

        $value = [
            'banner_one' => [
                'banner_image' => $imagePath,
                'banner_url' => $request->banner_url,
                'status' => $request->has('status') ? 1 : 0,
            ]
        ];

        // if (isset($imagePath)) {
        //     $value['banner_one']['banner_image'] = $imagePath;
        // }

        $value = json_encode($value);
        Advertisement::updateOrCreate(
            ['key' => 'homepage_section_banner_four'],
            ['value' => $value]
        );

        toastr('Updated Successfully!', 'success', 'success');

        return redirect()->back();
    }

    public function productPageBanner(Request $request)
    {
        $request->validate([
            'banner_image' => ['image'],
            'banner_url' => ['url'],
        ]);

        // Handle the image upload
        $productPageBanner = Advertisement::query()->where('key', 'product_page_banner_section')->first();
        $productBannerPage = json_decode($productPageBanner?->value);
        $imagePath = $this->updateImage($request, 'banner_image', 'uploads', $productBannerPage?->banner_one->banner_image);

        $value = [
            'banner_one' => [
                'banner_image' => $imagePath,
                'banner_url' => $request->banner_url,
                'status' => $request->has('status') ? 1 : 0,
            ]
        ];

        // if (isset($imagePath)) {
        //     $value['banner_one']['banner_image'] = $imagePath;
        // }

        $value = json_encode($value);
        Advertisement::updateOrCreate(
            ['key' => 'product_page_banner_section'],
            ['value' => $value]
        );

        toastr('Updated Successfully!', 'success', 'success');

        return redirect()->back();
    }

    public function cartPageBanner(Request $request)
    {
        $request->validate([
            'banner_one_image' => ['image'],
            'banner_one_url' => ['url'],
            'banner_two_image' => ['image'],
            'banner_two_url' => ['url'],
        ]);

        // Handle the image upload
        $bannerSectionTwo = Advertisement::query()->where('key', 'cart_page_banner_section')->first();
        $sectionTwo = json_decode($bannerSectionTwo?->value);
        $imagePath = $this->updateImage($request, 'banner_one_image', 'uploads', $sectionTwo?->banner_one->banner_image);
        $imagePathTwo = $this->updateImage($request, 'banner_two_image', 'uploads', $sectionTwo?->banner_two->banner_image);

        $value = [
            'banner_one' => [
                'banner_image' => $imagePath,
                'banner_url' => $request->banner_one_url,
                'status' => $request->has('banner_one_status') ? 1 : 0,
            ],
            'banner_two' => [
                'banner_image' => $imagePathTwo,
                'banner_url' => $request->banner_two_url,
                'status' => $request->has('banner_two_status') ? 1 : 0,
            ]
        ];

        $value = json_encode($value);
        Advertisement::updateOrCreate(
            ['key' => 'cart_page_banner_section'],
            ['value' => $value]
        );

        toastr('Updated Successfully!', 'success', 'success');

        return redirect()->back();
    }
}
