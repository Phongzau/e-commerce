<?php

use App\Http\Controllers\Backend\Admin\AdminController;
use App\Http\Controllers\Backend\Admin\AdminVendorController;
use App\Http\Controllers\Backend\Admin\BrandController;
use App\Http\Controllers\Backend\Admin\CategoryController;
use App\Http\Controllers\Backend\Admin\ChildCategoryController;
use App\Http\Controllers\Backend\Admin\CouponController;
use App\Http\Controllers\Backend\Admin\FlashSaleController;
use App\Http\Controllers\Backend\Admin\FooterGridThreeController;
use App\Http\Controllers\Backend\Admin\FooterGridTwoController;
use App\Http\Controllers\Backend\Admin\FooterInfoController;
use App\Http\Controllers\Backend\Admin\FooterSocialController;
use App\Http\Controllers\Backend\Admin\HomePageSettingController;
use App\Http\Controllers\Backend\Admin\OrderController;
use App\Http\Controllers\Backend\Admin\PaymentSettingController;
use App\Http\Controllers\Backend\Admin\PaypalSettingController;
use App\Http\Controllers\Backend\Admin\ProductController;
use App\Http\Controllers\Backend\Admin\ProductImageGalleryController;
use App\Http\Controllers\Backend\Admin\ProductVariantController;
use App\Http\Controllers\Backend\Admin\ProductVariantItemController;
use App\Http\Controllers\Backend\Admin\ProfileController;
use App\Http\Controllers\Backend\Admin\SellerProductController;
use App\Http\Controllers\Backend\Admin\SettingController;
use App\Http\Controllers\Backend\Admin\ShippingRuleController;
use App\Http\Controllers\Backend\Admin\SliderController;
use App\Http\Controllers\Backend\Admin\SubCategoryController;
use App\Http\Controllers\Backend\Admin\SubscribersController;
use App\Http\Controllers\Backend\Admin\TransactionController;
use Illuminate\Support\Facades\Route;

/** Admin Routes */

Route::get('dashboard', [AdminController::class, 'dashboard'])->name('dashboard');

/** Profile Routes */
Route::get('profile', [ProfileController::class, 'index'])->name('profile');
Route::post('profile/update', [ProfileController::class, 'updateProfile'])->name('profile.update');
Route::post('profile/update/password', [ProfileController::class, 'updatePassword'])->name('password.update');

/** Slider Routes */
Route::resource('slider', SliderController::class);

/** Category Routes */
Route::put('change-status', [CategoryController::class, 'changeStatus'])->name('category.change-status');
Route::resource('category', CategoryController::class);

/** Sub Category Routes */
Route::put('subcategory/change-status', [SubCategoryController::class, 'changeStatus'])->name('sub-category.change-status');
Route::resource('sub-category', SubCategoryController::class);

/** Child Category Routes */
Route::put('childcategory/change-status', [ChildCategoryController::class, 'changeStatus'])->name('child-category.change-status');
Route::get('get-subcategories', [ChildCategoryController::class, 'getSubCategories'])->name('get-subcategories');
Route::resource('child-category', ChildCategoryController::class);

/** Brand Routes */
Route::put('brand/change-status', [BrandController::class, 'changeStatus'])->name('brand.change-status');
Route::resource('brand', BrandController::class);

/** Vendor Profile Routes */
Route::resource('vendor-profile', AdminVendorController::class);

/** Products Routes */
Route::put('product/change-status', [ProductController::class, 'changeStatus'])->name('product.change-status');
Route::get('product/get-subcategories', [ProductController::class, 'getSubCategories'])->name('product.get-subcategories');
Route::get('product/get-childcategories', [ProductController::class, 'getChildCategories'])->name('product.get-childcategories');
Route::resource('products', ProductController::class);

/** Product Image Gallery Routes */
Route::resource('product-image-gallery', ProductImageGalleryController::class);

/** Product Variant Routes */
Route::put('product-variant/change-status', [ProductVariantController::class, 'changeStatus'])->name('product-variant.change-status');
Route::resource('product-variant', ProductVariantController::class);

/** Product Variant Item Routes */
Route::put('product-variant-item/change-status', [ProductVariantItemController::class, 'changeStatus'])->name('product-variant-item.change-status');
Route::get('product-variant-item/{product_id}/{variant_id}', [ProductVariantItemController::class, 'index'])->name('product-variant-item.index');
Route::get('product-variant-item/{variant_id}', [ProductVariantItemController::class, 'create'])->name('product-variant-item.create');
Route::post('product-variant-item', [ProductVariantItemController::class, 'store'])->name('product-variant-item.store');
Route::get('product-variant-item-edit/{id}', [ProductVariantItemController::class, 'edit'])->name('product-variant-item.edit');
Route::put('product-variant-item/{id}', [ProductVariantItemController::class, 'update'])->name('product-variant-item.update');
Route::delete('product-variant-item/{id}', [ProductVariantItemController::class, 'destroy'])->name('product-variant-item.destroy');

/** Seller Product Routes */
Route::get('seller-products', [SellerProductController::class, 'index'])->name('seller-products.index');
Route::put('change-approve-status', [SellerProductController::class, 'changeApproveStatus'])->name('change-approve-status');
Route::get('seller-pending-products', [SellerProductController::class, 'pendingProducts'])->name('seller-pending-products');

/** Coupon Routes*/
Route::put('coupon/change-status', [CouponController::class, 'changeStatus'])->name('coupon.change-status');
Route::resource('coupons', CouponController::class);

/** Shipping Rule Routes*/
Route::put('shipping-rule/change-status', [ShippingRuleController::class, 'changeStatus'])->name('shipping-rule.change-status');
Route::resource('shipping-rule', ShippingRuleController::class);

/** Flash Sale Routes */
Route::get('flash-sale', [FlashSaleController::class, 'index'])->name('flash-sale.index');
Route::put('flash-sale', [FlashSaleController::class, 'update'])->name('flash-sale.update');
Route::post('flash-sale/add-product', [FlashSaleController::class, 'addProduct'])->name('flash-sale.add-product');
Route::put('flash-sale/show-at-home/change-status', [FlashSaleController::class, 'changeShowAtHomeStatus'])->name('flash-sale.show-at-home.change-status');
Route::put('flash-sale/change-status', [FlashSaleController::class, 'changeStatus'])->name('flash-sale.change-status');
Route::delete('flash-sale/{id}', [FlashSaleController::class, 'destroy'])->name('flash-sale.destroy');


/** Setting Routes */
Route::get('setting', [SettingController::class, 'index'])->name('setting.index');
Route::put('general-setting-update', [SettingController::class, 'generalSettingUpdate'])->name('general-setting-update');
Route::put('email-setting-update', [SettingController::class, 'emailConfigSettingUpdate'])->name('email-setting-update');


/** Home page setting routes */
Route::get('home-page-setting', [HomePageSettingController::class, 'index'])->name('home-page-setting');
Route::put('popular-category-section', [HomePageSettingController::class, 'updatePopularCategorySection'])->name('popular-category-section');
Route::put('product-slider-section-one', [HomePageSettingController::class, 'updateProductSliderSectionOne'])->name('product-slider-section-one');
Route::put('product-slider-section-two', [HomePageSettingController::class, 'updateProductSliderSectionTwo'])->name('product-slider-section-two');
Route::put('product-slider-section-three', [HomePageSettingController::class, 'updateProductSliderSectionThree'])->name('product-slider-section-three');

/** Subscribers Routes */
Route::get('subscribers', [SubscribersController::class, 'index'])->name('subscribers.index');
Route::delete('subscribers/{id}', [SubscribersController::class, 'destroy'])->name('subscribers.destroy');
Route::post('subscribers-send-mail', [SubscribersController::class, 'sendMail'])->name('subscribers-send-mail');

/** Footer Routes */
Route::put('footer-socials/change-status', [FooterSocialController::class, 'footerSocialChangeStatus'])->name('footer-socials.change-status');
Route::put('footer-grid-two/change-status', [FooterGridTwoController::class, 'footerGridTwoChangeStatus'])->name('footer-grid-two.change-status');
Route::put('footer-grid-three/change-status', [FooterGridThreeController::class, 'footerGridTwoChangeStatus'])->name('footer-grid-three.change-status');
Route::resource('footer-info', FooterInfoController::class);
Route::resource('footer-socials', FooterSocialController::class);
Route::put('footer-grid-two/change-title', [FooterGridTwoController::class, 'footerGridTwoChangeTitle'])->name('footer-grid-two.change-title');
Route::put('footer-grid-three/change-title', [FooterGridThreeController::class, 'footerGridThreeChangeTitle'])->name('footer-grid-three.change-title');
Route::resource('footer-grid-two', FooterGridTwoController::class);
Route::resource('footer-grid-three', FooterGridThreeController::class);

/** Order routes */
Route::get('payment-status', [OrderController::class, 'changePaymentStatus'])->name('payment.status');
Route::get('order-status', [OrderController::class, 'changeOrderStatus'])->name('order.status');
Route::get('pending-orders', [OrderController::class, 'pendingOrders'])->name('pending-orders');
Route::get('processed-orders', [OrderController::class, 'processedOrders'])->name('processed-orders');
Route::get('dropped-off-orders', [OrderController::class, 'droppedOffOrders'])->name('dropped-off-orders');
Route::get('shipped-orders', [OrderController::class, 'shippedOrders'])->name('shipped-orders');
Route::get('out-for-delivery-orders', [OrderController::class, 'outForDeliveryOrders'])->name('out-for-delivery-orders');
Route::get('delivered-order', [OrderController::class, 'deliveredOrders'])->name('delivered-orders');
Route::get('canceled-order', [OrderController::class, 'canceledOrders'])->name('canceled-orders');
Route::resource('order', OrderController::class);

// Order Transaction routes
Route::get('transaction', [TransactionController::class, 'index'])->name('transaction');

/** Payment Setting Routes */
Route::get('payment-settings', [PaymentSettingController::class, 'index'])->name('payment-settings.index');
Route::resource('paypal-setting', PaypalSettingController::class);
