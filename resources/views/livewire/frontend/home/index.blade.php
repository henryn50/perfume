<div>
    <div id="demo" class="carousel slide" data-ride="carousel">
        <ul class="carousel-indicators">
          <li data-target="#demo" data-slide-to="0" class="active"></li>
          <li data-target="#demo" data-slide-to="1"></li>
          <li data-target="#demo" data-slide-to="2"></li>
        </ul>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="https://www.lancome.vn/dw/image/v2/BFZM_PRD/on/demandware.static/-/Sites-lancome-vn-ng-Library/vi_VN/dw1cfa9a21/HOMEPAGE/Mar%2023/KV%20(1).jpg?sw=1998&sh=656&sm=cut&q=70" alt="Los Angeles"
              width="1500" height="600px">
            <div class="carousel-caption">

            </div>
          </div>
          <div class="carousel-item">
            <img src="https://www.lancome.vn/dw/image/v2/BFZM_PRD/on/demandware.static/-/Sites-lancome-vn-ng-Library/vi_VN/dw1cfa9a21/HOMEPAGE/Mar%2023/KV%20(1).jpg?sw=1998&sh=656&sm=cut&q=70" alt="Chicago" width="1500"
              height="700">
            <div class="carousel-caption">

          </div>

          </div>
        </div>
        <a class="carousel-control-prev" href="#demo" data-slide="prev">
          <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#demo" data-slide="next">
          <span class="carousel-control-next-icon"></span>
        </a>
      </div>

      <!--new-->
      <section class="spaces">
        <div class="wrapper">

          <div class="content">
            <div class="blog-head text-center">


            </div>
            <!-- Slider main container -->
            <div class="image-slider swiper-container">
              <!-- Additional required wrapper -->
              <div class="image-slider__wrapper swiper-wrapper">
                <!-- Slides -->
                <div class="image-slider__slide swiper-slide" >
                  <div class="image-slider__image" >
                    <img src="https://logos-world.net/wp-content/uploads/2021/08/Christian-Dior-Logo-2018-present.png" alt="1">
                  </div>
                </div>
                <div class="image-slider__slide swiper-slide">
                  <div class="image-slider__image">
                    <img src="https://1000logos.net/wp-content/uploads/2017/02/Hermes-symbol.jpg" alt="2">
                  </div>
                </div>
                <div class="image-slider__slide swiper-slide">
                  <div class="image-slider__image" >
                    <img src="https://logos-marques.com/wp-content/uploads/2020/04/Chanel-logo-1.jpg" alt="3">
                  </div>
                </div>
                <div class="image-slider__slide swiper-slide">
                  <div class="image-slider__image">
                    <img src="https://1000logos.net/wp-content/uploads/2020/04/Lancome-logo.jpg" alt="4">
                  </div>
                </div>
                <div class="image-slider__slide swiper-slide">
                  <div class="image-slider__image">
                    <img src="https://1000logos.net/wp-content/uploads/2021/04/MAC-Cosmetics-logo.png" alt="4">
                  </div>
                </div>
                <div class="image-slider__slide swiper-slide">
                  <div class="image-slider__image">
                    <img src="https://1000logos.net/wp-content/uploads/2017/02/Hugo-Boss-logo.jpg" alt="4">
                  </div>
                </div>
                <div class="image-slider__slide swiper-slide">
                  <div class="image-slider__image">
                    <img src="https://logos-world.net/wp-content/uploads/2020/12/Dolce-Gabbana-Emblem.png" alt="4">
                  </div>
                </div>
              </div>


            </div>


          </div>
        </div>
      </section>
      <div class="parallax">
        <div class="container">
          <div id="block3">
            <div class="row">
              <div class="col-sm-15 col-sm-offset-6 col-md-7 col-md-offset-5 col-lg-6 col-lg-offset-6">
                <h2 class="margin-x heading-xl text-white">Perfume your day</h2>
                <h3 class="h4 text-white margin-top-x">A perfume is like a piece of clothing, a message, a way of presenting oneself a costume that according to the person who wears it..</h3>

                <a class="btn btn-outline-secondary btn-lg text-white" href="schedule_test.html">Shop Now</a>

              </div>
            </div>
          </div>
        </div>

    </div>

    <!-- Start Trending Product  -->
    <div class="product-area section" style="padding:50px 0 !important">
        <div class="container">
            <div class="section-title p-0 m-0">
                <h2>Hot Products</h2>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="product-info">
                        <div class="tab-pane fade show active" id="man" role="tabpanel">
                            <div class="tab-single">
                                <div class="row">
                                    @if ($trendingProducts)
                                        @foreach ($trendingProducts as $product)
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        @if ($product->productImages->count() > 0)
                                                            <a
                                                                href="{{ url('/collections/' . $product->category->slug . '/' . $product->slug) }}">

                                                                <img src="{{ asset($product->productImages[0]->image) }}"
                                                                    class="default-img" width='550' height="750"
                                                                    alt="{{ $product->name }}">
                                                            </a>
                                                        @endif
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-product-id={{ $product->id }}
                                                                    class="btnQuickView" data-toggle="modal"
                                                                    data-target="#quickViewModal" title="Quick View"><i
                                                                        class="fa-regular fa-eye"></i><span>Quick
                                                                        Shop</span></a>

                                                                <a wire:click="addToWishList({{ $product->id }})"
                                                                    title="Wishlist"><i
                                                                        class="fa-regular fa-heart"></i><span>Add to
                                                                        Wishlist</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart"
                                                                    wire:click="addToCart({{ $product->id }})">Add to
                                                                    cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a
                                                                href="{{ url('/collections/' . $product->category->slug . '/' . $product->slug) }}">{{ $product->name }}</a>
                                                        </h3>
                                                        <div class="product-price">
                                                            <span>${{ $product->selling_price }}</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        @endforeach
                                    @else
                                        <div class="p-2">
                                            <h4>No Products Available </h4>
                                        </div>
                                    @endif
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Trending Product  -->


    <!-- Start Featured Product -->
    <div class="product-area most-popular section" style="padding:25px 0 !important">
        <div class="container">
            <div class="section-title p-0 m-0">
                <h2>Hot Item</h2>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="owl-carousel popular-slider" wire:ignore>
                        @if ($featuredProducts)
                            @foreach ($featuredProducts as $product)
                                <div class="single-product">
                                    <div class="product-img">
                                        @if ($product->productImages->count() > 0)
                                            <a
                                                href="{{ url('/collections/' . $product->category->slug . '/' . $product->slug) }}">

                                                <img src="{{ asset($product->productImages[0]->image) }}"
                                                    class="default-img" width='550' height="750"
                                                    alt="{{ $product->name }}">
                                                <span class="out-of-stock">Hot</span>
                                            </a>
                                        @endif
                                        <div class="button-head">
                                            <div class="product-action">
                                                <a data-product-id={{ $product->id }}
                                                    class="btnQuickView" data-toggle="modal"
                                                    data-target="#quickViewModal" title="Quick View"><i
                                                        class="fa-regular fa-eye"></i><span>Quick
                                                        Shop</span></a>
                                                <a wire:click="addToWishList({{ $product->id }})" title="Wishlist"><i
                                                        class="fa-regular fa-heart"></i><span>Add to
                                                        Wishlist</span></a>
                                                <a title="Compare"><i class="fa-solid fa-code-compare"></i><span>Add
                                                        to Compare</span></a>
                                            </div>
                                            <div class="product-action-2">
                                                <a wire:click="addToCart({{ $product->id }})" title="Add to cart">Add
                                                    to
                                                    cart</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-content">
                                        <h3><a
                                                href="{{ url('/collections/' . $product->category->slug . '/' . $product->slug) }}">{{ $product->name }}</a>
                                        </h3>
                                        <div class="product-price">
                                            <span class="old">${{ $product->original_price }}</span>
                                            <span>${{ $product->selling_price }}</span>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        @else
                            <div class="p-2">
                                <h4>No Products Available </h4>
                            </div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Featured Product -->

    <!-- Start Shop Services Area  -->
    <section class="shop-services section home">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-12">
                    <!-- Start Single Service -->
                    <div class="single-service">
                        <i class="fa-solid fa-rocket"></i>
                        <h4>Free shiping</h4>
                        <p>Orders over $100</p>
                    </div>
                    <!-- End Single Service -->
                </div>
                <div class="col-lg-3 col-md-6 col-12">
                    <!-- Start Single Service -->
                    <div class="single-service">
                        <i class="fa-solid fa-arrows-rotate"></i>
                        <h4>Free Return</h4>
                        <p>Within 30 days returns</p>
                    </div>
                    <!-- End Single Service -->
                </div>
                <div class="col-lg-3 col-md-6 col-12">
                    <!-- Start Single Service -->
                    <div class="single-service">
                        <i class="fa-solid fa-lock"></i>
                        <h4>Sucure Payment</h4>
                        <p>100% secure payment</p>
                    </div>
                    <!-- End Single Service -->
                </div>
                <div class="col-lg-3 col-md-6 col-12">
                    <!-- Start Single Service -->
                    <div class="single-service">
                        <i class="fa-solid fa-tag"></i>
                        <h4>Best Peice</h4>
                        <p>Guaranteed price</p>
                    </div>
                    <!-- End Single Service -->
                </div>
            </div>
        </div>
    </section>
    <!-- End Shop Services -->

    <!-- Start Shop Newsletter  -->
    <section class="shop-newsletter section">
        <div class="container">
            <div class="inner-top">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2 col-12">
                        <!-- Start Newsletter Inner -->
                        <div class="inner">
                            <h4>Newsletter</h4>
                            <p> Subscribe to our newsletter and get <span>10%</span> off your first purchase</p>
                            <form action="mail/mail.php" method="get" target="_blank" class="newsletter-inner">
                                <input name="EMAIL" placeholder="Your email address" required=""
                                    type="email">
                                <button class="btn">Subscribe</button>
                            </form>
                        </div>
                        <!-- End Newsletter Inner -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Shop Newsletter -->

    <div id="myBaner" class="modal-banner" style="z-index: 100000000">
        <span class="close cursor" onclick="closeModalBanner()">&times;</span>
        <div class="modal-content-banner position-relative">
            @foreach ($sliders as $item)
                <div class="myBanners">
                    <div class="numbertext">{{ $loop->index + 1 }} / {{ $sliders->count() }}</div>
                    <img src="{{ $item->image }}" style="width:100%;height:500px">
                </div>
            @endforeach

            <a class="prev" onclick="plusBanner(-1)">&#10094;</a>
            <a class="next" onclick="plusBanner(1)">&#10095;</a>
            <div class="caption-container">
                <p id="caption"></p>
            </div>

        </div>
    </div>

</div>

@push('scripts')
    <script>
        function openModalBanner() {
            document.getElementById("myBaner").style.display = "block";
        }

        function closeModalBanner() {
            document.getElementById("myBaner").style.display = "none";
        }

        var slideIndex = 1;
        showBanner(slideIndex);

        function plusBanner(n) {
            showBanner(slideIndex += n);
        }

        function currentBanner(n) {
            showBanner(slideIndex = n);
        }

        function showBanner(n) {
            var i;
            var slides = document.getElementsByClassName("myBanners");
            var captionText = document.getElementById("caption");
            if (n > slides.length) {
                slideIndex = 1
            }
            if (n < 1) {
                slideIndex = slides.length
            }
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
            captionText.innerHTML = dots[slideIndex - 1].alt;
        }
    </script>
@endpush
