@extends('admin.layouts.master')

@section('section')
    <!-- Main Content -->

    <section class="section">
        <div class="section-header">
            <h1>Shipping Rule</h1>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-md-12 ">
                    <div class="card">
                        <div class="card-header">
                            <h4>Edit Shipping Rule</h4>
                        </div>
                        <div class="card-body">
                            <form method="POST" action="{{ route('admin.shipping-rule.update', $shippingRule->id) }}">
                                @csrf
                                @method('PUT')
                                <div class="form-group">
                                    <label for="">Name</label>
                                    <input type="text" name="name" value="{{ $shippingRule->name }}"
                                        class="form-control">
                                </div>

                                <div class="form-group ">
                                    <label for="inputState">Type</label>
                                    <select id="inputState" name="type" class="form-control shipping-type">
                                        <option value="" hidden>Select</option>
                                        <option {{ $shippingRule->type == 'flat_cost' ? 'selected' : '' }}
                                            value="flat_cost">Flat Cost</option>
                                        <option {{ $shippingRule->type == 'min_cost' ? 'selected' : '' }} value="min_cost">
                                            Minimum Order Amount</option>
                                    </select>
                                </div>

                                <div class="form-group min_cost {{ $shippingRule->type == 'min_cost' ? '' : 'd-none' }}">
                                    <label for="">Minimum Amount</label>
                                    <input type="text" name="min_cost" value="{{ $shippingRule->min_cost }}"
                                        class="form-control">
                                </div>



                                <div class="form-group">
                                    <label for="">Cost</label>
                                    <input type="text" name="cost" value="{{ $shippingRule->cost }}"
                                        class="form-control">
                                </div>

                                <div class="form-group ">
                                    <label for="inputState">Status</label>
                                    <select id="inputState" name="status" value="{{ old('status') }}" class="form-control">
                                        <option {{ $shippingRule->status == '1' ? 'selected' : '' }} value="1">Active
                                        </option>
                                        <option {{ $shippingRule->status == '0' ? 'selected' : '' }} value="0">Inactive
                                        </option>
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

@push('scripts')
    <script>
        $(document).ready(function() {
            $('body').on('change', '.shipping-type', function() {
                let value = $(this).val();
                if (value != 'min_cost') {
                    $('.min_cost').addClass('d-none');
                } else {
                    $('.min_cost').removeClass('d-none');
                }

            })
        })
    </script>
@endpush
