<?php

namespace App\Http\Controllers\Backend\Admin;

use App\Http\Controllers\Controller;
use App\Models\Blog;
use App\Models\Brand;
use App\Models\Category;
use App\Models\NewsletterSubscriber;
use App\Models\Order;
use App\Models\ProductReview;
use App\Models\User;
use App\Models\Vendor;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;

class AdminController extends Controller
{
    public function dashboard()
    {
        $todayOrder = Order::query()->where('created_at', Carbon::today())->count();
        $todayPendingOrder = Order::query()->where('created_at', Carbon::today())
            ->where('order_status', 'pending')
            ->count();
        $totalOrder = Order::query()->count();
        $totalPendingOrder = Order::query()->where('order_status', 'pending')
            ->count();
        $totalCanceledOrder = Order::query()->where('order_status', 'canceled')
            ->count();
        $totalCompleteOrder = Order::query()->where('order_status', 'delivered')
            ->count();
        $todaysEarnings = Order::query()->where('created_at', Carbon::today())
            ->where('order_status', '!=', 'canceled')
            ->sum('amount');
        $monthEarnings = Order::query()->where('order_status', '!=', 'canceled')
            ->whereMonth('created_at', Carbon::now()->month)
            ->sum('amount');
        $totalEarning = Order::query()->where('order_status', 'delivered')
            ->sum('amount');
        $yearEarnings = Order::query()->where('order_status', '!=', 'canceled')
            ->whereYear('created_at', Carbon::now()->year)
            ->sum('amount');
        $totalReviews = ProductReview::query()->count();
        $totalBrand = Brand::query()->count();
        $totalCategories = Category::query()->count();
        $totalBlogs = Blog::query()->count();
        $totalSubscribers = NewsletterSubscriber::query()->count();
        $totalVendors = Vendor::query()->count();
        $totalUsers = User::query()->count();
        return view('admin.dashboard', compact('todayOrder', 'todayPendingOrder', 'totalOrder', 'totalPendingOrder', 'totalCanceledOrder', 'totalCompleteOrder', 'totalEarning', 'todaysEarnings', 'monthEarnings', 'yearEarnings', 'totalReviews', 'totalBrand', 'totalCategories', 'totalBlogs', 'totalSubscribers', 'totalVendors', 'totalUsers'));
    }

    public function login()
    {
        return view('admin.auth.login');
    }
}
