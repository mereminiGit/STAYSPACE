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
	<section
		class="hero-section jarallax d-flex align-items-center justify-content-center padding-medium pb-5"
		style="background: url(vaso-html/images/hero-img.jpg) no-repeat;">
		<div class="hero-content">
			<div class="container">
				<div class="row">
					<div class="text-center padding-large no-padding-bottom">
						<h1>About</h1>
						<div class="breadcrumbs">
							<span class="item"> <a href="index.html">Home ></a>
							</span> <span class="item">About</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section id="company-services" class="padding-xlarge">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 pb-3">
					<div class="icon-box text-center">
						<span
							class="icon-box-icon d-inline-block p-4 border border-accent rounded-circle mb-4">
							<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="#87826E" class="bi bi-bounding-box-circles" viewBox="0 0 16 16">
							  <path d="M2 1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zM0 2a2 2 0 0 1 3.937-.5h8.126A2 2 0 1 1 14.5 3.937v8.126a2 2 0 1 1-2.437 2.437H3.937A2 2 0 1 1 1.5 12.063V3.937A2 2 0 0 1 0 2zm2.5 1.937v8.126c.703.18 1.256.734 1.437 1.437h8.126a2.004 2.004 0 0 1 1.437-1.437V3.937A2.004 2.004 0 0 1 12.063 2.5H3.937A2.004 2.004 0 0 1 2.5 3.937zM14 1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zM2 13a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm12 0a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"/>
							</svg>
						</span>
						<div class="icon-box-content">
							<h4 class="card-title">
								ORIGINALITY
								</h3>
								<p style="font-family: 'Noto Sans KR', sans-serif; font-weight: 400">특별한 공간에는 그곳만의 가치와<br>이야기가 담겨 있습니다.</p>
						</div>
					</div>
				</div>
				
				<div class="col-lg-3 col-md-6 pb-3">
					<div class="icon-box text-center">
						<div
							class="icon-box-icon d-inline-block p-4 border border-accent rounded-circle mb-4">
							<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="#87826E" class="bi bi-aspect-ratio" viewBox="0 0 16 16">
							  <path d="M0 3.5A1.5 1.5 0 0 1 1.5 2h13A1.5 1.5 0 0 1 16 3.5v9a1.5 1.5 0 0 1-1.5 1.5h-13A1.5 1.5 0 0 1 0 12.5v-9zM1.5 3a.5.5 0 0 0-.5.5v9a.5.5 0 0 0 .5.5h13a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5h-13z"/>
							  <path d="M2 4.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1H3v2.5a.5.5 0 0 1-1 0v-3zm12 7a.5.5 0 0 1-.5.5h-3a.5.5 0 0 1 0-1H13V8.5a.5.5 0 0 1 1 0v3z"/>
							</svg>
						</div>
						<div class="icon-box-content">
							<h4 class="card-title">
								DESIGN
								</h3>
								<p style="font-family: 'Noto Sans KR', sans-serif; font-weight: 400">일관성 있고 우수한 디자인을 지닌<br>스테이를 선별하고자 합니다.</p>
						</div>
					</div>
				</div>
				
				<div class="col-lg-3 col-md-6 pb-3">
					<div class="icon-box text-center">
						<div
							class="icon-box-icon d-inline-block p-4 border border-accent rounded-circle mb-4">
							<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="#87826E" class="bi bi-chat-square-text" viewBox="0 0 16 16">
							  <path d="M14 1a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1h-2.5a2 2 0 0 0-1.6.8L8 14.333 6.1 11.8a2 2 0 0 0-1.6-.8H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h2.5a1 1 0 0 1 .8.4l1.9 2.533a1 1 0 0 0 1.6 0l1.9-2.533a1 1 0 0 1 .8-.4H14a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
							  <path d="M3 3.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zM3 6a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9A.5.5 0 0 1 3 6zm0 2.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5z"/>
							</svg>
						</div>
						<div class="icon-box-content">
							<h4 class="card-title">
								HOSPITALITY
								</h3>
								<p style="font-family: 'Noto Sans KR', sans-serif; font-weight: 400">만족스러운 스테이 경험을 제공하기<br>위해서는 환대가 무엇보다 중요합니다.</p>
						</div>
					</div>
				</div>
				
				<div class="col-lg-3 col-md-6 pb-3">
					<div class="icon-box text-center">
						<div
							class="icon-box-icon d-inline-block p-4 border border-accent rounded-circle mb-4">
							<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="#87826E" class="bi bi-cash" viewBox="0 0 16 16">
							  <path d="M8 10a2 2 0 1 0 0-4 2 2 0 0 0 0 4z"/>
							  <path d="M0 4a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V4zm3 0a2 2 0 0 1-2 2v4a2 2 0 0 1 2 2h10a2 2 0 0 1 2-2V6a2 2 0 0 1-2-2H3z"/>
							</svg>
						</div>
						<div class="icon-box-content">
							<h4 class="card-title">
								PRICE
								</h3>
								<p style="font-family: 'Noto Sans KR', sans-serif; font-weight: 400">가격은 스테이의 가치를 드러내는<br>객관적인 지표입니다.</p>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</section>
	<section id="about" data-aos="fade" data-aos-once="true">
		<div class="container">
			<div class="row position-relative">
				<div class="col-lg-8">
					<div class="image-holder zoom-out">
						<img src="vaso-html/images/single-image3.jpg" alt="single"
							class="single-image img-fluid">
					</div>
				</div>
				<!-- about us -->
				<div class="about-content col-lg-4 m-auto top-0 end-0 bottom-0">
					<span class="title-accent fs-6 text-uppercase">About us</span>
					<h3 class="py-3" style="font-family: 'Noto Sans KR', sans-serif; font-weight: 600">잠깐 머무는 장소, 좋은 경험을 선사하기 위해 STAY를<br>큐레이팅합니다.</h3>
					<p style="font-family: 'Noto Sans KR', sans-serif; font-weight: 300">
						좋은 장소, 공간을 만들어가려는 사람들과 이를 소비하는 실제 게스트를 위한 정보의 교류 및 소통의 장이 되어
						지역과 사람, 장소에 대한 가치를 보다 높여주는 스테이에 대한 관심과 이러한 장소를 만들고자 하는
						열망을 일깨울 수 있는 의미 있는 채널로 자리매김하고자 합니다.</p>
				</div>
			</div>
		</div>
	</section>
	<!-- 후기들 연결하기 -->
	<section id="testimonials" class="position-relative margin-xlarge" style="margin-bottom: 0">
		<div class="container">
			<div class="row">
				<div class="offset-md-2 col-md-8">
					<h3 class="display-7 text-center mb-5" data-aos="fade"
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
								
							</div>
						</div>
					</div>
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
</body>
</html>