<?php

use App\Http\Controllers\Backend\Vendor\VendorController;
use App\Http\Controllers\Backend\Vendor\VendorProductController;
use App\Http\Controllers\Backend\Vendor\VendorProductImageGalleryController;
use App\Http\Controllers\Backend\Vendor\VendorProductVariantController;
use App\Http\Controllers\Backend\Vendor\VendorProfileController;
use App\Http\Controllers\Backend\Vendor\VendorShopProfileController;
use Illuminate\Support\Facades\Route;

Route::get('dashboard', [VendorController::class, 'dashboard'])->name('dashboard');

/** Error Route*/
Route::get('error/404', function () {
    return view('vendor.error.404');
})->name('error.404');

/** Profile Routes */
Route::get('profile', [VendorProfileController::class, 'index'])->name('profile');
Route::put('/profile', [VendorProfileController::class, 'updateProfile'])->name('profile.update');
Route::post('/profile', [VendorProfileController::class, 'updatePassword'])->name('profile.update.password');

/** Vendor shop Profile Routes */
Route::resource('shop-profile', VendorShopProfileController::class);

/** Product Routes */
Route::get('product/get-subcategories', [VendorProductController::class, 'getSubCategories'])->name('product.get-subcategories');
Route::get('product/get-childcategories', [VendorProductController::class, 'getChildCategories'])->name('product.get-childcategories');
Route::resource('products', VendorProductController::class);

/** Product Image Gallery Routes */
Route::resource('product-image-gallery', VendorProductImageGalleryController::class);

/** Product Variant Routes */
Route::put('product-variant/change-status', [VendorProductVariantController::class, 'changeStatus'])->name('product-variant.change-status');
Route::resource('product-variant', VendorProductVariantController::class);
