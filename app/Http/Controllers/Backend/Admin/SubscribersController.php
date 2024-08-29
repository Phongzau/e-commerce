<?php

namespace App\Http\Controllers\Backend\Admin;

use App\DataTables\NewsletterSubscriberDataTable;
use App\Http\Controllers\Controller;
use App\Mail\Newsletter;
use App\Models\NewsletterSubscriber;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class SubscribersController extends Controller
{
    public function index(NewsletterSubscriberDataTable $dataTable)
    {
        return $dataTable->render("admin.subscriber.index");
    }

    public function sendMail(Request $request)
    {
        $request->validate([
            'subject' => ['required'],
            'message' => ['required'],
        ]);

        $emails = NewsletterSubscriber::query()->where('is_verified', 1)->pluck('email')->toArray();
        if (isset($emails)) {
            Mail::to($emails)->send(new Newsletter($request->subject, $request->message));

            toastr('Mail has been successfully!', 'success', 'success');

            return redirect()->back();
        } else {
            toastr('There are no verified emails', 'error', 'error');
            return redirect()->back();
        }
    }

    public function destroy(string $id)
    {
        $subscriber = NewsletterSubscriber::query()->findOrFail($id)->delete();
        return response([
            'status' => 'success',
            'message' => 'Deleted Successfully!',
        ]);
    }
}
