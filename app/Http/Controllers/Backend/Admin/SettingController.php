<?php

namespace App\Http\Controllers\Backend\Admin;

use App\Http\Controllers\Controller;
use App\Models\EmailConfiguration;
use App\Models\GeneralSetting;
use App\Models\LogoSetting;
use App\Traits\ImageUploadTrait;
use Illuminate\Http\Request;

class SettingController extends Controller
{
    use ImageUploadTrait;
    public function index()
    {
        $generalSettings = GeneralSetting::query()->first();
        $emailSettings = EmailConfiguration::query()->first();
        $logoSetting  = LogoSetting::query()->first();
        return view('admin.setting.index', compact('generalSettings', 'emailSettings', 'logoSetting'));
    }

    public function generalSettingUpdate(Request $request)
    {
        $request->validate([
            'site_name' => ['required', 'max:200'],
            'layout' => ['required', 'max:200'],
            'contact_email' => ['required', 'max:200'],
            'contact_phone' => ['required', 'max:200'],
            'contact_address' => ['required', 'max:200'],
            'map' => ['required'],
            'currency_name' => ['required', 'max:200'],
            'currency_icon' => ['required', 'max:200'],
            'time_zone' => ['required', 'max:200'],
        ]);

        GeneralSetting::updateOrCreate(
            ['id' => 1],
            [
                'site_name' => $request->site_name,
                'layout' => $request->layout,
                'contact_email' => $request->contact_email,
                'contact_phone' => $request->contact_phone,
                'contact_address' => $request->contact_address,
                'map' => $request->map,
                'currency_name' => $request->currency_name,
                'currency_icon' => $request->currency_icon,
                'time_zone' => $request->time_zone,
            ]
        );

        toastr('Updated Successfully!', 'success', 'Success');

        return redirect()->back();
    }

    public function emailConfigSettingUpdate(Request $request)
    {
        $request->validate([
            'email' => ['required', 'email'],
            'host' => ['required', 'max:200'],
            'username' => ['required', 'max:200'],
            'password' => ['required', 'max:200'],
            'port' => ['required', 'max:200'],
            'encryption' => ['required', 'max:200'],
        ]);

        EmailConfiguration::updateOrCreate(
            ['id' => 1],
            [
                'email' => $request->email,
                'host' => $request->host,
                'username' => $request->username,
                'password' => $request->password,
                'port' => $request->port,
                'encryption' => $request->encryption,
            ]
        );

        toastr('Updated Successfully!', 'success', 'success');
        return redirect()->back();
    }

    public function logoSettingUpdate(Request $request)
    {
        $logoSetting = LogoSetting::query()->first();
        $request->validate([
            'logo' => ['image', 'max:3000'],
            'favicon' => ['image', 'max:3000'],
        ]);

        $logoPath = $this->updateImage($request, 'logo', 'uploads', $logoSetting?->logo);
        $faviconPath = $this->updateImage($request, 'favicon', 'uploads', $logoSetting?->favicon);

        LogoSetting::query()->updateOrCreate(
            ['id' => 1],
            [
                'logo' => $logoPath,
                'favicon' => $faviconPath,
            ]
        );
        toastr('Updated Successfully!', 'success', 'success');

        return redirect()->back();
    }
}
