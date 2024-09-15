@extends('vendor.layouts.master')

@section('content')
    <section id="wsus__dashboard">
        <div class="container-fluid">
            {{-- Side bar start --}}
            @include('vendor.layouts.sidebar')
            {{-- Side bar end --}}
            <div class="row">
                <div class="col-xl-9 col-xxl-10 col-lg-9 ms-auto">
                    <div class="dashboard_content">
                        <div class="wsus__dashboard">
                            <div class="row">
                                <div class="col-xl-2 col-6 col-md-4">
                                    <a class="wsus__dashboard_item red" href="{{ route('vendor.orders') }}">
                                        <i class="fas fa-shopping-cart"></i>
                                        <p>Today's Orders</p>
                                        <h4 style="color: #ffff">{{ $todayOrder }}</h4>
                                    </a>
                                </div>
                                <div class="col-xl-2 col-6 col-md-4">
                                    <a class="wsus__dashboard_item red" href="{{ route('vendor.orders') }}">
                                        <i class="fas fa-shopping-cart"></i>
                                        <p>Td's Pending Orders</p>
                                        <h4 style="color: #ffff">{{ $todayPendingOrder }}</h4>
                                    </a>
                                </div>
                                <div class="col-xl-2 col-6 col-md-4">
                                    <a class="wsus__dashboard_item red" href="{{ route('vendor.orders') }}">
                                        <i class="fas fa-shopping-cart"></i>
                                        <p>Total Orders</p>
                                        <h4 style="color: #ffff">{{ $totalOrder }}</h4>
                                    </a>
                                </div>
                                <div class="col-xl-2 col-6 col-md-4">
                                    <a class="wsus__dashboard_item red" href="{{ route('vendor.orders') }}">
                                        <i class="fas fa-shopping-cart"></i>
                                        <p>Pending Orders</p>
                                        <h4 style="color: #ffff">{{ $totalPendingOrder }}</h4>
                                    </a>
                                </div>
                                <div class="col-xl-2 col-6 col-md-4">
                                    <a class="wsus__dashboard_item red" href="{{ route('vendor.orders') }}">
                                        <i class="fas fa-shopping-cart"></i>
                                        <p>Complete Orders</p>
                                        <h4 style="color: #ffff">{{ $totalCompleteOrder }}</h4>
                                    </a>
                                </div>
                                <div class="col-xl-2 col-6 col-md-4">
                                    <a class="wsus__dashboard_item green" href="{{ route('vendor.products.index') }}">
                                        <i class="fas fa-box"></i>
                                        <p>Total Product</p>
                                        <h4 style="color: #ffff">{{ $totalProducts }}</h4>
                                    </a>
                                </div>
                                <div class="col-xl-2 col-6 col-md-4">
                                    <a class="wsus__dashboard_item red" href="javascript:;">
                                        <i class="fas fa-shopping-cart"></i>
                                        <p>Today's Earning</p>
                                        <h4 style="color: #ffff">{{ $settings->currency_icon }}{{ $todaysEarnings }}</h4>
                                    </a>
                                </div>
                                <div class="col-xl-2 col-6 col-md-4">
                                    <a class="wsus__dashboard_item red" href="javascript:;">
                                        <i class="fas fa-shopping-cart"></i>
                                        <p>This Month's Earning</p>
                                        <h4 style="color: #ffff">{{ $settings->currency_icon }}{{ $monthEarnings }}</h4>
                                    </a>
                                </div>
                                <div class="col-xl-2 col-6 col-md-4">
                                    <a class="wsus__dashboard_item red" href="javascript:;">
                                        <i class="fas fa-shopping-cart"></i>
                                        <p>This Year's Earning</p>
                                        <h4 style="color: #ffff">{{ $settings->currency_icon }}{{ $yearEarnings }}</h4>
                                    </a>
                                </div>
                                <div class="col-xl-2 col-6 col-md-4">
                                    <a class="wsus__dashboard_item red" href="javascript:;">
                                        <i class="fas fa-shopping-cart"></i>
                                        <p>This Total Earning</p>
                                        <h4 style="color: #ffff">{{ $settings->currency_icon }}{{ $totalEarnings }}</h4>
                                    </a>
                                </div>
                                <div class="col-xl-2 col-6 col-md-4">
                                    <a class="wsus__dashboard_item red" href="{{ route('vendor.review.index') }}">
                                        <i class="fas fa-shopping-cart"></i>
                                        <p>This Total Review</p>
                                        <h4 style="color: #ffff">{{ $totalReview }}</h4>
                                    </a>
                                </div>
                                <div class="col-xl-2 col-6 col-md-4">
                                    <a class="wsus__dashboard_item orange" href="{{ route('vendor.shop-profile.index') }}">
                                        <i class="fas fa-user-shield"></i>
                                        <p>Shop profile</p>
                                        <h4 style="color: #ffff">-</h4>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
