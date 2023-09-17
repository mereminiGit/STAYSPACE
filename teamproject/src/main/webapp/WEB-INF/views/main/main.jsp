<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- slide section start -->
	<section id="billboard" class="position-relative overflow-hidden">
		<div class="swiper main-swiper">
			<div class="swiper-wrapper">
				<!-- image slide 1 -->
				<div class="swiper-slide"
					style="background-image: url(vaso-html/images/banner-image.jpg); background-size: cover; background-repeat: no-repeat; height: 100vh; background-position: center;">
					<div class="container ">
						<div class="row">
							<div class="offset-md-1 col-md-6">
								<div class="banner-content">
									<!-- image slide 1 공간 네임 & 소개 글 -->
									<h2>House Space</h2>
									<p class="fs-3">This ceramic soft pot is specially designed
										by concept of traditional designs.</p>
									<!-- image slide 1 상세 페이지 링크 (SpaceItem.do?name=\${space.spaceName}) -->
									<a href="single-product.html" class="btn">Space Now</a>
								</div>
							</div>
							<div class="col-md-5"></div>
						</div>
					</div>
				</div>
				<!-- image slide 2 -->
				<div class="swiper-slide"
					style="background-image: url(vaso-html/images/banner_image1.png); background-size: cover; background-repeat: no-repeat; height: 100vh; background-position: center;">
					<div class="container">
						<div class="row">
							<div class="offset-md-1 col-md-6">
								<div class="banner-content">
									<!-- image slide 2 공간 네임 & 소개 글 -->
									<h2>Studio Space</h2>
									<p class="fs-3">Beautiful shiny black pot is designed for
										minimalist decors.</p>
									<!-- image slide 2 상세 페이지 링크 -->
									<a href="single-product.html" class="btn">Space Now</a>
								</div>
							</div>
							<div class="col-md-5"></div>
						</div>
					</div>
				</div>
				<!-- image slide 3 -->
				<div class="swiper-slide"
					style="background-image: url(vaso-html/images/banner-image2.jpg); background-size: cover; background-repeat: no-repeat; height: 100vh; background-position: center;">
					<div class="container">
						<div class="row">
							<div class="offset-md-1 col-md-6">
								<div class="banner-content">
									<!-- image slide 3 공간 네임 & 소개 글 -->
									<h2>Shell Shape Decor</h2>
									<p class="fs-3">Buy this beautiful unique pieces of shell
										shape vase decors for your plants of room.</p>
									<!-- image slide 3 상세 페이지 링크 -->
									<a href="single-product.html" class="btn">Space Now</a>
								</div>
							</div>
							<div class="col-md-5"></div>
						</div>
					</div>
				</div>

			</div>
			<div class="main-slider-pagination position-absolute text-center"></div>
		</div>
	<!-- slide section end -->

	<!-- 플랫폼 소개 about section start -->
	</section>
	<section id="about" class="padding-xlarge">
		<div class="container">
			<div class="row">
				<div class="offset-md-2 col-md-8">
					<!-- About us -->
					<span class="title-accent fs-6 text-uppercase" data-aos="fade"
						data-aos-easing="ease-in" data-aos-duration="1000"
						data-aos-once="true">About us</span>
					<!-- 플랫폼 소개 타이틀 -->
					<h3 class="py-3" data-aos="fade" data-aos-easing="ease-in"
						data-aos-duration="1500" data-aos-once="true">Vaso is the
						only best online store for varieties of collection of clean and
						beautiful vases.</h3>
					<!-- 플랫폼 소개 상세 글 -->
					<p data-aos="fade" data-aos-easing="ease-in"
						data-aos-duration="1800" data-aos-once="true">Et id sapien id
						enim, sit tempor cursus elit, fusce. Nunc tristique facilisis
						consectetur at vivamus ut porta porta. Ut nisl, tortor, aliquam
						blandit vitae vehicula vivamus leo nullam urna, scelerisque unc
						lectus phasellus adipiscing arcu. Tristique facilisis nunc
						consectetur at tempor cursusut porta.</p>
				</div>
			</div>
		</div>
	</section>
	<!-- 플랫폼 소개 about section end -->

	<!-- Best Space section start -->
	<section id="products" class="product-store position-relative">
		<div
			class="container display-header d-flex flex-wrap justify-content-between pb-4">
			<h3 class="mt-3">Best Space</h3>
			<div class="btn-right d-flex flex-wrap align-items-center">
				<!-- space 목록 페이지로 이동 -->
				<a href="shop.html" class="btn me-5">View all spaces</a>
				<!-- 왼쪽, 오른쪽 화살표 -->
				<div class="swiper-buttons">
					<button class="swiper-prev product-carousel-prev me-2">
						<svg width="41" height="41">
							<use xlink:href="#angle-left"></use></svg>
					</button>
					<button class="swiper-next product-carousel-next">
						<svg width="41" height="41">
							<use xlink:href="#angle-right"></use></svg>
					</button>
				</div>
			</div>
		</div>

		<!-- Best space 사진들 슬라이드 -->
		<div class="swiper product-swiper">
			<div class="swiper-wrapper">

				<!-- 공간사진 & 공간네임 & 공간가격 반복 -->
				<div class="swiper-slide">
					<div class="product-card position-relative">
						<div class="image-holder zoom-effect">
							<!-- 공간 사진 넣는 곳 -->
							<img src="vaso-html/images/product-item1.jpg" alt="product-item"
								class="img-fluid zoom-in">
							<!-- 공간 상세페이지로 이동하는 버튼 -->
							<div class="cart-concern position-absolute">
								<div class="cart-button">
									<a href="#" class="btn">Go to Space</a>
								</div>
							</div>
						</div>
						<div class="card-detail text-center pt-3 pb-2">
							<!-- 공간네임 (네임 클릭시 해당 공간 상세페이지로) -->
							<h5 class="card-title fs-3 text-capitalize">
								<a href="single-product.html">Matt Black</a>
							</h5>
							<!-- 공간가격 -->
							<span class="item-price text-primary fs-3 fw-light">$870</span>
						</div>
					</div>
				</div>
				<!-- 공간사진 & 공간네임 & 공간가격 반복 -->

				<div class="swiper-slide">
					<div class="product-card position-relative">
						<div class="image-holder zoom-effect">
							<img src="vaso-html/images/product-item2.jpg" alt="product-item"
								class="img-fluid zoom-in">
							<div class="cart-concern position-absolute">
								<div class="cart-button">
									<a href="#" class="btn">Add to Cart</a>
								</div>
							</div>
						</div>
						<div class="card-detail text-center pt-3 pb-2">
							<h5 class="card-title fs-3 text-capitalize">
								<a href="single-product.html">Oldie Off-White</a>
							</h5>
							<span class="item-price text-primary fs-3 fw-light">$680</span>
						</div>
					</div>
				</div>
				<!-- ==================================================================== -->
				<div class="swiper-slide">
					<div class="product-card position-relative">
						<div class="image-holder zoom-effect">
							<img src="vaso-html/images/product-item3.jpg" alt="product-item"
								class="img-fluid zoom-in">
							<div class="cart-concern position-absolute">
								<div class="cart-button">
									<a href="#" class="btn">Add to Cart</a>
								</div>
							</div>
						</div>
						<div class="card-detail text-center pt-3 pb-2">
							<h5 class="card-title fs-3 text-capitalize">
								<a href="single-product.html">Vintage With Handle</a>
							</h5>
							<span class="item-price text-primary fs-3 fw-light">$750</span>
						</div>
					</div>
				</div>
				<!-- ==================================================================== -->
				<div class="swiper-slide">
					<div class="product-card position-relative">
						<div class="image-holder zoom-effect">
							<img src="vaso-html/images/product-item4.jpg" alt="product-item"
								class="img-fluid zoom-in">
							<div class="cart-concern position-absolute">
								<div class="cart-button">
									<a href="#" class="btn">Add to Cart</a>
								</div>
							</div>
						</div>
						<div class="card-detail text-center pt-3 pb-2">
							<h5 class="card-title fs-3 text-capitalize">
								<a href="single-product.html">Opposite Pattern</a>
							</h5>
							<span class="item-price text-primary fs-3 fw-light">$650</span>
						</div>
					</div>
				</div>
				<!-- ==================================================================== -->
				<div class="swiper-slide">
					<div class="product-card position-relative">
						<div class="image-holder zoom-effect">
							<img src="vaso-html/images/product-item5.jpg" alt="product-item"
								class="img-fluid zoom-in">
							<div class="cart-concern position-absolute">
								<div class="cart-button">
									<a href="#" class="btn">Add to Cart</a>
								</div>
							</div>
						</div>
						<div class="card-detail text-center pt-3 pb-2">
							<h5 class="card-title fs-3 text-capitalize">
								<a href="single-product.html">Shell Shape</a>
							</h5>
							<span class="item-price text-primary fs-3 fw-light">$750</span>
						</div>
					</div>
				</div>
				<!-- ==================================================================== -->
				<div class="swiper-slide">
					<div class="product-card position-relative">
						<div class="image-holder zoom-effect">
							<img src="vaso-html/images/product-item2.jpg" alt="product-item"
								class="img-fluid zoom-in">
							<div class="cart-concern position-absolute">
								<div class="cart-button">
									<a href="#" class="btn">Add to Cart</a>
								</div>
							</div>
						</div>
						<div class="card-detail text-center pt-3 pb-2">
							<h5 class="card-title fs-3 text-capitalize">
								<a href="single-product.html">Oldie Off-White</a>
							</h5>
							<span class="item-price text-primary fs-3 fw-light">$750</span>
						</div>
					</div>
				</div>
				<!-- ==================================================================== -->
				<div class="swiper-slide">
					<div class="product-card position-relative">
						<div class="image-holder zoom-effect">
							<img src="vaso-html/images/product-item4.jpg" alt="product-item"
								class="img-fluid zoom-in">
							<div class="cart-concern position-absolute">
								<div class="cart-button">
									<a href="#" class="btn">Add to Cart</a>
								</div>
							</div>
						</div>
						<div class="card-detail text-center pt-3 pb-2">
							<h5 class="card-title fs-3 text-capitalize">
								<a href="single-product.html">Opposite Pattern</a>
							</h5>
							<span class="item-price text-primary fs-3 fw-light">$750</span>
						</div>
					</div>
				</div>
				<!-- ==================================================================== -->
				<div class="swiper-slide">
					<div class="product-card position-relative">
						<div class="image-holder zoom-effect">
							<img src="vaso-html/images/product-item3.jpg" alt="product-item"
								class="img-fluid zoom-in">
							<div class="cart-concern position-absolute">
								<div class="cart-button">
									<a href="#" class="btn">Add to Cart</a>
								</div>
							</div>
						</div>
						<div class="card-detail text-center pt-3 pb-2">
							<h5 class="card-title fs-3 text-capitalize">
								<a href="single-product.html">Vintage With Handle</a>
							</h5>
							<span class="item-price text-primary fs-3 fw-light">$750</span>
						</div>
					</div>
				</div>
				<!-- ==================================================================== -->
			</div>
		</div>
	</section>
	<!-- Best Space section end -->
	
	<!-- Reply section start -->
	<section id="testimonials" class="position-relative padding-xlarge">
		<div class="container">
			<div class="row">
				<div class="offset-md-2 col-md-8">
					<!-- 후기 목록입니다. -->
					<h3 class="text-center mb-5" data-aos="fade"
						data-aos-easing="ease-in" data-aos-duration="1000"
						data-aos-once="true">What our customers says</h3>

					<div class="review-content position-relative" data-aos="fade"
						data-aos-easing="ease-in" data-aos-duration="1500"
						data-aos-once="true">
						<div class="swiper testimonial-swiper">
							<div class="swiper-wrapper">
								<!-- 후기 반복 -->
								<div
									class="swiper-slide text-center d-flex justify-content-center">
									<div class="review-item">
										<!-- 후기 메세지 -->
										<blockquote class="fs-1 fw-light">“A pellen
											tesque pretium feugiat vel morbi sagittis lorem habi tasse
											cursus. Suspen dise tempus oncu enim pellen tesque este
											pretium in neque, elit morbi sagittis lorem habi mattis.”</blockquote>
										<!-- 후기 작성자 -->
										<div class="author-detail">
											<div class="name fw-bold text-uppercase pt-2">Anna
												garcia</div>
										</div>
									</div>
								</div>
								<!-- ==================================================================== -->
								<div
									class="swiper-slide text-center d-flex justify-content-center">
									<div class="review-item">
										<blockquote class="fs-1 fw-light">“A pellen
											tesque pretium feugiat vel morbi sagittis lorem habi tasse
											cursus. Suspen dise tempus oncu enim pellen tesque este
											pretium in neque, elit morbi sagittis lorem habi mattis.”</blockquote>
										<div class="author-detail">
											<div class="name fw-bold text-uppercase pt-2">Anna
												garcia</div>
										</div>
									</div>
								</div>
								<!-- ==================================================================== -->
								<div
									class="swiper-slide text-center d-flex justify-content-center">
									<div class="review-item">
										<blockquote class="fs-1 fw-light">“A pellen
											tesque pretium feugiat vel morbi sagittis lorem habi tasse
											cursus. Suspen dise tempus oncu enim pellen tesque este
											pretium in neque, elit morbi sagittis lorem habi mattis.”</blockquote>
										<div class="author-detail">
											<div class="name fw-bold text-uppercase pt-2">Anna
												garcia</div>
										</div>
									</div>
								</div>
								<!-- ==================================================================== -->
							</div>
						</div>
					</div>

					<!-- 후기 왼쪽 오른쪽 화살표 -->
					<div class="swiper-buttons text-center mt-5" data-aos="fade"
						data-aos-easing="ease-in" data-aos-duration="1800"
						data-aos-once="true">
						<button class="swiper-prev testimonial-arrow-prev me-2">
							<svg width="41" height="41">
								<use xlink:href="#arrow-left"></use></svg>
						</button>
						<span>|</span>
						<button class="swiper-next testimonial-arrow-next ms-2">
							<svg width="41" height="41">
								<use xlink:href="#arrow-right"></use></svg>
						</button>
					</div>

				</div>
			</div>
		</div>
	</section>
	<!-- Reply section end -->

	<!-- 플랫폼 소개 동영상 링크 연결 -->
	<section id="our-video">
		<div
			class="video-section jarallax d-flex align-items-center justify-content-center"
			style="background: url(vaso-html/images/video-image.jpg) no-repeat;">
			<!-- 위에 플랫폼 소개 이미지 -->
			<div class="video-player text-center">
				<!-- 동영상 링크 -->
				<a type="button" data-bs-toggle="modal"
					data-src="https://www.youtube.com/embed/9PqeliHXw00?si=zIhzMg-9iVkWlBoH&amp;controls=0"
					data-bs-target="#myModal" class="play-btn position-relative"> <svg
						class="position-absolute top-0 bottom-0 start-0 end-0 m-auto"
						width="41" height="41">
						<!-- 동영상 버튼 주위 돌아가는 글자들 -->
						<use xlink:href="#play"></use></svg> <img src="vaso-html/images/text-pattern.png"
					alt="pattern" class="text-pattern">
				</a>
			</div>
		</div>
	</section>
	<!-- 플랫폼 소개 동영상 링크 연결 end -->
	
	<!-- Q&A section start -->
	<section id="faqs" class="padding-xlarge">
		<div class="container">
			<div class="row">
				<div class="offset-md-2 col-md-8">
					<h3 class="text-center mb-5" data-aos="fade"
						data-aos-easing="ease-in" data-aos-duration="1000"
						data-aos-once="true">Some FAQs</h3>
					<div class="accordion accordion-flush" id="accordionFlush"
						data-aos="fade" data-aos-easing="ease-in" data-aos-duration="1500"
						data-aos-once="true">
						<!-- Q&A 1 -->
						<div class="accordion-item">
							<h4 class="accordion-header" id="flush-headingOne3">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
									aria-expanded="true" aria-controls="flush-collapseOne">
									I got my vase but some items are broken, what to do?</button>
							</h4>
							<div id="flush-collapseOne" class="accordion-collapse collapse"
								aria-labelledby="flush-headingOne"
								data-bs-parent="#accordionFlushExample">
								<div class="accordion-body">
									<p>Et id sapien id enim, sit tempor cursus elit, fusce.
										Nunc tristique facilisis consectetur at vivamus ut porta porta
										aliquam blandit vitae vehicula leo nullam urna, scelerisque
										unc lectus.</p>
								</div>
							</div>
						</div>
						<!-- Q&A 2 -->
						<div class="accordion-item">
							<h4 class="accordion-header" id="flush-headingTwo3">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo"
									aria-expanded="true" aria-controls="flush-collapseTwo">
									Can i return them if I don't like the items I bought?</button>
							</h4>
							<div id="flush-collapseTwo" class="accordion-collapse collapse"
								aria-labelledby="flush-headingTwo"
								data-bs-parent="#accordionFlushExample">
								<div class="accordion-body">
									<p>Et id sapien id enim, sit tempor cursus elit, fusce.
										Nunc tristique facilisis consectetur at vivamus ut porta porta
										aliquam blandit vitae vehicula leo nullam urna, scelerisque
										unc lectus.</p>
								</div>
							</div>
						</div>
						<!-- Q&A 3 -->
						<div class="accordion-item">
							<h4 class="accordion-header" id="flush-headingThree3">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#flush-collapseThree"
									aria-expanded="true" aria-controls="flush-collapseThree">
									Will we get discount if we will order many vase?</button>
							</h4>
							<div id="flush-collapseThree" class="accordion-collapse collapse"
								aria-labelledby="flush-headingThree"
								data-bs-parent="#accordionFlushExample">
								<div class="accordion-body">
									<p>Et id sapien id enim, sit tempor cursus elit, fusce.
										Nunc tristique facilisis consectetur at vivamus ut porta porta
										aliquam blandit vitae vehicula leo nullam urna, scelerisque
										unc lectus.</p>
								</div>
							</div>
						</div>
						<!-- Q&A 4 -->
						<div class="accordion-item">
							<h4 class="accordion-header" id="flush-headingFour3">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#flush-collapseFour"
									aria-expanded="true" aria-controls="flush-collapseFour">
									Are there refunds for sale items or some special orders?</button>
							</h4>
							<div id="flush-collapseFour" class="accordion-collapse collapse"
								aria-labelledby="flush-headingFour"
								data-bs-parent="#accordionFlushExample">
								<div class="accordion-body">
									<p>Et id sapien id enim, sit tempor cursus elit, fusce.
										Nunc tristique facilisis consectetur at vivamus ut porta porta
										aliquam blandit vitae vehicula leo nullam urna, scelerisque
										unc lectus.</p>
								</div>
							</div>
						</div>
						<!-- Q&A 5 -->
						<div class="accordion-item">
							<h4 class="accordion-header" id="flush-headingFive3">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#flush-collapseFive"
									aria-expanded="true" aria-controls="flush-collapseFive">
									How long will it take to get my first order?</button>
							</h4>
							<div id="flush-collapseFive" class="accordion-collapse collapse"
								aria-labelledby="flush-headingFive"
								data-bs-parent="#accordionFlushExample">
								<div class="accordion-body">
									<p>Et id sapien id enim, sit tempor cursus elit, fusce.
										Nunc tristique facilisis consectetur at vivamus ut porta porta
										aliquam blandit vitae vehicula leo nullam urna, scelerisque
										unc lectus.</p>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Q&A section end -->

	<!-- 카테고리(가정집, 스튜디오, 상업공간) 사진 3개 -->
	<section id="banner" data-aos="fade" data-aos-once="true">
		
		<div class="banner-content-1 position-relative"
			style="background: url('vaso-html/images/banner-img1.jpg') no-repeat left; background-size: cover; height: 100%;">
			<!-- 가정집 카테고리 사진 -->
			<div class="banner-content-text position-absolute" data-aos="fade"
				data-aos-delay="1000" data-aos-easing="ease-in"
				data-aos-duration="1000" data-aos-once="true">
				<h2>House</h2>
				<a href="shop.html" class="btn">Go see it now</a>
			</div>
		</div>

		<div class="banner-content-2 position-relative"
			style="background: url('vaso-html/images/banner-img2.jpg') no-repeat left; background-size: cover; height: 100%;">
			<!-- 스튜디오 카테고리 사진 -->
			<div class="banner-content-text position-absolute" data-aos="fade"
				data-aos-delay="1000" data-aos-easing="ease-in"
				data-aos-duration="1000" data-aos-once="true">
				<h2>Studio</h2>
				<a href="shop.html" class="btn">Go to space</a>
			</div>
		</div>
		
		<div class="banner-content-3 position-relative"
			style="background: url('vaso-html/images/banner-img3.jpg') no-repeat left; background-size: cover; height: 100%;">
			<!-- 상업공간 카테고리 사진 -->
			<div class="banner-content-text position-absolute" data-aos="fade"
				data-aos-delay="1000" data-aos-easing="ease-in"
				data-aos-duration="1000" data-aos-once="true">
				<h2>Commercial</h2>
				<a href="shop.html" class="btn">Go to space</a>
			</div>
		</div>
	</section>
</body>
</html>