@extends('admin.layouts.master')

@section('section')
    <!-- Main Content -->

    <section class="section">
        <div class="section-header">
            <h1>Vendor Condition</h1>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-md-12 ">
                    <div class="card">
                        <div class="card-header">
                            <h4>Vendor Condition</h4>
                        </div>
                        <div class="card-body">
                            <form method="POST" action="{{ route('admin.vendor-condition.update') }}">
                                @csrf
                                @method('PUT')
                                <div class="form-group">
                                    <label for="">Content</label>
                                    <textarea name="content" class="summernote">{!! @$vendorCondition->content !!}</textarea>
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
