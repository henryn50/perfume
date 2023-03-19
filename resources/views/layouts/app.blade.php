<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>@yield('title')</title>
    <meta name="description" content="@yield('meta_description')">
    <meta name="keywords" content="@yield('meta_keyword')">
    <meta name="author" content="CLONE">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.bunny.net/css?family=Nunito" rel="stylesheet">
    <link
        href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap"
        rel="stylesheet">

    <!-- Font awersome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">

    <!-- Alertifyjs -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css" />
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css" />

    <!-- OwlCarousel 2 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"
        integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"
        integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- Bootstrap -->
    <link rel="stylesheet" href="/frontend/css/bootstrap.css">
    <!-- Magnific Popup -->
    <link rel="stylesheet" href="/frontend/css/magnific-popup.min.css">
    <!-- Fancybox -->
    <link rel="stylesheet" href="/frontend/css/jquery.fancybox.min.css">
    <!-- Nice Select CSS -->
    <link rel="stylesheet" href="/frontend/css/niceselect.css">
    <!-- Animate CSS -->
    <link rel="stylesheet" href="/frontend/css/animate.css">
    <!-- Flex Slider CSS -->
    <link rel="stylesheet" href="/frontend/css/flex-slider.min.css">
    <!-- Slicknav -->
    <link rel="stylesheet" href="/frontend/css/slicknav.min.css">
    <!-- Eshop StyleSheet -->
    <link rel="stylesheet" href="/frontend/css/reset.css">
    <link rel="stylesheet" href="/frontend/style.css">
    <link rel="stylesheet" href="/frontend/css/responsive.css">

    <link rel="stylesheet" href="/css/app.css">
    <script src="https://code.jquery.com/jquery-1.11.2.min.js"></script>




	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	  integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">


	<link rel="stylesheet" href="../jquery-3.6.0.min.js">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>



	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css">



<style>

	body {
	font-family: 'Poppins', sans-serif;
	font-size: 16px;
	line-height: 24px;
	font-weight: 400;
	color: #212112;
	background-color: #000;
	background-position: center;
	background-repeat: repeat;
	background-size: 7%;
	background-color: #fff;
	overflow-x: hidden;
	transition: all 200ms linear;
}

		.image-slider__image img {
	max-width: 100%;
	height: 120px;
  }
  .parallax {

background-image: url("https://cdn3.dhht.vn/wp-content/uploads/2022/01/18-15-chai-nuoc-hoa-nu-thom-lau-ban-chay-tren-toan-the-gioi.jpg");

/* Full height */

width: 100%;
/* Create the parallax scrolling effect */
background-attachment: fixed;
background-position: center;
background-repeat: no-repeat;
background-size: cover;
height: 500px;

border-top: 2px red;
}
#block3{
	position: relative;
	left: 600px;
	top: 150px;
}
.carousel-inner img {
	width: 100%;
	height: 100%;
	vertical-align: middle;
}
	</style>

    @livewireStyles
</head>

<body>
    <div id="app">
        @include('layouts.inc.frontend.navbar')
        <main>
            @yield('content')
        </main>
        @include('layouts.inc.frontend.footer')
    </div>

    <!-- Alertify -->
    <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
    <script>
        window.addEventListener('message', event => {
            if (event.detail) {
                alertify.set('notifier', 'position', 'top-right');
                alertify.notify(event.detail.text, event.detail.type);
            }
        });
    </script>

    <!-- OwlCarousel 2 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"
        integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    @livewireScripts
    @yield('script')
    @stack('scripts')

    <!-- Jquery -->
    <script src="/frontend/js/jquery.min.js"></script>
    <script src="/frontend/js/jquery-migrate-3.0.0.js"></script>
    <script src="/frontend/js/jquery-ui.min.js"></script>
    <!-- Popper JS -->
    <script src="/frontend/js/popper.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="/frontend/js/bootstrap.min.js"></script>
    <!-- Color JS -->
    <script src="/frontend/js/colors.js"></script>
    <!-- Slicknav JS -->
    <script src="/frontend/js/slicknav.min.js"></script>
    <!-- Magnific Popup JS -->
    <script src="/frontend/js/magnific-popup.js"></script>
    <!-- Waypoints JS -->
    <script src="/frontend/js/waypoints.min.js"></script>
    <!-- Countdown JS -->
    <script src="/frontend/js/finalcountdown.min.js"></script>
    <!-- Nice Select JS -->
    <script src="/frontend/js/nicesellect.js"></script>
    <!-- Flex Slider JS -->
    <script src="/frontend/js/flex-slider.js"></script>
    <!-- ScrollUp JS -->
    <script src="/frontend/js/scrollup.js"></script>
    <!-- Onepage Nav JS -->
    <script src="/frontend/js/onepage-nav.min.js"></script>
    <!-- Easing JS -->
    <script src="/frontend/js/easing.js"></script>
    <!-- Google Map JS -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDnhgNBg6jrSuqhTeKKEFDWI0_5fZLx0vM"></script>
    <script src="/frontend/js/gmap.min.js"></script>
    <script src="/frontend/js/map-script.js"></script>
    <!-- Active JS -->
    <script src="/frontend/js/active.js"></script>

    {{-- Zalo Chatbox --}}
    <div class="zalo-chat-widget" data-oaid="1927122016347543978" data-welcome-message="Rất vui khi được hỗ trợ bạn!" data-autopopup="0" data-width="300" data-height="300"></div>
    <script src="https://sp.zalo.me/plugins/sdk.js"></script>


    <!-- Modal -->
    <div class="modal fade" id="quickViewModal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><i
                            class="fa-solid fa-xmark" aria-hidden="true"></i></button>
                </div>
                <div class="modal-body">
                    <div class="row no-gutters">
                        <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                            <div id="modal-product-img" class="p-5"></div>
                        </div>
                        <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                            <div class="quickview-content">
                                <h2 id="modal-product-name"></h2>
                                <div class="quickview-ratting-review">
                                    <div class="quickview-ratting-wrap">
                                        <div class="quickview-ratting">
                                            <i class="yellow fa fa-star"></i>
                                            <i class="yellow fa fa-star"></i>
                                            <i class="yellow fa fa-star"></i>
                                            <i class="yellow fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                        <a href="#"> (1 customer review)</a>
                                    </div>
                                    <div class="quickview-stock d-flex align-items-center" id="quickview-stock">
                                        <span><i class="fa-regular fa-circle-check"></i> in stock</span>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center">
                                    <h3 id="modal-product-price"></h3>
                                    <h3>$</h3>
                                </div>
                                <div class="quickview-peragraph">
                                    <p id="modal-product-desc"></p>
                                </div>
                                <div class="my-3" id="modal-product-color"></div>

                                <div class="default-social">
                                    <h4 class="share-now">Share:</h4>
                                    <ul>
                                        <li><a class="facebook" href="#"><i
                                                    class="fa-brands fa-facebook-f"></i></a>
                                        </li>
                                        <li><a class="twitter" href="#"><i
                                                    class="fa-brands fa-twitter"></i></a></li>
                                        <li><a class="youtube" href="#"><i
                                                    class="fa-brands fa-pinterest-p"></i></a>
                                        </li>
                                        <li><a class="dribbble" href="#"><i
                                                    class="fa-brands fa-google-plus"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function() {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $('body').on('click', '.btnQuickView', function(e) {
                e.preventDefault();
                var data = $(this).data();
                $.ajax({
                    type: "GET",
                    dataType: 'json',
                    url: "/api/collections/" + data.productId,
                    success: function(response) {
                        var data = response.data;
                        $('#quickViewModal #modal-product-name').html(data.product.name);
                        $('#quickViewModal #modal-product-price').html(data.product
                            .selling_price);
                        $('#quickViewModal #modal-product-desc').html(data.product.description);
                        if (data.product.quantity > 0) {
                            document.getElementById('quickview-stock').innerHTML = `
                                <span><i class="fa-regular fa-circle-check"></i> In Stock</span>
                            `;
                        } else {
                            document.getElementById('quickview-stock').innerHTML = `
                                <span><i class="fa-solid fa-ban text-danger"></i> Out Of Stock</span>
                            `;
                        }
                        document.getElementById('modal-product-img').innerHTML = `
                            <img src="${data.productImages['0']['image']}" alt="#" style="width:100%;height:auto"  >
                        `;
                    }
                });
            });
        });
    </script>
    <script>
		(function ($) {
		  "use strict";

		  $(function () {
			var header = $(".start-style");
			$(window).scroll(function () {
			  var scroll = $(window).scrollTop();

			  if (scroll >= 10) {
				header.removeClass('start-style').addClass("scroll-on");
			  } else {
				header.removeClass("scroll-on").addClass('start-style');
			  }
			});
		  });



		  $(document).ready(function () {
			$('body.hero-anime').removeClass('hero-anime');
		  });



		  $('body').on('mouseenter mouseleave', '.nav-item', function (e) {
			if ($(window).width() > 750) {
			  var _d = $(e.target).closest('.nav-item'); _d.addClass('show');
			  setTimeout(function () {
				_d[_d.is(':hover') ? 'addClass' : 'removeClass']('show');
			  }, 1);
			}
		  });



		  $("#switch").on('click', function () {
			if ($("body").hasClass("dark")) {
			  $("body").removeClass("dark");
			  $("#switch").removeClass("switched");
			}
			else {
			  $("body").addClass("dark");
			  $("#switch").addClass("switched");
			}
		  });

		})(jQuery);
		$('section.awSlider .carousel').carousel({
		  pause: "hover",
		  interval: 2000
		});

		var startImage = $('section.awSlider .item.active > img').attr('src');
		$('section.awSlider').append('<img src="' + startImage + '">');

		$('section.awSlider .carousel').on('slid.bs.carousel', function () {
		  var bscn = $(this).find('.item.active > img').attr('src');
		  $('section.awSlider > img').attr('src', bscn);
		});


	  </script>
	  <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

	  <!-- Initialize Swiper -->
	  <script>
		var swiper = new Swiper(".mySwiper", {
		  slidesPerView: 3,
		  spaceBetween: 30,

		  loop: true,
		  loopFillGroupWithBlank: true,
		  pagination: {
			el: ".swiper-pagination",
			clickable: true,
		  },
		  navigation: {
			nextEl: ".swiper-button-next",
			prevEl: ".swiper-button-prev",
		  },
		  breakpoints: {
			0: {
			  slidesPerView: 1,
			},
			520: {
			  slidesPerView: 2,
			},
			950: {
			  slidesPerView: 3,
			},
		  },
		});






	  </script>
	  <script>
		let myButton = document.getElementById("toTop");

  window.onscroll = function () {
	scrollFunction();
  };

  function scrollFunction() {
	if (
	  document.body.scrollTop > 100 ||
	  document.documentElement.scrollTop > 100
	) {
	  myButton.style.display = "block";
	} else {
	  myButton.style.display = "none";
	}
  }

  function toTop() {
	document.body.scrollTop = 0; // For Safari
	document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
  }
	  </script>

	  <script>
		// Creates interval
		const interval = setInterval(() => {
		  // Get current time
		  const now = new Date();

		  const dateTime =
			now.getMonth() +
			1 +
			"/" +
			now.getUTCDate() +
			"/" +
			now.getFullYear() +
			" " +
			now.getHours() +
			":" +
			now.getMinutes() +
			":" +
			now.getSeconds();

		  document.getElementById("real-time").innerHTML = dateTime;
		}, 1000);
	  </script>
	  <script>
		var counterContainer = document.querySelector(".website-counter");
		var resetButton = document.querySelector("#reset");
		var visitCount = localStorage.getItem("page_view");

		// Check if page_view entry is present
		if (visitCount) {
		  visitCount = Number(visitCount) + 1;
		  localStorage.setItem("page_view", visitCount);
		} else {
		  visitCount = 1;
		  localStorage.setItem("page_view", 1);
		}
		counterContainer.innerHTML = visitCount;


	  </script>

	  <script>
		$(document).ready(function () {
		  $(".productCard").each(function (index, productCard) {
			var colorsContainer = $(productCard).find(".colorsContainer");
			colorsContainer.find(".color").each(function (i, color) {
			  $(color).on("click", function () {
				colorsContainer.find(".color").removeClass("active");
				$(color).addClass("active");
				$(productCard)
				  .removeClass("red green blue black")
				  .addClass($(color).attr("data-color"));
			  });
			});
		  });
		});

	  </script>


	  <script>
		$(document).ready(function () {


		  $(".main-gal.owl-carousel").owlCarousel({
			autoplay: true,
			slideSpeed: 9000,
			items: 1,
			autoHeight: true,
			loop: true,
			nav: false,
			navText: ["<i class='fas fa-chevron-left'></i>", "<i class='fas fa-chevron-right'></i>"],
			center: true,
			dots: true,
			responsiveClass: true,
			smartSpeed: 400,
			margin: 0,
			responsive: {
			  0: {
				items: 1,
				margin: 0,
				dots: false,
				nav: true
			  },
			  768: {}
			}
		  });


		  const swiper = new Swiper('.image-slider', {
			// Optional parameters
			slidesPerView: 4,
			spaceBetween: 10,
			direction: 'horizontal',
			centeredSlides: true,
			loop: true,
			loopedSLides: 3,
			simulateTouch: true,
			grabCursor: true,
			speed: 800,
			pagination: {
			  el: '.swiper-pagination',
			  type: 'progressbar'
			},
			navigation: {
			  nextEl: '.swiper-button-next',
			  prevEl: '.swiper-button-prev',
			},
			autoplay: {
			  delay: 1000,
			}
		  });



		  $('.owl-prev').on('click', function (event) {
			event.preventDefault();
			$(this).css("color", "#FF5722")
			$('.owl-next').css("color", "#000")
		  });


		  $('.owl-next').on('click', function (event) {
			event.preventDefault();
			$(this).css("color", "#FF5722")
			$('.owl-prev').css("color", "#000")
		  });


		  let mySliderAllSlides = document.querySelector('.image-slider__total');
		  let mySliderCurrentSlide = document.querySelector('.image-slider__current');

		  mySliderAllSlides.innerHTML = myImageSLider.slides.length;

		  myImageSLider.on('slideChange', function () {
			let currentSlide = ++myImageSLider.realIndex;
			mySliderCurrentSlide.innerHTML = currentSlide;
		  });




		});
	  </script>

</body>

</html>
