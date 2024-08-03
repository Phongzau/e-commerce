<?php

use App\Http\Controllers\Backend\Admin\AdminController;
use App\Http\Controllers\Backend\Admin\CheckOutController;
use App\Http\Controllers\Frontend\CartController;
use App\Http\Controllers\Frontend\FrontendProductController;
use App\Http\Controllers\Frontend\UserAddressController;
use App\Http\Controllers\Frontend\UserDashboardController;
use App\Http\Controllers\Frontend\UserProfileController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [App\Http\Controllers\Frontend\HomeController::class, 'index'])->name('home');

Auth::routes();

Route::get('admin/login', [AdminController::class, 'login'])->name('admin.login');

/** Dashboard */
Route::group(['middleware' => ['auth', 'verified'], 'prefix' => 'user', 'as' => 'user.'], function () {
    Route::get('/dashboard', [UserDashboardController::class, 'index'])->name('dashboard');
    Route::get('/profile', [UserProfileController::class, 'index'])->name('profile');
    Route::put('/profile', [UserProfileController::class, 'updateProfile'])->name('profile.update');
    Route::post('/profile', [UserProfileController::class, 'updatePassword'])->name('profile.update.password');

    /** User Address Routes */
    Route::resource('address', UserAddressController::class);

    /** Checkout Routes */
    Route::get('checkout', [CheckOutController::class, 'index'])->name('checkout');
});

/** Product Routes */
Route::get('product-detail/{slug}', [FrontendProductController::class, 'showProduct'])->name('product-detail');


/** Add to Cart Routes */
Route::post('add-to-cart', [CartController::class, 'addToCart'])->name('add-to-cart');
Route::get('cart-details', [CartController::class, 'cartDetails'])->name('cart-details');
Route::post('cart/update-quantity', [CartController::class, 'updateProductQty'])->name('cart.update-quantity');
Route::get('clear-cart', [CartController::class, 'clearCart'])->name('clear.cart');
Route::get('cart/remove-product/{rowId}', [CartController::class, 'removeProduct'])->name('cart.remove-product');
Route::get('cart-count', [CartController::class, 'getCartCount'])->name('cart-count');
Route::get('cart/product-total', [CartController::class, 'cartTotal'])->name('cart.product-total');
