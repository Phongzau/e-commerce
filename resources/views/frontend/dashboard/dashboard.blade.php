@extends('frontend.dashboard.layouts.master')

@section('content')
    <section id="wsus__dashboard">
        <div class="container-fluid">
            {{-- Side bar start --}}
            @include('frontend.dashboard.layouts.sidebar')
            {{-- Side bar end --}}
            <div class="row">
                <div class="col-xl-9 col-xxl-10 col-lg-9 ms-auto">
                    <div class="dashboard_content">
                        <h3>User Dashboard</h3>
                        <div class="wsus__dashboard">
                            <div class="row">
                                <div class="col-xl-2 col-6 col-md-4">
                                    <a class="wsus__dashboard_item red" href="{{ route('user.orders.index') }}">
                                        <i class="fas fa-shopping-cart"></i>
                                        <p>Total Order</p>
                                        <h4 style="color: #ffff">{{ $totalOrder }}</h4>
                                    </a>
                                </div>
                                <div class="col-xl-2 col-6 col-md-4">
                                    <a class="wsus__dashboard_item green" href="dsahboard_download.html">
                                        <i class="fas fa-shipping-fast"></i>
                                        <p>Pending Order</p>
                                        <h4 style="color: #ffff">{{ $pendingOrder }}</h4>
                                    </a>
                                </div>
                                <div class="col-xl-2 col-6 col-md-4">
                                    <a class="wsus__dashboard_item sky" href="dsahboard_review.html">
                                        <i class="fas fa-check"></i>
                                        <p>Complete Order</p>
                                        <h4 style="color: #ffff">{{ $completeOrder }}</h4>
                                    </a>
                                </div>
                                <div class="col-xl-2 col-6 col-md-4">
                                    <a class="wsus__dashboard_item blue" href="{{ route('user.review.index') }}">
                                        <i class="fas fa-star"></i>
                                        <p>Reviews</p>
                                        <h4 style="color: #ffff">{{ $reviews }}</h4>
                                    </a>
                                </div>
                                <div class="col-xl-2 col-6 col-md-4">
                                    <a class="wsus__dashboard_item orange" href="{{ route('user.wishlist.index') }}">
                                        <i class="fas fa-heart"></i>
                                        <p>Wishlist</p>
                                        <h4 style="color: #ffff">{{ $wishlists }}</h4>
                                    </a>
                                </div>
                                <div class="col-xl-2 col-6 col-md-4">
                                    <a class="wsus__dashboard_item purple" href="{{ route('user.profile') }}">
                                        <i class="fas fa-user-shield"></i>
                                        <p>Profile</p>
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
