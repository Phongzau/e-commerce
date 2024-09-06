<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\About;
use App\Models\TermsAndCondition;
use Illuminate\Http\Request;

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
}
