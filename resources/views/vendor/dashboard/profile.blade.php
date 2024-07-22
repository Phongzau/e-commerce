@extends('vendor.dashboard.layouts.master')

@section('content')
    <section id="wsus__dashboard">
        <div class="container-fluid">
            @include('vendor.dashboard.layouts.sidebar')

            <div class="row">
                <div class="col-xl-9 col-xxl-10 col-lg-9 ms-auto">
                    <div class="dashboard_content mt-2 mt-md-0">
                        <h3><i class="far fa-user"></i> profile</h3>
                        <div class="wsus__dashboard_profile">
                            <div class="wsus__dash_pro_area">
                                <h4>basic information</h4>

                                <form method="POST" action="{{ route('user.profile.update') }}"
                                    enctype="multipart/form-data">
                                    @csrf
                                    @method('PUT')
                                    <div class="col-md-12">
                                        <div class="col-md-2">
                                            <div class="wsus__dash_pro_img">
                                                <img src="{{ Auth::user()->image ? asset(Auth::user()->image) : asset('frontend/assets/images/default_image_user.jpg') }}"
                                                    alt="img" class="img-fluid w-100">
                                                <input type="file" name="image">
                                            </div>
                                        </div>
                                        <div class="col-md-12 mt-3">
                                            <div class="wsus__dash_pro_single">
                                                <i class="fas fa-user-tie"></i>
                                                <input type="text" value="{{ Auth::user()->name }}" name="name"
                                                    placeholder="Name">
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="wsus__dash_pro_single">
                                                <i class="fal fa-envelope-open"></i>
                                                <input type="email" value="{{ Auth::user()->email }}" name="email"
                                                    placeholder="Email">
                                            </div>
                                        </div>
                                        <div class="col-xl-12">
                                            <button class="common_btn mb-4 mt-2" type="submit">upload</button>
                                        </div>
                                    </div>
                                </form>



                                <div class="wsus__dash_pass_change mt-2">
                                    <form action="{{ route('user.profile.update.password') }}" method="POST">
                                        @csrf
                                        <h4>Update Password</h4>
                                        <div class="row mt-4">
                                            <div class="col-xl-4 col-md-6 ">
                                                <div class="wsus__dash_pro_single">
                                                    <i class="fas fa-unlock-alt"></i>
                                                    <input type="password" name="current_password"
                                                        placeholder="Current Password">
                                                </div>
                                            </div>
                                            <div class="col-xl-4 col-md-6 ">
                                                <div class="wsus__dash_pro_single">
                                                    <i class="fas fa-lock-alt"></i>
                                                    <input type="password" name="password" placeholder="New Password">
                                                </div>
                                            </div>
                                            <div class="col-xl-4 ">
                                                <div class="wsus__dash_pro_single">
                                                    <i class="fas fa-lock-alt"></i>
                                                    <input type="password" name="password_confirmation"
                                                        placeholder="Confirm Password">
                                                </div>
                                            </div>
                                            <div class="col-xl-12">
                                                <button class="common_btn" type="submit">upload</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
