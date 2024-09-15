<div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list">
    <div class="card">
        <div class="card-body border">
            <form action="{{ route('admin.logo-setting-update') }}" enctype="multipart/form-data" method="POST">
                @csrf
                @method('PUT')
                <div class="form-group">
                    <img width="150px" src="{{ asset(@$logoSetting->logo) }}" alt=""> <br>
                    <label for="">Logo</label>
                    <input type="file" name="logo" class="form-control">
                </div>

                <div class="form-group">
                    <img width="150px" src="{{ asset(@$logoSetting->favicon) }}" alt=""><br>
                    <label for="">Favicon</label>
                    <input type="file" name="favicon" class="form-control">
                </div>

                <button type="submit" class="btn btn-primary">Save</button>
            </form>
        </div>
    </div>
</div>
