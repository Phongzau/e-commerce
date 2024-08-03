@extends('admin.layouts.master')

@section('section')
    <!-- Main Content -->

    <section class="section">
        <div class="section-header">
            <h1>Coupons</h1>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-md-12 ">
                    <div class="card">
                        <div class="card-header">
                            <h4>Create Coupon</h4>
                        </div>
                        <div class="card-body">
                            <form method="POST" action="{{ route('admin.coupons.store') }}">
                                @csrf
                                <div class="form-group">
                                    <label for="">Name</label>
                                    <input type="text" name="name" value="{{ old('name') }}" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">Code</label>
                                    <input type="text" name="code" value="{{ old('code') }}" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">Quantity</label>
                                    <input type="text" name="quantity" value="{{ old('quantity') }}"
                                        class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">Max Use Per Person</label>
                                    <input type="text" name="max_use" value="{{ old('name') }}" class="form-control">
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="">Start Date</label>
                                            <input type="text" name="start_date" class="form-control datepicker">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="">End Date</label>
                                            <input type="text" name="end_date" class="form-control datepicker">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group ">
                                            <label for="inputState">Discount Type</label>
                                            <select id="inputState" name="discount_type" value="{{ old('status') }}"
                                                class="form-control sub-category ">
                                                <option value="" hidden>Select</option>
                                                <option value="percent">Percentage (%)</option>
                                                <option value="amount">Amount ($)</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="form-group">
                                            <label for="">Discount Value</label>
                                            <input type="text" name="discount" value="{{ old('discount') }}"
                                                class="form-control">
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group ">
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
    </section>
@endsection

@push('scripts')
    <script>
        $(document).ready(function() {
            $('body').on('change', '.main-category', function() {
                let id = $(this).val();

                $.ajax({
                    url: "{{ route('admin.get-subcategories') }}",
                    method: 'GET',
                    data: {
                        id: id,
                    },
                    success: function(data) {
                        $('.sub-category').html('<option value="" hidden>Select</option>')
                        $.each(data, function(i, item) {
                            $('.sub-category').append(
                                `<option value="${item.id}">${item.name}</option>`)

                            // console.log(`Index: ${i}, Name: ${item.name}, Id: ${item.id}`);
                        })
                    },
                    error: function(xhr, status, error) {
                        console.log(error);
                    }
                })
            })
        })
    </script>
@endpush
