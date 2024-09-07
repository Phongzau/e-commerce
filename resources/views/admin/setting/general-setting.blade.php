<div class="tab-pane fade show active" id="list-home" role="tabpanel" aria-labelledby="list-home-list">
    <div class="card">
        <div class="card-body border">
            <form action="{{ route('admin.general-setting-update') }}" method="POST">
                @csrf
                @method('PUT')
                <div class="form-group">
                    <label for="">Site Name</label>
                    <input type="text" name="site_name" value="{{ @$generalSettings->site_name }}"
                        class="form-control">
                </div>
                <div class="form-group">
                    <label for="">Layout</label>
                    <select name="layout" class="form-control" id="">
                        <option {{ @$generalSettings->layout == 'LTR' ? 'selected' : '' }} value="LTR">LTR</option>
                        <option {{ @$generalSettings->layout == 'RTL' ? 'selected' : '' }} value="RTL">RTL</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="">Contact Email</label>
                    <input type="text" name="contact_email" value="{{ @$generalSettings->contact_email }}"
                        class="form-control">
                </div>
                <div class="form-group">
                    <label for="">Contact Phone</label>
                    <input type="text" name="contact_phone" value="{{ @$generalSettings->contact_phone }}"
                        class="form-control">
                </div>
                <div class="form-group">
                    <label for="">Contact Address</label>
                    <input type="text" name="contact_address" value="{{ @$generalSettings->contact_address }}"
                        class="form-control">
                </div>
                <div class="form-group">
                    <label for="">Google Map Url</label>
                    <input type="text" name="map" value="{{ @$generalSettings->map }}" class="form-control">
                </div>
                <div class="form-group">
                    <label for="">Default Currency Name</label>
                    <select name="currency_name" style="width: 100%" class="select2" id="">
                        <option value="">Select</option>
                        @foreach (config('settings.currency_list') as $currency)
                            <option {{ @$generalSettings->currency_name == $currency ? 'selected' : '' }}
                                value="{{ $currency }}">{{ $currency }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label for="">Currency Icon</label>
                    <input type="text" name="currency_icon" value="{{ @$generalSettings->currency_icon }}"
                        class="form-control">
                </div>
                <div class="form-group">
                    <label for="">Time zone</label> <br>
                    <select name="time_zone" style="width: 100%" class="select2" id="">
                        <option value="">Select</option>
                        @foreach (config('settings.time_zone') as $key => $timeZone)
                            <option {{ @$generalSettings->time_zone == $key ? 'selected' : '' }}
                                value="{{ $key }}">
                                {{ $key }}</option>
                        @endforeach
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Save</button>
            </form>
        </div>
    </div>
</div>
