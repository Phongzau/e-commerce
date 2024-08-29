<?php

namespace App\Http\Controllers\Frontend;

use App\Helper\MailHelper;
use App\Http\Controllers\Controller;
use App\Mail\SubscriptionVerification;
use App\Models\NewsletterSubscriber;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;

class NewsletterController extends Controller
{
    public function newsLetterRequest(Request $request)
    {
        $request->validate([
            'email' => ['required', 'email']
        ]);

        $existSubscriber = NewsletterSubscriber::query()->where('email', $request->email)->first();

        if (isset($existSubscriber)) {
            if ($existSubscriber->is_verified == 0) {
                // send verification link here
                $existSubscriber->verified_token = Str::random(25);
                $existSubscriber->save();

                // set mail config
                MailHelper::setMailConfig();
                // send mail
                Mail::to($existSubscriber->email)->send(new SubscriptionVerification($existSubscriber));

                return response([
                    'status' => 'success',
                    'message' => 'A verification link has been sent to your email please check',
                ]);
            } else if ($existSubscriber->is_verified == 1) {
                return response([
                    'status' => 'error',
                    'message' => 'You already subscribered with this email',
                ]);
            }
        } else {
            $subscriber = new NewsletterSubscriber();
            $subscriber->email = $request->email;
            $subscriber->verified_token = Str::random(25);
            $subscriber->is_verified = 0;
            $subscriber->save();

            // set mail config
            MailHelper::setMailConfig();
            // send mail
            Mail::to($subscriber->email)->send(new SubscriptionVerification($subscriber));

            return response([
                'status' => 'success',
                'message' => 'A verification link has been sent to your email please check',
            ]);
        }
    }

    public function newsLetterEmailVerify($token)
    {
        $verify = NewsletterSubscriber::query()->where('verified_token', $token)->first();
        if (isset($verify)) {
            $verify->verified_token = 'verified';
            $verify->is_verified = 1;
            $verify->save();
            toastr('Email verification successfully!', 'success', 'success');
            return redirect()->route('home');
        } else {
            toastr('Invalid token', 'error', 'Error');
            return redirect()->route('home');
        }
    }
}
