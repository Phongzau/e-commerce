@php
    $sliderSectionThree = json_decode($sliderSectionThree->value);
    // dd($sliderSectionThree);
@endphp
<div class="tab-pane fade" id="list-slider-three" role="tabpanel" aria-labelledby="list-settings-list">
    <div class="card">
        <div class="card-body border">
            <form action="{{ route('admin.product-slider-section-three') }}" method="POST">
                @csrf
                @method('PUT')
                <h5>Part 1</h5>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="">Category</label>
                            <select name="cat_one" class="form-control main-category" id="">
                                <option value="">Select</option>
                                @foreach ($categories as $category)
                                    <option {{ $category->id == $sliderSectionThree[0]->category ? 'selected' : '' }}
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
                                    $sliderSectionThree[0]->category,
                                )->get();
                            @endphp
                            <label for="">Sub Category</label>
                            <select name="sub_cat_one" class="form-control sub-category" id="">
                                <option value="">Select</option>
                                @foreach ($subCategories as $subCategory)
                                    <option
                                        {{ $subCategory->id == $sliderSectionThree[0]->sub_category ? 'selected' : '' }}
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
                                    $sliderSectionThree[0]->sub_category,
                                )->get();
                            @endphp
                            <label for="">Child Category</label>
                            <select name="child_cat_one" class="form-control child-category" id="">
                                <option value="">Select</option>
                                @foreach ($childCategories as $childCategory)
                                    <option
                                        {{ $childCategory->id == $sliderSectionThree[0]->child_category ? 'selected' : '' }}
                                        value="{{ $childCategory->id }}">
                                        {{ $childCategory->name }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                </div>

                <h5>Part 2</h5>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="">Category</label>
                            <select name="cat_two" class="form-control main-category" id="">
                                <option value="">Select</option>
                                @foreach ($categories as $category)
                                    <option {{ $category->id == $sliderSectionThree[1]->category ? 'selected' : '' }}
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
                                    $sliderSectionThree[1]->category,
                                )->get();
                            @endphp
                            <label for="">Sub Category</label>
                            <select name="sub_cat_two" class="form-control sub-category" id="">
                                <option value="">Select</option>
                                @foreach ($subCategories as $subCategory)
                                    <option
                                        {{ $subCategory->id == $sliderSectionThree[1]->sub_category ? 'selected' : '' }}
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
                                    $sliderSectionThree[1]->sub_category,
                                )->get();
                            @endphp
                            <label for="">Child Category</label>
                            <select name="child_cat_two" class="form-control child-category" id="">
                                <option value="">Select</option>
                                @foreach ($childCategories as $childCategory)
                                    <option
                                        {{ $childCategory->id == $sliderSectionThree[1]->child_category ? 'selected' : '' }}
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
