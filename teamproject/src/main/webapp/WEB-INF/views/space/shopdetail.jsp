
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
<script>
function numberWithCommas(x) {
	document.write(x.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ","));
	}
</script>
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
									<img src="image/space/${s.spaceImageMain}" alt=""
										class="img-fluid">
								</div>
								<div class="swiper-slide">
									<img src="image/space/${s.spaceImageSub1}" alt=""
										class="img-fluid">
								</div>
								<div class="swiper-slide">
									<img src="image/space/${s.spaceImageSub2}" alt=""
										class="img-fluid">
								</div>
							</div>
						</div>
						<div class="swiper large-swiper overflow-hidden col-9">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<img src="image/space/${s.spaceImageMain}" alt="single-product"
										class="img-fluid" onclick="window.open(this.src)">
								</div>
								<div class="swiper-slide">
									<img src="image/space/${s.spaceImageSub1}" alt="single-product"
										class="img-fluid" onclick="window.open(this.src)">
								</div>
								<div class="swiper-slide">
									<img src="image/space/${s.spaceImageSub2}" alt="single-product"
										class="img-fluid" onclick="window.open(this.src)">
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="product-info">
						<div class="element-header">
							<h3 class="product-title my-3">${s.spaceName }</h3>
							<div class="star-ratings">
								<c:set var="stars" value="${s.spaceStar *20}" />
								<div class="star-ratings-fill space-x-2 text-lg"
									style="width: ${stars }%">
									<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
								</div>
								<div class="star-ratings-base space-x-2 text-lg">
									<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
								</div>
							</div>
							<div class="product-price my-3">
								<span class="fs-1 text-primary">&#8361;<script>numberWithCommas(${s.spacePrice })</script></span> <small>/일</small>
							</div>
							<hr>
							<h5 class="widget-title text-decoration-underline text-uppercase">
								Date <br> <input type="text" id="datepicker"
									name="datepicker">
							</h5>
							<div class="action-buttons my-4 d-flex flex-wrap">
								<a href="#" class="btn btn-dark me-2 mb-1"
									onclick="wishCall(${s.spaceId });">Wishlist</a>
								<a href="#" class="btn btn-dark me-2 mb-1"
									onclick="selectTo('${s.spaceId}','cart')">Add To Cart</a>
								<a href="#" class="btn btn-dark" onclick="selectTo('${s.spaceId}','checkout')">Checkout</a>
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
								role="tab" aria-controls="nav-home" aria-selected="true">Location</button>
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
							<p style="margin-top: -12px">
							<div id="map" style="width: 100%; height: 350px;"></div>
						</div>
						<div class="tab-pane fade" id="nav-information" role="tabpanel"
							aria-labelledby="nav-information-tab">
							<p>${s.spaceContent }</p>
						</div>
						
						<!-- 리뷰 -->
						<div class="tab-pane fade" id="nav-review" role="tabpanel"
							aria-labelledby="nav-review-tab">
							<div class="review-box review-style d-flex flex-wrap justify-content-between">
								
								<!-- 리뷰 반복 -->
								<c:if test="${empty replyes }">
									<div class="review-content">
										<p>등록된 후기가 없습니다.</p>
									</div>
								</c:if>
								
								<c:forEach items="${replyes }" var="r">					
									<div class="review-item d-flex">
										<div class="image-holder">
											<img src="image/reply/${r.replyImage }" alt="review" style="width: 160px; height: 160px">
										</div>
										<div class="review-content">
											<div class="rating-container d-flex align-items-center">
												<!-- 별점 -->
												<c:forEach begin="1" end="${r.replyStar }" step="1">											
													<div class="rating">
														<svg class="bi" width="16" height="16">
																<use xlink:href="#star-fill"></use>
															</svg>
													</div>
												</c:forEach>
												<!-- 별점 end -->
												<span class="rating-count"> (${r.replyStar })</span>
												
												&nbsp;&nbsp;&nbsp;&nbsp;
												<!-- 수정버튼 -->
												<c:if test="${not empty reservations }">
													<span class="label-body">
													<a type="button" data-bs-toggle="modal" data-bs-target="#EditReplyModal" onclick="ResetUpdateModal(this.id)"
														class="btn btn-primary me-2 mb-2" id="EditReply${r.replyId }" data-value="${r.replyId }" style="padding: 5px 10px 5px 10px; margin-top: 8px; border-radius: 30px;">
													EDIT</a></span>
	
												</c:if>

												&nbsp;&nbsp;
												<!-- 삭제버튼 -->
												<c:if test="${not empty reservations }">
													<span class="label-body">
													<a type="button" id="DeleteReply${r.replyId }" onclick="DeleteReplyDo(this.id)"
														class="btn btn-dark me-2 mb-2" data-value="${r.replyId }" style="padding: 5px 10px 5px 10px; margin-top: 8px; border-radius: 30px;">
													DELETE</a></span>
												</c:if>
											</div>
											
											
											
											<div class="review-header">
												<span class="author-name">${r.memberId }</span> <span
													class="review-date">- ${r.replyDate }</span>
											</div>
											<p>${r.replyContent }</p>
										</div>
									</div>
								</c:forEach>	
								<!-- 리뷰 반복 -->				
							</div>
							
							<nav
								class="navigation paging-navigation text-center padding-medium"
								role="navigation" style="padding: 0 0 30px 0;">
								<div
									class="pagination loop-pagination d-flex justify-content-center align-items-center">
									<a href="#" class="d-flex pe-2"> <svg width="24" height="24">
												<use xlink:href="#angle-left"></use></svg>
									</a> <span aria-current="page" class="page-numbers current pe-3">1</span>
									<a class="page-numbers pe-3" href="#">2</a> 
									<a class="page-numbers pe-3" href="#">3</a> 
									<a class="page-numbers pe-3" href="#">4</a>
									<a class="page-numbers pe-3" href="#">5</a> 
									<a href="#" class="d-flex ps-2"> 
									<svg width="24" height="24">
									<use xlink:href="#angle-right"></use></svg>
									</a>
								</div>
							</nav>
							
							<!-- 리뷰 추가 -->
							<c:if test="${not empty reservations }">
							
								<div class="add-review margin-small">
									<h3>Add a review</h3>
									<form id="replyForm" action="replyinsert.do" method="post" enctype="multipart/form-data">
										<div class="review-rating py-2">
											<span class="my-2">Your rating</span>
											<!-- 별점 -->
											<div class="rating-container d-flex align-items-center"
												id="yourRating">
												<div class="star-rating space-x-4" style="float: left; padding-left: 0;">
													<input type="radio" id="5-stars" name="rating" value="5"
														v-model="ratings" /> <label for="5-stars" class="star">★</label>
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
										<!-- 이미지 파일 -->
										<span class="my-2" style="padding-top: 15px;">Your image</span><br>				
										<input type="file" class="jfilestyle py-2 border-0" id="replyFile" name="replyFile"
											data-text="Choose your file" style="padding: 8px 0px 0px 8px;">
										<!-- 리뷰 content -->
										<div class="py-3">
												<label>Your Review</label>
												<textarea placeholder="Write your review here" class="w-100" style="padding-left: 8px"
												id="replyTextarea" name="replyTextarea"></textarea>
										</div>
										
										<div style="display:none">
											<input type="text" name="replyMemberId" value="${memberId }">
										</div>
										
										<div style="display:none">
											<input type="text" name="replySpaceId" value="${s.spaceId }">
										</div>
										
										<div style="display:none">
											<input type="text" name="replySpaceName" value="${s.spaceName }">
										</div>
										
										<button type="submit" name="replySubmit"
												class="btn btn-dark w-100 my-3">Submit</button>
									</form>
								</div>
							</c:if>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<!-- 리뷰 수정 모달 -->
	
		<form id="editReply"
		method="post" enctype="multipart/form-data">
		<div class="modal fade" id=EditReplyModal tabindex="-1" role="dialog"
			aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">

					<!-- Modal Header -->
					<div class="modal-header">
						<h4 class="modal-title">Edit Review</h4>
						<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
					</div>

					<!-- Modal body -->
					<div class="modal-body">
						<div class="review-rating py-2">
							<span class="my-2">Your rating</span>
							<!-- 별점 -->
							<div class="rating-container d-flex align-items-center"
								id="yourRating">
								<div class="star-rating space-x-4"
									style="float: left; padding-left: 0;">
									<input type="radio" id="5-starsEdit" name="ratingEdit"
										value="5" class="starEdit" v-model="ratings" /> <label
										for="5-starsEdit" class="starEditLabel">★</label> <input
										type="radio" id="4-starsEdit" name="ratingEdit" value="4"
										class="starEdit" v-model="ratings" /> <label
										for="4-starsEdit" class="starEditLabel">★</label> <input
										type="radio" id="3-starsEdit" name="ratingEdit" value="3"
										class="starEdit" v-model="ratings" /> <label
										for="3-starsEdit" class="starEditLabel">★</label> <input
										type="radio" id="2-starsEdit" name="ratingEdit" value="2"
										class="starEdit" v-model="ratings" /> <label
										for="2-starsEdit" class="starEditLabel">★</label> <input
										type="radio" id="1-starsEdit" name="ratingEdit" value="1"
										class="starEdit" v-model="ratings" /> <label for="1-starEdit"
										class="starEditLabel">★</label>
								</div>
							</div>
						</div>
						<!-- 이미지 파일 -->
						<span class="my-2" style="padding-top: 15px;">Your image</span><br>
						<input type="file" class="jfilestyle py-2 border-0"
							id="EditreplyFile" name="EditreplyFile"
							data-text="Choose your file" style="padding: 8px 0px 0px 8px;">
						<!-- 리뷰 content -->
						<div class="py-3">
							<label>Your Review</label>
							<textarea placeholder="Write your review here" class="w-100"
								style="padding-left: 8px" id="EditreplyTextarea"
								name="EditreplyTextarea"></textarea>
						</div>
						<div style="display: none">
							<input type="text" name="EditreplySpaceId" value="${s.spaceId }">
						</div>
						<!-- 원본 별점 -->
						<div style="display: none">
							<input type="text" name="OriginStar" id="OriginStar" value="">
						</div>
					</div>
					<!-- Modal footer -->
					<div class="modal-footer">
						<button type="submit" class="btn btn-primary" id="editBtn" onclick="editform()">submit</button>
					</div>
				</div>
			</div>
		</div>
		</form>

	<!-- 리뷰 등록 후 -->
	<c:if test="${not empty replyMessage }">
					<div id="${replyMessage }"></div>
	</c:if>
	
	<!-- replyMessage 후기 수정 후 -->
	<c:if test="${not empty replyEditMessage }">
					<div id="${replyEditMessage }">
						<p id="afterEdit" style="display: none">${editspaceId }</p>
					</div>
	</c:if>
	
	<section id="products" class="product-store"
		data-aos="fade" data-aos-easing="ease-in" data-aos-duration="1000"
		data-aos-once="true">
		<div class="container">
			<div
				class="display-header d-flex flex-wrap justify-content-between align-items-center pb-4">
				<h3 class="mt-3">Nearby</h3>
				<a href="shoplist.do" class="btn">View all items</a>
			</div>
			<div class="row">
			<c:forEach items="${relatedProduct }" var="r">
				<div class="col-md-3 product-card position-relative mb-3">
					<div class="image-holder zoom-effect">
						<img src="image/space/${r.spaceImageMain }" alt="product-item"
							class="img-fluid zoom-in">
					</div>
					<div class="card-detail text-center pt-3 pb-2">
						<h5 class="card-title fs-3 text-capitalize">
							<a href="detail.do?spaceId=${r.spaceId }">${r.spaceName }</a>
						</h5>
						<span class="item-price text-primary fs-3 fw-light">&#8361;<script>numberWithCommas(${r.spacePrice })</script></span>
					</div>
				</div>
				</c:forEach>
			</div>
	<div>
		<form id="sform" method="post">
			<input type="hidden" id="spaceId" name="spaceId"> <input
				type="hidden" id="spaceStartDate" name="spaceStartDate">
		</form>
	</div>
			</div>
	</section> 

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7fabb4647805e005839c9dad15111de3&libraries=services"></script>
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

		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption);

		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();

		// 주소로 좌표를 검색합니다
		geocoder.addressSearch('${s.spaceAddress}', function(result, status) {

			// 정상적으로 검색이 완료됐으면 
			if (status === kakao.maps.services.Status.OK) {

				var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

				// 결과값으로 받은 위치를 마커로 표시합니다
				var marker = new kakao.maps.Marker({
					map : map,
					position : coords
				});
				// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
				map.setCenter(coords);
			}
		});
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
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script type="text/javascript">
		function selectTo(id,go) {
			let form = document.getElementById("sform");
			if (form.spaceStartDate.value != 0) {
				if(go == 'cart'){
					$('#sform').attr('action', 'cart.do')
				} else if(go == 'wishlist'){
					$('#sform').attr('action', 'memberreservationhome.do')
				} else{
					$('#sform').attr('action', 'checkout.do')
				}
				form.spaceId.value = id;
				form.submit();
			} else {
				Swal.fire({
					icon : 'warning',
					title : '날짜를 선택해주세요.',
				})
			}

		}
		$('#datepicker').datepicker({
			dateFormat : 'yy-mm-dd',
			minDate : 0,
			onSelect : function(d) {
				var date=$("#datepicker").val();
				let form = document.getElementById("sform");
				form.spaceStartDate.value = date;
			}
		}).on('hide', function(event) {
			event.preventDefault();
			event.stopPropagation();
		})
	</script>
	
	<!-- 리뷰 script -->
	<script type="text/javascript">
		// 리뷰 등록 실패(알람창) 	
		if ($('#replyFail').length) {
			Swal.fire({
				title: '리뷰등록',
				text: "리뷰등록을 실패하였습니다",
				icon: 'error',
				confirmButtonColor: '#87826E',
				confirmButtonText: 'OK',
			}).then(function () {
				location.href = 'shopdetail.do';
			});
		}
		
		// 리뷰 수정 성공
		if ($('#replyEditSuccess').length) {
			Swal.fire({
				title: '리뷰수정',
				text: "리뷰수정을 성공하였습니다",
				icon: 'success',
				confirmButtonColor: '#87826E',
				confirmButtonText: 'OK',
			}).then(function () {
				location.href = 'shopdetail.do?spaceId='+$('#afterEdit').text();
			});
		}
		// 리뷰 수정 실패
		if ($('#replyEditFail').length) {
			Swal.fire({
				title: '리뷰수정',
				text: "리뷰수정을 실패하였습니다",
				icon: 'error',
				confirmButtonColor: '#87826E',
				confirmButtonText: 'OK',
			}).then(function () {
				location.href = 'shopdetail.do?spaceId='+$('#afterEdit').text();
			});
		}
	</script>
	
	<!-- 리뷰 삭제 -->
	<script type="text/javascript">
		function DeleteReplyDo(id) {
			console.log(id);
			let value = document.getElementById(id).getAttribute('data-value');
			
			console.log(document.getElementById(id).getAttribute('data-value'));
			
			let url = "replydelete.do?replyId=" + value;
			
			Swal.fire({
				title: '리뷰 삭제',
				text: '리뷰를 삭제하시겠습니까?',
				icon: 'warning',
				showCancelButton: true,
				confirmButtonColor: '#87826E',
				cancelButtonColor: '#212529',
				confirmButtonText: 'Yes'
			}). then((result) => {
				if (result.isConfirmed) {
					fetch(url)
						.then(response => response.text())
						.then(text => {
							if(text == 'Yes') {
								Swal.fire(
									'삭제 완료',
									'리뷰가 삭제되었습니다',
									'success'
								).then(function () {
									location.reload();
								});
							}
						});	
				}
			});
		}
	</script>
	
	<!-- 리뷰 수정 -->
	<script type="text/javascript">
		let replyId = '';
		
		function ResetUpdateModal(id) {
			replyId = document.getElementById(id).getAttribute('data-value');
			
			$('.starEdit').prop("checked", false);
			$('#EditreplyFile').val('');
			$('#EditreplyTextarea').val('');
		}
		
		function editform() {
			console.log(replyId);
			let eform = document.getElementById('editReply');
			eform.action = 'updatereply.do?replyId=' + replyId;
			console.log(eform.action);
		}
	</script>
	<script>
	//wishList 인서트
	function wishCall(spaceId){
		let date = $('#datepicker').val();
		$.ajax({
			url: "ajaxWishListAdd.do?spaceId=" + spaceId+"&date="+date,
			type: "get",
			datatype: "html",
			success: function (data) {
				
				Swal.fire({
					  position: 'center',
					  icon: 'success',
					  title: 'Wish list에 담았습니다!',
					  showConfirmButton: false,
					  timer: 1500
					})
					 setTimeout(function() {
						 location.href="memberreservationhome.do" 
						 }, 2000);
				
			}
		});
	}
	</script>
</body>

</html>