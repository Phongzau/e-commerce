@extends('vendor.layouts.master')

@section('content')
    <section id="wsus__dashboard">
        <div class="container-fluid">
            @include('vendor.layouts.sidebar')

            <div class="row">
                <div class="col-xl-9 col-xxl-10 col-lg-9 ms-auto">
                    <div class="dashboard_content mt-2 mt-md-0">
                        <h3><i class="far fa-user"></i> Product Variant Items</h3>
                    </div>
                    <div class="wsus__dashboard_profile">
                        <div class="wsus__dash_pro_area">
                            <h5 class="mb-4">Create variant item</h5>
                            <form method="POST" action="{{ route('vendor.product-variant-item.store') }}">
                                @csrf
                                <div class="form-group wsus__input">
                                    <label for="">Variant Name</label>
                                    <input type="text" value="{{ $variant->name }}" class="form-control" readonly>
                                </div>
                                <div class="form-group wsus__input">
                                    <label for="">Name</label>
                                    <input type="text" name="name" value="{{ old('name') }}" class="form-control">
                                    <input type="hidden" name="variant_id" value="{{ $variant->id }}">
                                </div>
                                <div class="form-group wsus__input">
                                    <label for="">Price <code>(Set 0 for make it free)</code></label>
                                    <input type="text" name="price" value="{{ old('price') }}" class="form-control">
                                </div>
                                <div class="form-group wsus__input ">
                                    <label for="inputState">Is Default</label>
                                    <select id="inputState" name="is_default" value="{{ old('is_default') }}"
                                        class="form-control">
                                        <option value="" hidden>Select</option>
                                        <option value="1">Yes</option>
                                        <option value="0">No</option>
                                    </select>
                                </div>
                                <div class="form-group wsus__input ">
                                    <label for="inputState">Status</label>
                                    <select id="inputState" name="status" value="{{ old('status') }}" class="form-control">
                                        <option value="1">Active</option>
                                        <option value="0">Inactive</option>
                                    </select>
                                </div>
                                <button type="submit" class="btn btn-primary">Create</button>
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
