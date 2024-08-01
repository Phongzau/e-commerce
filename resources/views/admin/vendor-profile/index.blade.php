@extends('admin.layouts.master')

@section('section')
    <!-- Main Content -->

    <section class="section">
        <div class="section-header">
            <h1>Vendor Profile</h1>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-md-12 ">
                    <div class="card">
                        <div class="card-header">
                            <h4>Update Vendor Profile</h4>
                        </div>
                        <div class="card-body">
                            <form action="{{ route('admin.vendor-profile.store') }}" method="POST"
                                enctype="multipart/form-data">
                                @csrf
                                <div class="form-group">
                                    <label for="">Preview</label> <br>
                                    <img width="150px" src="{{ asset($profile->banner) }}" alt="">
                                </div>
                                <div class="form-group">
                                    <label for="">Banner</label>
                                    <input type="file" name="banner" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">Shop Name</label>
                                    <input type="text" name="shop_name" value="{{ $profile->shop_name }}"
                                        class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">Phone</label>
                                    <input type="text" name="phone" value="{{ $profile->phone }}" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">Email</label>
                                    <input type="text" name="email" value="{{ $profile->email }}" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">Address</label>
                                    <input type="text" name="address" value="{{ $profile->address }}"
                                        class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">Description</label>
                                    <textarea class="summernote" name="description">{{ $profile->description }}"</textarea>
                                </div>
                                <div class="form-group">
                                    <label for="">Facebook </label>
                                    <input type="text" name="fb_link" value="{{ $profile->fb_link }}"
                                        class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">Twitter </label>
                                    <input type="text" name="tw_link" value="{{ $profile->tw_link }}"
                                        class="form-control">
                                </div>
                                <div class="form-group">
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
    </section>
@endsection
