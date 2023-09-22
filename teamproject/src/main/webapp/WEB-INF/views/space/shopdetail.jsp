
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vaso Ecommerce Template</title>
<link rel="stylesheet" type="text/css"
	href="vaso-html/css/star.css?ver=1">

<style>
.star-ratings {
	color: #aaa9a9;
	position: relative;
	unicode-bidi: bidi-override;
	width: max-content;
	-webkit-text-fill-color: transparent;
	/* Will override color (regardless of order) */
	-webkit-text-stroke-width: 1.3px;
	-webkit-text-stroke-color: #2b2a29;
}

.star-ratings-fill {
	color: #fff58c;
	padding: 0;
	position: absolute;
	z-index: 1;
	display: flex;
	top: 0;
	left: 0;
	overflow: hidden;
	-webkit-text-fill-color: black;
}

.star-ratings-base {
	z-index: 0;
	padding: 0;
}
</style>
</head>
<body>
	<section
		class="hero-section jarallax d-flex align-items-center justify-content-center padding-medium pb-5"
		style="background: url(vaso-html/images/hero-img.jpg) no-repeat; background-size: cover;">
		<div class="hero-content">
			<div class="container">
				<div class="row">
					<div class="text-center padding-large no-padding-bottom">
						<h1>space</h1>
						<div class="breadcrumbs">
							<span class="item"> <a href="index.html">Home ></a>
							</span> <span class="item">space</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="single-product padding-large">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="row product-preview">
						<div class="swiper thumb-swiper col-3">
							<div class="swiper-wrapper d-flex flex-wrap align-content-start">
								<div class="swiper-slide">
									<img src="vaso-html/images/${s.spaceImageMain}" alt=""
										class="img-fluid">
								</div>
								<div class="swiper-slide">
									<img src="vaso-html/images/${s.spaceImageSub1}" alt=""
										class="img-fluid">
								</div>
								<div class="swiper-slide">
									<img src="vaso-html/images/${s.spaceImageSub2}" alt=""
										class="img-fluid">
								</div>
							</div>
						</div>
						<div class="swiper large-swiper overflow-hidden col-9">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<img src="vaso-html/images/${s.spaceImageMain}"
										alt="single-product" class="img-fluid">
								</div>
								<div class="swiper-slide">
									<img src="vaso-html/images/${s.spaceImageSub1}"
										alt="single-product" class="img-fluid">
								</div>
								<div class="swiper-slide">
									<img src="vaso-html/images/${s.spaceImageSub2}"
										alt="single-product" class="img-fluid">
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="product-info">
						<div class="element-header">
							<h3 class="product-title my-3">${s.spaceName }</h3>
							<%-- <div class="rating-container d-flex align-items-center my-3">
								<div class="rating" data-rating="1" onclick=rate(1)>
									<c:forEach var="star" begin="1" end="5">
										<c:if test="${star <= s.spaceStar}">
											<svg class="bi" width="16" height="16">
										<use xlink:href="#star-fill"></use></svg>
										</c:if>
										<c:if test="${star > s.spaceStar}">
											<svg class="bi" width="16" height="16">
										<use xlink:href="#star-empty"></use></svg>
										</c:if>
									</c:forEach>

								</div>
							</div> --%>
							<div class="star-ratings">
								<div class="star-ratings-fill space-x-2 text-lg"
									:style="{ width: ratingToPercent + '%' }">
									<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
								</div>
								<div class="star-ratings-base space-x-2 text-lg">
									<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
								</div>
							</div>
							<div class="product-price my-3">
								<span class="fs-1 text-primary">${s.spacePrice }원</span> <small>/시간</small>
							</div>
							<hr>
							<h5 class="widget-title text-decoration-underline text-uppercase">
								Date <br> <input type="text" id="datepicker">
							</h5>
							<div class="action-buttons my-4 d-flex flex-wrap">
								<a href="checkout.do" class="btn btn-dark me-2 mb-1">Checkout</a>
								<a href="#" class="btn btn-dark"
									onclick="selectToCart('${s.spaceName}')">Add To Cart</a>
							</div>
						</div>
						<hr>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="product-tabs">
		<div class="container">
			<div class="row">
				<div class="tabs-listing">
					<nav>
						<div class="nav nav-tabs d-flex justify-content-center py-3"
							id="nav-tab" role="tablist">
							<button class="nav-link text-uppercase active" id="nav-home-tab"
								data-bs-toggle="tab" data-bs-target="#nav-home" type="button"
								role="tab" aria-controls="nav-home" aria-selected="true">map</button>
							<button class="nav-link text-uppercase" id="nav-information-tab"
								data-bs-toggle="tab" data-bs-target="#nav-information"
								type="button" role="tab" aria-controls="nav-information"
								aria-selected="false">Space Description</button>
							<button class="nav-link text-uppercase" id="nav-review-tab"
								data-bs-toggle="tab" data-bs-target="#nav-review" type="button"
								role="tab" aria-controls="nav-review" aria-selected="false">Reviews</button>
						</div>
					</nav>
					<div class="tab-content" id="nav-tabContent">
						<div class="tab-pane fade active show" id="nav-home"
							role="tabpanel" aria-labelledby="nav-home-tab">
							<p>주소 : ${s.spaceAddress }</p>
							<div id="map" style="width: 100%; height: 350px;"></div>
						</div>
						<div class="tab-pane fade" id="nav-information" role="tabpanel"
							aria-labelledby="nav-information-tab">
							<p>${s.spaceContent }</p>
						</div>
						<div class="tab-pane fade" id="nav-review" role="tabpanel"
							aria-labelledby="nav-review-tab">
							<div
								class="review-box review-style d-flex flex-wrap justify-content-between">
								<div class="review-item d-flex">
									<div class="image-holder">
										<img src="vaso-html/images/review-image1.jpg" alt="review">
									</div>
									<div class="review-content">
										<div class="rating-container d-flex align-items-center">
											<div class="rating">
												<svg class="bi" width="16" height="16">
														<use xlink:href="#star-fill"></use>
													</svg>
											</div>
											<div class="rating">
												<svg class="bi" width="16" height="16">
														<use xlink:href="#star-fill"></use>
													</svg>
											</div>
											<div class="rating">
												<svg class="bi" width="16" height="16">
														<use xlink:href="#star-fill"></use>
													</svg>
											</div>
											<div class="rating">
												<svg class="bi" width="16" height="16">
														<use xlink:href="#star-fill"></use>
													</svg>
											</div>
											<div class="rating">
												<svg class="bi" width="16" height="16">
														<use xlink:href="#star-fill"></use>
													</svg>
											</div>
											<span class="rating-count">(5.0)</span>
										</div>
										<div class="review-header">
											<span class="author-name">Tom Johnson</span> <span
												class="review-date">- 07/05/2022</span>
										</div>
										<p>Vitae tortor condimentum lacinia quis vel eros donec
											ac. Nam at lectus urna duis convallis convallis</p>
									</div>
								</div>
								<div class="review-item d-flex">
									<div class="image-holder">
										<img src="vaso-html/images/review-image2.jpg" alt="review">
									</div>
									<div class="review-content">
										<div class="rating-container d-flex align-items-center">
											<div class="rating">
												<svg class="bi" width="16" height="16">
														<use xlink:href="#star-fill"></use>
													</svg>
											</div>
											<div class="rating">
												<svg class="bi" width="16" height="16">
														<use xlink:href="#star-fill"></use>
													</svg>
											</div>
											<div class="rating">
												<svg class="bi" width="16" height="16">
														<use xlink:href="#star-fill"></use>
													</svg>
											</div>
											<div class="rating">
												<svg class="bi" width="16" height="16">
														<use xlink:href="#star-fill"></use>
													</svg>
											</div>
											<div class="rating">
												<svg class="bi" width="16" height="16">
														<use xlink:href="#star-fill"></use>
													</svg>
											</div>
											<span class="rating-count">(5.0)</span>
										</div>
										<div class="review-header">
											<span class="author-name">Jenny Willis</span> <span
												class="review-date">- 07/05/2022</span>
										</div>
										<p>Vitae tortor condimentum lacinia quis vel eros donec
											ac. Nam at lectus urna duis convallis convallis</p>
									</div>
								</div>
							</div>
							<div class="add-review margin-small">
								<h3>Add a review</h3>
								<div class="review-rating py-2">
									<span class="my-2">Your rating</span>
									<div class="rating-container d-flex align-items-center"
										id="yourRating">
										<div class="star-rating space-x-4" style="float: left">
											<input type="radio" id="5-stars" name="rating" value="5"
												v-model="ratings" /> <label for="5-stars" class="star pr-4">★</label>
											<input type="radio" id="4-stars" name="rating" value="4"
												v-model="ratings" /> <label for="4-stars" class="star">★</label>
											<input type="radio" id="3-stars" name="rating" value="3"
												v-model="ratings" /> <label for="3-stars" class="star">★</label>
											<input type="radio" id="2-stars" name="rating" value="2"
												v-model="ratings" /> <label for="2-stars" class="star">★</label>
											<input type="radio" id="1-star" name="rating" value="1"
												v-model="ratings" /> <label for="1-star" class="star">★</label>
										</div>
									</div>
								</div>
								<input type="file" class="jfilestyle py-2 border-0"
									data-text="Choose your file">
								<form id="form">
									<div class="py-3">
										<label>Your Review</label>
										<textarea placeholder="Write your review here" class="w-100"></textarea>
									</div>
									<button type="submit" name="submit"
										class="btn btn-dark w-100 my-3">Submit</button>
								</form>
							</div>
						</div>

					</div>
				</div>
			</div>
			<div>
				<form id="cform" action="cart.do" method="post">
					<input type="hidden" id="spaceName" name="spaceName">
				</form>
			</div>
		</div>
	</section>

	<section id="products" class="product-store padding-xlarge"
		data-aos="fade" data-aos-easing="ease-in" data-aos-duration="1000"
		data-aos-once="true">
		<div class="container">
			<div
				class="display-header d-flex flex-wrap justify-content-between align-items-center pb-4">
				<h3 class="mt-3">Related Products</h3>
				<a href="shop.html" class="btn">View all items</a>
			</div>
			<div class="row">
				<div class="col-md-3 product-card position-relative mb-3">
					<div class="image-holder zoom-effect">
						<img src="vaso-html/images/product-item1.jpg" alt="product-item"
							class="img-fluid zoom-in">
						<div class="cart-concern position-absolute">
							<div class="cart-button">
								<a href="#" class="btn">Add to Cart</a>
							</div>
						</div>
					</div>
					<div class="card-detail text-center pt-3 pb-2">
						<h5 class="card-title fs-3 text-capitalize">
							<a href="single-product.html">Matt Black</a>
						</h5>
						<span class="item-price text-primary fs-3 fw-light">$870</span>
					</div>
				</div>
				<div class="col-md-3 product-card position-relative mb-3">
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
				<div class="col-md-3 product-card position-relative mb-3">
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
				<div class="col-md-3 product-card position-relative mb-3">
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
			<div>
				<form id="sform" action="cart.do" method="post">
					<input type="hidden" id="spaceName" name="spaceName"> 
					<input type="hidden" id="spaceStartDate" name="spaceStartDate">
				</form>
			</div>
		</div>
	</section>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7fabb4647805e005839c9dad15111de3"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> -->
	<script type="text/javascript"
		src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
	<script>
		$('.slider').slick({
			autoplay : true,
			autoplaySpeed : 2000,
			dots : true,
			infinite : true,
			speed : 500,
			fade : true,
			cssEase : 'linear',
			adaptiveHeight : true
		});
	</script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		// 마커가 표시될 위치입니다 
		var markerPosition = new kakao.maps.LatLng(33.450701, 126.570667);

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
			position : markerPosition
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);

		// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
		// marker.setMap(null);
	</script>
	<!--    <script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
		integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"
		integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css"
		integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ=="
		crossorigin="anonymous" referrerpolicy="no-referrer" /> -->
	<script>
		
	</script>
	<script type="text/javascript">
	function selectToCart(name){
		let form= document.getElementById("sform");
		form.spaceName.value = name;
		console.log($('input[name=spaceStartDate]').val());
		form.submit();
	}
		$('#datepicker').datepicker({
			dateFormat : 'yy-mm-dd',
			onSelect: function(d) { 
			        var dateObject =$("#datepicker").val();
			        let form= document.getElementById("sform");
					form.spaceStartDate.value=dateObject;
					console.log(dateObject);
			    }
		}).on('hide', function(event) {
			event.preventDefault();
			event.stopPropagation();
		})
	</script>
</body>

</html>