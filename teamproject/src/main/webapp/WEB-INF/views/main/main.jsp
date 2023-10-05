<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
					style="background-image: url(vaso-html/images/banner_image1.png); background-size: cover; background-repeat: no-repeat; height: 100vh; background-position: center;">
					<div class="container ">
						<div class="row">
							<div class="offset-md-1 col-md-6">
								<div class="banner-content">
									<!-- image slide 1 공간 네임 & 소개 글 -->
									<h2 style="text-shadow: 1px 1px 15px rgb(235, 235, 235, 0.25);">Studio Space</h2>
									<p class="fs-3" style="font-family: 'Noto Sans KR', sans-serif; font-weight: 400; text-shadow: 1px 1px 15px rgb(235, 235, 235, 0.25);">패션 촬영, 자연광으로 사진 잘 나오는 스튜디오는?</p>
									<!-- image slide 1 상세 페이지 링크 (SpaceItem.do?name=\${space.spaceName}) -->
									<a href="shoplist.do?spaceType=Studio" class="btn" style="font-family: 'Noto Sans KR', sans-serif; font-weight: 400;">Space Now</a>
								</div>
							</div>
							<div class="col-md-5"></div>
						</div>
					</div>
				</div>
				<!-- image slide 2 -->
				<div class="swiper-slide"
					style="background-image: url(image/main2.jpg); background-size: cover; background-repeat: no-repeat; height: 100vh; background-position: center;">
					<div class="container">
						<div class="row">
							<div class="offset-md-7 col-md-6">
								<div class="banner-content">
									<!-- image slide 2 공간 네임 & 소개 글 -->
									<h2 style="text-shadow: 1px 1px 15px rgb(235, 235, 235, 0.25);">House Space</h2>
									<p class="fs-3" style="font-family: 'Noto Sans KR', sans-serif; font-weight: 400; text-shadow: 1px 1px 15px rgb(235, 235, 235, 0.25);">제품 촬영, 가구 배치 가능한 스튜디오는 없을까?</p>
									<!-- image slide 2 상세 페이지 링크 -->
									<a href="shoplist.do?spaceType=House" class="btn" style="font-family: 'Noto Sans KR', sans-serif; font-weight: 400;">Space Now</a>
								</div>
							</div>
							<div class="col-md-5"></div>
						</div>
					</div>
				</div>
				<!-- image slide 3 -->
				<div class="swiper-slide"
					style="background-image: url(image/main3.jpg); background-size: cover; background-repeat: no-repeat; height: 100vh; background-position: center;">
					<div class="container">
						<div class="row">
							<div class="offset-md-0 col-md-6">
								<div class="banner-content">
									<!-- image slide 3 공간 네임 & 소개 글 -->
									<h2 style="text-shadow: 1px 1px 15px rgb(235, 235, 235, 0.25);">Commercial Space</h2>
									<p class="fs-3" style="font-family: 'Noto Sans KR', sans-serif; font-weight: 400; text-shadow: 1px 1px 15px rgb(235, 235, 235, 0.25);">유튜브 콘텐츠 찍기 좋은 감성 카페는?</p>
									<!-- image slide 3 상세 페이지 링크 -->
									<a href="shoplist.do?spaceType=Commercial" class="btn" style="font-family: 'Noto Sans KR', sans-serif; font-weight: 400;">Space Now</a>
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
						data-aos-duration="1500" data-aos-once="true" style="font-family: 'Noto Sans KR', sans-serif; font-weight: 600">잠깐 머무는 장소,
						좋은 경험을 선사하기 위해 STAY를 큐레이팅합니다.</h3>
					<!-- 플랫폼 소개 상세 글 -->
					<p data-aos="fade" data-aos-easing="ease-in"
						data-aos-duration="1800" data-aos-once="true" style="font-family: 'Noto Sans KR', sans-serif; font-weight: 300">
						좋은 장소, 공간을 만들어가려는 사람들과 이를 소비하는 실제 게스트를 위한 정보의 교류 및 소통의 장이 되어<br>
						지역과 사람, 장소에 대한 가치를 보다 높여주는 스테이에 대한 관심과 이러한 장소를 만들고자 하는<br>
						열망을 일깨울 수 있는 의미 있는 채널로 자리매김하고자 합니다.</p>
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
				<a href="shoplist.do" class="btn me-5" style="font-family: 'Noto Sans KR', sans-serif; font-weight: 400">View all spaces</a>
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
				<c:forEach items="${bestSpace }" var="best" varStatus="status" begin="0" end="7">	
					<div class="swiper-slide">
						<div class="product-card position-relative">
							<div class="image-holder zoom-effect">
								<!-- 공간 사진 넣는 곳 -->
								<img src="image/space/${best.spaceImageMain }" alt="product-item"
									class="img-fluid zoom-in" style="height: 500px">
								<!-- 공간 상세페이지로 이동하는 버튼 -->
								<div class="cart-concern position-absolute">
									<div class="cart-button">
										<a href="shopdetail.do?spaceId=${best.spaceId }" class="btn" style="font-family: 'Noto Sans KR', sans-serif; font-weight: 400">Go to Space</a>
									</div>
								</div>
							</div>
							<div class="card-detail text-center pt-3 pb-2">
								<!-- 공간네임 (네임 클릭시 해당 공간 상세페이지로) -->
								<h5 class="card-title fs-3 text-capitalize">
									<a href="shopdetail.do?spaceId=${best.spaceId }" style="font-family: 'Noto Sans KR', sans-serif; font-weight: 400">${best.spaceName }</a>
								</h5>
								<!-- 공간가격 -->
								<span class="item-price text-primary fw-light" id="space${status.index }" style="font-family: 'Noto Sans KR', sans-serif; font-size: medium;">${best.spaceCity } · &#x20a9;${best.spacePrice }</span>
							</div>
						</div>
					</div>
				</c:forEach>
				
				<!-- 공간사진 & 공간네임 & 공간가격 반복 -->

<!-- 				<div class="swiper-slide">
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
				</div> -->
				<!-- ==================================================================== -->
<!-- 				<div class="swiper-slide">
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
				</div> -->
				<!-- ==================================================================== -->
<!-- 				<div class="swiper-slide">
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
				</div> -->
				<!-- ==================================================================== -->
<!-- 				<div class="swiper-slide">
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
				</div> -->
				<!-- ==================================================================== -->
<!-- 				<div class="swiper-slide">
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
				</div> -->
				<!-- ==================================================================== -->
<!-- 				<div class="swiper-slide">
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
				</div> -->
				<!-- ==================================================================== -->
<!-- 				<div class="swiper-slide">
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
				</div> -->
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
								<c:forEach items="${recentReply }" var="recent" begin="0" end="2">								
									<div
										class="swiper-slide text-center d-flex justify-content-center">
										<div class="review-item">
											<!-- 후기 메세지 -->
											<blockquote class="fs-1 fw-light" style="font-family: 'Noto Sans KR'; font-size: larger !important;">${recent.replyContent }</blockquote>
											<!-- 후기 작성자 -->
											<div class="author-detail">
												<div class="name fw-bold text-uppercase pt-2" style="font-family: 'Noto Sans KR'">${recent.memberId }</div>
											</div>
										</div>
									</div>
								</c:forEach>
								
								<!-- ==================================================================== -->
								<!-- <div
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
								</div> -->
								<!-- ==================================================================== -->
								<!-- <div
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
								</div> -->
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
			style="background: url(vaso-html/images/video_image.jpg) no-repeat;">
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
							<h5 class="accordion-header" id="flush-headingOne3" style="font-family: 'Noto Sans KR', sans-serif; font-weight: 700">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
									aria-expanded="true" aria-controls="flush-collapseOne">
									모르겠어요! 아이디 / 비밀번호는 어떻게 찾을 수 있나요?</button>
							</h5>
							<div id="flush-collapseOne" class="accordion-collapse collapse"
								aria-labelledby="flush-headingOne"
								data-bs-parent="#accordionFlushExample">
								<div class="accordion-body">
									<p style="font-family: 'Noto Sans KR', sans-serif; font-weight: 300">
									   상단 메뉴에서 Account 클릭하면 Find Id, Find Password 메뉴를 볼 수 있어요.<br>
									   Find Id, Find Password 메뉴에서 요구하는 정보를 입력하면,
									   회원가입시 등록한 사용자의 이메일로<br>아이디와 초기화된 패스워드를 받을 수 있어요</p>
								</div>
							</div>
						</div>
						<!-- Q&A 2 -->
						<div class="accordion-item">
							<h5 class="accordion-header" id="flush-headingTwo3" style="font-family: 'Noto Sans KR', sans-serif; font-weight: 700">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo"
									aria-expanded="true" aria-controls="flush-collapseTwo">
									예약하고 싶어요! 공간은 어떻게 예약하나요?</button>
							</h5>
							<div id="flush-collapseTwo" class="accordion-collapse collapse"
								aria-labelledby="flush-headingTwo"
								data-bs-parent="#accordionFlushExample">
								<div class="accordion-body">
									<p style="font-family: 'Noto Sans KR', sans-serif; font-weight: 300">
										상단 메뉴에서 Find Day · Find Location · Find Space 클릭하면
										원하는 지역 혹은 날짜를 입력를 선택할 수 있어요. 
										선택하면, 공간 목록페이지에서 원하는 공간을 클릭 후 가능한 날짜를 선택해서 결제버튼을 누르면<br>예약 신청이 가능해요.
   										예약 신청 후, 호스트가 승인을 하면 공간예약이 확정됩니다.</p>
								</div>
							</div>
						</div>
						<!-- Q&A 3 -->
						<div class="accordion-item">
							<h5 class="accordion-header" id="flush-headingThree3" style="font-family: 'Noto Sans KR', sans-serif; font-weight: 700">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#flush-collapseThree"
									aria-expanded="true" aria-controls="flush-collapseThree">
									궁금해요! 공간에 대한 문의는 어디로 해야하나요?</button>
							</h5>
							<div id="flush-collapseThree" class="accordion-collapse collapse"
								aria-labelledby="flush-headingThree"
								data-bs-parent="#accordionFlushExample">
								<div class="accordion-body">
									<p style="font-family: 'Noto Sans KR', sans-serif; font-weight: 300">
										상단 메뉴에서 공간 목록페이지로 이동 후, 문의를 원하시는 공간 상세페이지로 이동하면 공간 상세 정보에서 호스트의 전화번호를 알 수 있어요.
    									해당 번호로 호스테에게 문의가 가능합니다.</p>
								</div>
							</div>
						</div>
						<!-- Q&A 4 -->
						<div class="accordion-item">
							<h5 class="accordion-header" id="flush-headingFour3" style="font-family: 'Noto Sans KR', sans-serif; font-weight: 700">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#flush-collapseFour"
									aria-expanded="true" aria-controls="flush-collapseFour">
									알리고 싶어요! 이용후기는 어떻게 작성하나요?</button>
							</h5>
							<div id="flush-collapseFour" class="accordion-collapse collapse"
								aria-labelledby="flush-headingFour"
								data-bs-parent="#accordionFlushExample">
								<div class="accordion-body">
									<p style="font-family: 'Noto Sans KR', sans-serif; font-weight: 300">
										이용후기는 게스트가 이용한 공간에 대해 이용후기를 작성할 수 있어요.<br>
   										로그인 후, 상단 메뉴에서 마이페이지로 이동하여 예약목록 중 후기를 작성하고 싶은 공간을 클릭해요.<br>
   										상세페이지로 이동 후, 밑으로 이동하면 이용후기 작성 공간을 볼 수 있어요.</p>
								</div>
							</div>
						</div>
						<!-- Q&A 5 -->
						<div class="accordion-item">
							<h5 class="accordion-header" id="flush-headingFive3" style="font-family: 'Noto Sans KR', sans-serif; font-weight: 700">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#flush-collapseFive"
									aria-expanded="true" aria-controls="flush-collapseFive">
									일정이 생겼어요! 예약은 어떻게 취소하나요?</button>
							</h5>
							<div id="flush-collapseFive" class="accordion-collapse collapse"
								aria-labelledby="flush-headingFive"
								data-bs-parent="#accordionFlushExample">
								<div class="accordion-body">
									<p style="font-family: 'Noto Sans KR', sans-serif; font-weight: 300">
										로그인 후, 상단 메뉴에서 마이페이지로 이동하여 예약목록을 클릭해요.
										예약목록에서 취소하실 공간의<br>마지막 부분에 메뉴 버튼을 클릭하면 취소버튼을 확인 할 수 있어요.</p>
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
			style="background: url('vaso-html/images/banner_img1.jpg') no-repeat left; background-size: cover; height: 100%;">
			<!-- 가정집 카테고리 사진 -->
			<div class="banner-content-text position-absolute" data-aos="fade"
				data-aos-delay="1000" data-aos-easing="ease-in"
				data-aos-duration="1000" data-aos-once="true">
				<h2>House</h2>
				<a href="shoplist.do?spaceType=House" class="btn" style="font-family: 'Noto Sans KR', sans-serif; font-weight: 400;">Go see it now</a>
			</div>
		</div>

		<div class="banner-content-2 position-relative"
			style="background: url('vaso-html/images/banner_img2.jpg') no-repeat left; background-size: cover; height: 100%;">
			<!-- 스튜디오 카테고리 사진 -->
			<div class="banner-content-text position-absolute" data-aos="fade"
				data-aos-delay="1000" data-aos-easing="ease-in"
				data-aos-duration="1000" data-aos-once="true">
				<h2>Studio</h2>
				<a href="shoplist.do?spaceType=Studio" class="btn" style="font-family: 'Noto Sans KR', sans-serif; font-weight: 400;">Go to space</a>
			</div>
		</div>
		
		<div class="banner-content-3 position-relative"
			style="background: url('vaso-html/images/banner_img3.jpg') no-repeat left; background-size: cover; height: 100%;">
			<!-- 상업공간 카테고리 사진 -->
			<div class="banner-content-text position-absolute" data-aos="fade"
				data-aos-delay="1000" data-aos-easing="ease-in"
				data-aos-duration="1000" data-aos-once="true">
				<h2>Commercial</h2>
				<a href="shoplist.do?spaceType=Commercial" class="btn" style="font-family: 'Noto Sans KR', sans-serif; font-weight: 400;">Go to space</a>
			</div>
		</div>
	</section>
	
	<!-- Video Popup -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">

			<div class="modal-content">

				<div class="modal-body">
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close">
						<svg class="bi" width="40" height="40">
							<use xlink:href="#close-sharp"></use></svg>
					</button>
					<div class="ratio ratio-16x9">
						<iframe class="embed-responsive-item" src="" id="video"
							allowscriptaccess="always" allow="autoplay"></iframe>
					</div>
				</div>

			</div>

		</div>
	</div>
	
	<!-- 가격에 , 넣기 -->
	<script type="text/javascript">
		let price = '';
		let result = '';
		for (let i = 0; i < 8; i++){
			price = document.getElementById("space"+i).innerText;
			result = price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			console.log(result);
			document.getElementById("space"+i).innerText = result;
		}
		
/* 		console.log("${bestSpace }");
		console.log("${bestSpace[0] }");
		console.log("${bestSpace[0].spaceId }"); */
	</script>
</body>
</html>