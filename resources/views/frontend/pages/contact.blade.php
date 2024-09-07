@extends('frontend.layouts.master')

@section('content')
    <section id="wsus__breadcrumb">
        <div class="wsus_breadcrumb_overlay">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h4>contact us</h4>
                        <ul>
                            <li><a href="#">home</a></li>
                            <li><a href="#">contact us</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--============================
                                                                                                                                                                                                                                                                                                                                                                                        BREADCRUMB END
                                                                                                                                                                                                                                                                                                                                                                                    ==============================-->


    <!--============================
                                                                                                                                                                                                                                                                                                                                                                                        CONTACT PAGE START
                                                                                                                                                                                                                                                                                                                                                                                    ==============================-->
    <section id="wsus__contact">
        <div class="container">
            <div class="wsus__contact_area">
                <div class="row">
                    <div class="col-xl-4">
                        <div class="row">
                            @if ($generalSettings->contact_email)
                                <div class="col-xl-12">
                                    <div class="wsus__contact_single">
                                        <i class="fal fa-envelope"></i>
                                        <h5>mail address</h5>
                                        <a href="mailto:example@gmail.com">{{ @$generalSettings->contact_email }}</a>
                                        <span><i class="fal fa-envelope"></i></span>
                                    </div>
                                </div>
                            @endif
                            @if ($generalSettings->contact_phone)
                                <div class="col-xl-12">
                                    <div class="wsus__contact_single">
                                        <i class="far fa-phone-alt"></i>
                                        <h5>phone number</h5>
                                        <a
                                            href="macallto:{{ @$generalSettings->contact_phone }}">{{ @$generalSettings->contact_phone }}</a>
                                        <span><i class="far fa-phone-alt"></i></span>
                                    </div>
                                </div>
                            @endif
                            @if ($generalSettings->contact_address)
                                <div class="col-xl-12">
                                    <div class="wsus__contact_single">
                                        <i class="fal fa-map-marker-alt"></i>
                                        <h5>contact address</h5>
                                        <a href="javascript:;">{{ @$generalSettings->contact_address }}</a>
                                        <span><i class="fal fa-map-marker-alt"></i></span>
                                    </div>
                                </div>
                            @endif
                        </div>
                    </div>
                    <div class="col-xl-8">
                        <div class="wsus__contact_question">
                            <h5>Send Us a Message</h5>
                            <form id="contact-form">
                                <div class="row">
                                    <div class="col-xl-12">
                                        <div class="wsus__con_form_single">
                                            <input type="text" placeholder="Your Name" name="name">
                                        </div>
                                    </div>
                                    <div class="col-xl-12">
                                        <div class="wsus__con_form_single">
                                            <input type="text" placeholder="Email" name="email">
                                        </div>
                                    </div>
                                    <div class="col-xl-12">
                                        <div class="wsus__con_form_single">
                                            <input type="text" placeholder="Subject" name="subject">
                                        </div>
                                    </div>
                                    <div class="col-xl-12">
                                        <div class="wsus__con_form_single">
                                            <textarea cols="3" rows="5" name="message" placeholder="Message"></textarea>
                                        </div>
                                        <button type="submit" class="common_btn" id="form-submit">send now</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-xl-12">
                        <div class="wsus__con_map">
                            {{-- <iframe
                                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.498574457652!2d105.84417911107178!3d20.972642489622576!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac48ac90cb4b%3A0xececf4460103c358!2zODEgTmcuIDQyIFRo4buLbmggTGnhu4d0LCBUaOG7i25oIExp4buHdCwgSG_DoG5nIE1haSwgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1725637037159!5m2!1svi!2s"
                                width="1600" height="450" style="border:0;" allowfullscreen="100" loading="lazy"
                                referrerpolicy="no-referrer-when-downgrade"></iframe> --}}
                            {!! $generalSettings->map !!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@push('scripts')
    <script>
        $(document).ready(function() {
            $('#contact-form').on('submit', function(e) {
                e.preventDefault();
                let data = $(this).serialize();
                $.ajax({
                    method: 'POST',
                    url: "{{ route('handle-contact-form') }}",
                    data: data,
                    beforeSend: function() {
                        $('#form-submit').text('sending...');
                        $('#form-submit').attr('disabled', true);
                    },
                    success: function(data) {
                        if (data.status == 'success') {
                            $('#contact-form')[0].reset();
                            toastr.success(data.message);
                            $('#form-submit').text('send now');
                            $('#form-submit').attr('disabled', false);
                        }
                    },
                    error: function(data) {
                        let errors = data.responseJSON.errors;
                        console.log(errors);

                        $.each(errors, function(key, value) {
                            toastr.error(value);
                        })
                        $('#form-submit').text('send now');
                        $('#form-submit').attr('disabled', false);
                    },
                })
            })
        })
    </script>
@endpush
