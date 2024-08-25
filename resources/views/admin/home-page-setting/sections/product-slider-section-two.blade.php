@php
    $sliderSectionTwo = json_decode($sliderSectionTwo->value);
@endphp
<div class="tab-pane fade" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list">
    <div class="card">
        <div class="card-body border">
            <form action="{{ route('admin.product-slider-section-two') }}" method="POST">
                @csrf
                @method('PUT')
                <h4>Category 1</h4>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="">Category</label>
                            <select name="cat_one" class="form-control main-category" id="">
                                <option value="">Select</option>
                                @foreach ($categories as $category)
                                    <option {{ $category->id == $sliderSectionTwo->category ? 'selected' : '' }}
                                        value="{{ $category->id }}">
                                        {{ $category->name }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            @php
                                $subCategories = \App\Models\SubCategory::where(
                                    'category_id',
                                    $sliderSectionTwo->category,
                                )->get();
                            @endphp
                            <label for="">Sub Category</label>
                            <select name="sub_cat_one" class="form-control sub-category" id="">
                                <option value="">Select</option>
                                @foreach ($subCategories as $subCategory)
                                    <option {{ $subCategory->id == $sliderSectionTwo->sub_category ? 'selected' : '' }}
                                        value="{{ $subCategory->id }}">
                                        {{ $subCategory->name }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            @php
                                $childCategories = \App\Models\ChildCategory::where(
                                    'sub_category_id',
                                    $sliderSectionTwo->sub_category,
                                )->get();
                            @endphp
                            <label for="">Child Category</label>
                            <select name="child_cat_one" class="form-control child-category" id="">
                                <option value="">Select</option>
                                @foreach ($childCategories as $childCategory)
                                    <option
                                        {{ $childCategory->id == $sliderSectionTwo->child_category ? 'selected' : '' }}
                                        value="{{ $childCategory->id }}">
                                        {{ $childCategory->name }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                </div>

                <button type="submit" class="btn btn-primary">Save</button>
            </form>
        </div>
    </div>
</div>
