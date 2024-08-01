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
                            <h4>Edit Variant Item</h4>
                        </div>
                        <div class="card-body">
                            <form method="POST" action="{{ route('admin.product-variant-item.update', $variantItem->id) }}">
                                @csrf
                                @method('PUT')
                                <div class="form-group">
                                    <label for="">Variant Name</label>
                                    <input type="text" value="{{ $variantItem->productVariant->name }}"
                                        class="form-control" readonly>
                                </div>
                                <div class="form-group">
                                    <label for="">Name</label>
                                    <input type="text" name="name" value="{{ $variantItem->name }}"
                                        class="form-control">
                                    <input type="hidden" name="variant_id" value="{{ $variantItem->product_variant_id }}">
                                </div>
                                <div class="form-group">
                                    <label for="">Price <code>(Set 0 for make it free)</code></label>
                                    <input type="text" name="price" value="{{ $variantItem->price }}"
                                        class="form-control">
                                </div>
                                <div class="form-group ">
                                    <label for="inputState">Is Default</label>
                                    <select id="inputState" name="is_default" value="{{ old('is_default') }}"
                                        class="form-control">
                                        <option value="" hidden>Select</option>
                                        <option {{ $variantItem->is_default == 1 ? 'selected' : '' }} value="1">Yes
                                        </option>
                                        <option {{ $variantItem->is_default == 0 ? 'selected' : '' }} value="0">No
                                        </option>
                                    </select>
                                </div>
                                <div class="form-group ">
                                    <label for="inputState">Status</label>
                                    <select id="inputState" name="status" value="{{ old('status') }}" class="form-control">
                                        <option {{ $variantItem->status == 1 ? 'selected' : '' }} value="1">Active
                                        </option>
                                        <option {{ $variantItem->status == 0 ? 'selected' : '' }} value="0">
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
    </section>
@endsection
