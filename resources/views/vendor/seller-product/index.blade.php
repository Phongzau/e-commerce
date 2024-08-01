@extends('vendor.layouts.master')

@section('content')
    <section id="wsus__dashboard">
        <div class="container-fluid">
            @include('vendor.layouts.sidebar')

            <div class="row">
                <div class="col-xl-9 col-xxl-10 col-lg-9 ms-auto">
                    <div class="dashboard_content mt-2 mt-md-0">
                        <h3><i class="far fa-user"></i> profile</h3>
                        <div class="wsus__dashboard_profile">
                            <div class="wsus__dash_pro_area">
                                <form action="{{ route('vendor.shop-profile.store') }}" method="POST"
                                    enctype="multipart/form-data">
                                    @csrf
                                    <div class="form-group wsus__input">
                                        <label for="">Preview</label> <br>
                                        <img width="150px" src="{{ asset($profile->banner) }}" alt="">
                                    </div>
                                    <div class="form-group wsus__input">
                                        <label for="">Banner</label>
                                        <input type="file" name="banner" class="form-control">
                                    </div>
                                    <div class="form-group wsus__input">
                                        <label for="">Shop Name</label>
                                        <input type="text" name="shop_name" value="{{ $profile->shop_name }}"
                                            class="form-control">
                                    </div>
                                    <div class="form-group wsus__input">
                                        <label for="">Phone</label>
                                        <input type="text" name="phone" value="{{ $profile->phone }}"
                                            class="form-control">
                                    </div>
                                    <div class="form-group wsus__input">
                                        <label for="">Email</label>
                                        <input type="text" name="email" value="{{ $profile->email }}"
                                            class="form-control">
                                    </div>
                                    <div class="form-group wsus__input">
                                        <label for="">Address</label>
                                        <input type="text" name="address" value="{{ $profile->address }}"
                                            class="form-control">
                                    </div>
                                    <div class="form-group wsus__input">
                                        <label for="">Description</label>
                                        <textarea class="summernote" name="description">{{ $profile->description }}"</textarea>
                                    </div>
                                    <div class="form-group wsus__input">
                                        <label for="">Facebook </label>
                                        <input type="text" name="fb_link" value="{{ $profile->fb_link }}"
                                            class="form-control">
                                    </div>
                                    <div class="form-group wsus__input">
                                        <label for="">Twitter </label>
                                        <input type="text" name="tw_link" value="{{ $profile->tw_link }}"
                                            class="form-control">
                                    </div>
                                    <div class="form-group wsus__input">
                                        <label for="">Instagram </label>
                                        <input type="text" name="insta_link" value="{{ $profile->insta_link }}"
                                            class="form-control">
                                    </div>
                                    <button class="btn btn-primary" type="submit">Update</button>
                                </form>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
