@extends('admin.layouts.master')

@section('section')
    <!-- Main Content -->

    <section class="section">
        <div class="section-header">
            <h1>Product Variant Items</h1>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-md-12 ">
                    <div class="card">
                        <div class="card-header">
                            <h4>Create Variant Item</h4>
                        </div>
                        <div class="card-body">
                            <form method="POST" action="{{ route('admin.product-variant-item.store') }}">
                                @csrf
                                <div class="form-group">
                                    <label for="">Variant Name</label>
                                    <input type="text" value="{{ $productVariant->name }}" class="form-control" readonly>
                                </div>
                                <div class="form-group">
                                    <label for="">Name</label>
                                    <input type="text" name="name" value="{{ old('name') }}" class="form-control">
                                    <input type="hidden" name="variant_id" value="{{ $productVariant->id }}">
                                </div>
                                <div class="form-group">
                                    <label for="">Price <code>(Set 0 for make it free)</code></label>
                                    <input type="text" name="price" value="{{ old('price') }}" class="form-control">
                                </div>
                                <div class="form-group ">
                                    <label for="inputState">Is Default</label>
                                    <select id="inputState" name="is_default" value="{{ old('is_default') }}"
                                        class="form-control">
                                        <option value="" hidden>Select</option>
                                        <option value="1">Yes</option>
                                        <option value="0">No</option>
                                    </select>
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
