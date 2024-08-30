    <section id="wsus__single_banner" class="wsus__single_banner_2">
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-lg-6">
                    <div class="wsus__single_banner_content">
                        <div class="wsus__single_banner_img">
                            @if ($homepage_section_banner_two->banner_one->status === 1)
                                <a href="{{ $homepage_section_banner_two->banner_one->banner_url }}">
                                    <img src="{{ asset($homepage_section_banner_two->banner_one->banner_image) }}"
                                        alt="banner" class="img-fluid w-100">
                                </a>
                            @endif
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6">
                    <div class="wsus__single_banner_content single_banner_2">
                        <div class="wsus__single_banner_img">
                            @if ($homepage_section_banner_two->banner_one->status === 1)
                                <a href="{{ $homepage_section_banner_two->banner_two->banner_url }}">
                                    <img src="{{ asset($homepage_section_banner_two->banner_two->banner_image) }}"
                                        alt="banner" class="img-fluid w-100">
                                </a>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
