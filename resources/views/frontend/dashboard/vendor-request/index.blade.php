.
@extends('frontend.dashboard.layouts.master')

@section('content')
    <section id="wsus__dashboard">
        <div class="container-fluid">
            @include('frontend.dashboard.layouts.sidebar')

            <div class="row">
                <div class="col-xl-9 col-xxl-10 col-lg-9 ms-auto">
                    <div class="dashboard_content mt-2 mt-md-0">
                        <h3><i class="far fa-user"></i> Became to Vendor Today</h3>
                        <div class="wsus__dashboard_profile">
                            <div class="wsus__dash_pro_area">

                            </div>
                        </div>
                        <br>
                        <div class="wsus__dashboard_profile">
                            <div class="wsus__dash_pro_area">
                                <form action="{{ route('user.vendor-request.create') }}" method="POST"
                                    enctype="multipart/form-data">
                                    @csrf
                                    <div class="wsus__dash_pro_single">
                                        <i class="fas fa-images"></i>
                                        <input type="file" name="shop_image" placeholder="Shop Banner Image">
                                    </div>
                                    <div class="wsus__dash_pro_single">
                                        <i class="fas fa-user-tie"></i>
                                        <input type="text" name="shop_name" placeholder="Shop Name">
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="wsus__dash_pro_single">
                                                <i class="fas fa-envelope"></i>
                                                <input type="text" name="shop_email" placeholder="Shop Email">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="wsus__dash_pro_single">
                                                <i class="fas fa-phone"></i>
                                                <input type="text" name="shop_phone" placeholder="Shop Phone">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="wsus__dash_pro_single">
                                        <i class="fas fa-map-marker-alt"></i>
                                        <input type="text" name="shop_address" placeholder="Shop Address">
                                    </div>
                                    <div class="wsus__dash_pro_single">
                                        <textarea name="about" placeholder="About you"></textarea>
                                    </div>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@push('scripts')
@endpush
