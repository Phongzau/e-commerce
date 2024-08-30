    <section id="wsus__large_banner">
        <div class="container">
            <div class="row">
                <div class="cl-xl-12">
                    @if ($homepage_section_banner_four->banner_one->status === 1)
                        <div class="wsus__single_banner_content single_banner_2">
                            <a href="{{ $homepage_section_banner_four->banner_one->banner_url }}">
                                <img src="{{ asset($homepage_section_banner_four->banner_one->banner_image) }}"
                                    alt="banner" class="img-fluid w-100">
                            </a>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </section>
