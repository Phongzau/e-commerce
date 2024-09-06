<?php

namespace App\Http\Controllers\Backend\Admin;

use App\Http\Controllers\Controller;
use App\Models\TermsAndCondition;
use Illuminate\Http\Request;

class TermsAndConditionController extends Controller
{
    public function index()
    {
        $termsAndCondition = TermsAndCondition::query()->first();
        return view("admin.terms.index", compact("termsAndCondition"));
    }

    public function update(Request $request)
    {
        $request->validate([
            'content' => ['required'],
        ]);

        TermsAndCondition::updateOrCreate(
            ['id' => 1],
            [
                'content' => $request->content
            ],
        );

        toastr('Updated Successfully!', 'success', 'success');

        return redirect()->back();
    }
}
