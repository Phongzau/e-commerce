@extends('vendor.layouts.master')

@section('content')
    <section id="wsus__dashboard">
        <div class="container-fluid">
            @include('vendor.layouts.sidebar')
            <div class="row">
                <div class="col-xl-9 col-xxl-10 col-lg-9 ms-auto">
                    <div class="dashboard_content mt-2 mt-md-0">
                        <h3><i class="far fa-user"></i> Products</h3>
                        <div class="wsus__dashboard_profile">
                            <div class="wsus__dash_pro_area">
                                <h5 class="mb-4">Edit Product Variant</h5>
                                <form method="POST"
                                    action="{{ route('vendor.product-variant.update', $productVariant->id) }}">
                                    @csrf
                                    @method('PUT')
                                    <div class="form-group wsus__input">
                                        <label for="">Name</label>
                                        <input type="text" name="name" value="{{ $productVariant->name }}"
                                            class="form-control">
                                        <input type="hidden" name="product_id" value="{{ $productVariant->product_id }}">
                                    </div>
                                    <div class="form-group wsus__input">
                                        <label for="inputState">Status</label>
                                        <select id="inputState" name="status" value="{{ old('status') }}"
                                            class="form-control">
                                            <option {{ $productVariant->status == 1 ? 'selected' : '' }} value="1">
                                                Active</option>
                                            <option {{ $productVariant->status == 0 ? 'selected' : '' }} value="0">
                                                Inactive</option>
                                        </select>
                                    </div>
                                    <button type="submit" class="btn btn-primary">Update</button>
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
