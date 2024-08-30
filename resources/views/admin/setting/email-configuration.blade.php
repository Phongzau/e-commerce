<div class="tab-pane fade" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list">
    <div class="card">
        <div class="card-body border">
            <form action="{{ route('admin.email-setting-update') }}" method="POST">
                @csrf
                @method('PUT')
                <div class="form-group">
                    <label for="">Email</label>
                    <input type="text" value="{{ @$emailSettings->email }}" name="email" class="form-control">
                </div>

                <div class="form-group">
                    <label for="">Mail Host</label>
                    <input type="text" value="{{ @$emailSettings->host }}" name="host" class="form-control">
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="">Smtp username</label>
                            <input type="text" value="{{ @$emailSettings->username }}" name="username"
                                class="form-control">
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="">Smtp password</label>
                            <input type="text" value="{{ @$emailSettings->password }}" name="password"
                                class="form-control">
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="">Mail port</label>
                            <input type="text" value="{{ @$emailSettings->port }}" name="port"
                                class="form-control">
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="">Mail Encryption</label>
                            <select name="encryption" style="width:100%" class="form-control" id="">
                                <option {{ @$emailSettings->encryption == 'tls' ? 'selected' : '' }} value="tls">TLS
                                </option>
                                <option {{ @$emailSettings->encryption == 'ssl' ? 'selected' : '' }} value="ssl">SSL
                                </option>
                            </select>
                        </div>
                    </div>
                </div>


                <button type="submit" class="btn btn-primary">Save</button>
            </form>
        </div>
    </div>
</div>
