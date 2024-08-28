@extends('admin.layouts.master')

@section('section')
    <!-- Main Content -->

    <section class="section">
        <div class="section-header">
            <h1>Footer Info</h1>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-md-12 ">
                    <div class="card">
                        <div class="card-header">
                            <h4>Create Footer Info</h4>
                        </div>
                        <div class="card-body">
                            <form method="POST" action="{{ route('admin.footer-info.update', 1) }}"
                                enctype="multipart/form-data">
                                @csrf
                                @method('PUT')
                                <div class="form-group">
                                    <img width="150px" src="{{ asset(@$footerInfo->logo) }}" alt=""> <br>
                                    <label for="">Footer Logo</label>
                                    <input type="file" name="logo" class="form-control">
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="">Phone</label>
                                            <input type="text" name="phone" value="{{ @$footerInfo->phone }}"
                                                class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="">Email</label>
                                            <input type="text" name="email" value="{{ @$footerInfo->email }}"
                                                class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="">Address</label>
                                    <input type="text" name="address" value="{{ @$footerInfo->address }}"
                                        class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">Copy right</label>
                                    <input type="text" name="copyright" value="{{ @$footerInfo->copyright }}"
                                        class="form-control">
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
