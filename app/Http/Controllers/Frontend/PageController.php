<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Mail\Contact;
use App\Models\About;
use App\Models\EmailConfiguration;
use App\Models\GeneralSetting;
use App\Models\TermsAndCondition;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class PageController extends Controller
{
    public function index()
    {
        $about = About::query()->first();
        return view('frontend.pages.about', compact('about'));
    }

    public function termsAndCondition()
    {
        $termsAndCondition = TermsAndCondition::query()->first();
        return view('frontend.pages.terms-and-condition', compact('termsAndCondition'));
    }

    public function contact()
    {
        $generalSettings = GeneralSetting::query()->first();
        return view('frontend.pages.contact', compact('generalSettings'));
    }

    public function handleContactForm(Request $request)
    {
        $request->validate([
            'name' => ['required'],
            'email' => ['required', 'email'],
            'subject' => ['required', 'max:200'],
            'message' => ['required', 'max:1000'],
        ]);
        $settingEmail = EmailConfiguration::query()->first();
        Mail::to($settingEmail->email)->send(new Contact($request->subject, $request->message, $request->email));

        return response([
            'status' => 'success',
            'message' => 'Mail sent successfully!',
        ]);
    }
}