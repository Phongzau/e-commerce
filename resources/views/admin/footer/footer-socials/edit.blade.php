@extends('admin.layouts.master')

@section('section')
    <!-- Main Content -->

    <section class="section">
        <div class="section-header">
            <h1>Footer</h1>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-md-12 ">
                    <div class="card">
                        <div class="card-header">
                            <h4>Edit Footer Social</h4>
                        </div>
                        <div class="card-body">
                            <form method="POST" action="{{ route('admin.footer-socials.update', $footerSocial->id) }}">
                                @csrf
                                @method('PUT')
                                <div class="form-group">
                                    <label for="">Preview</label> <br>
                                    <i style="font-size: 40px" class="{{ $footerSocial->icon }}"></i> <br>
                                    <label class="mt-3" for="">Icon</label>
                                    <div class="">
                                        <button class="btn btn-primary" data-selected-class="btn-danger"
                                            data-unselected-class="btn-primary" data-icon="{{ $footerSocial->icon }}"
                                            name="icon" role="iconpicker"></button>
                                    </div>

                                </div>
                                <div class="form-group">
                                    <label for="">Name</label>
                                    <input type="text" name="name" value="{{ $footerSocial->name }}"
                                        class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">Url</label>
                                    <input type="text" name="url" value="{{ $footerSocial->url }}"
                                        class="form-control">
                                </div>
                                <div class="form-group ">
                                    <label for="inputState">Status</label>
                                    <select id="inputState" name="status" class="form-control">
                                        <option {{ $footerSocial->status == '1' ? 'selected' : '' }} value="1">Active
                                        </option>
                                        <option {{ $footerSocial->status == '0' ? 'selected' : '' }} value="0">Inactive
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
