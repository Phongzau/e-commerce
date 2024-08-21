<?php

use App\Http\Controllers\Backend\Vendor\VendorController;
use App\Http\Controllers\Backend\Vendor\VendorOrderController;
use App\Http\Controllers\Backend\Vendor\VendorProductController;
use App\Http\Controllers\Backend\Vendor\VendorProductImageGalleryController;
use App\Http\Controllers\Backend\Vendor\VendorProductVariantController;
use App\Http\Controllers\Backend\Vendor\VendorProductVariantItemController;
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
Route::put('product/change-status', [VendorProductController::class, 'changeStatus'])->name('product.change-status');
Route::get('product/get-subcategories', [VendorProductController::class, 'getSubCategories'])->name('product.get-subcategories');
Route::get('product/get-childcategories', [VendorProductController::class, 'getChildCategories'])->name('product.get-childcategories');
Route::resource('products', VendorProductController::class);

/** Product Image Gallery Routes */
Route::resource('product-image-gallery', VendorProductImageGalleryController::class);

/** Product Variant Routes */
Route::put('product-variant/change-status', [VendorProductVariantController::class, 'changeStatus'])->name('product-variant.change-status');
Route::resource('product-variant', VendorProductVariantController::class);

/** Product Variant Item Routes */
Route::put('product-variant-item/change-status', [VendorProductVariantItemController::class, 'changeStatus'])->name('product-variant-item.change-status');
Route::get('product-variant-item/{product_id}/{variant_id}', [VendorProductVariantItemController::class, 'index'])->name('product-variant-item.index');
Route::get('product-variant-item/{variant_id}', [VendorProductVariantItemController::class, 'create'])->name('product-variant-item.create');
Route::post('product-variant-item', [VendorProductVariantItemController::class, 'store'])->name('product-variant-item.store');
Route::get('product-variant-item-edit/{id}', [VendorProductVariantItemController::class, 'edit'])->name('product-variant-item.edit');
Route::put('product-variant-item/{id}', [VendorProductVariantItemController::class, 'update'])->name('product-variant-item.update');
Route::delete('product-variant-item/{id}', [VendorProductVariantItemController::class, 'destroy'])->name('product-variant-item.destroy');

/** Order Routes */
Route::get('orders', [VendorOrderController::class, 'index'])->name('orders');
