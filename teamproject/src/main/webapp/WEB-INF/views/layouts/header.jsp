<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>Insert title here</title>
			<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.min.css"> -->
			<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
			<style>
				.swal2-title {
					font-family: 'Noto Sans KR', sans-serif;
					font-weight: 600;
				}
				#cityBox {
					/* float: left; */
					/* display: flex;
		flex-wrap: wrap;
		justify-content: center; */
					text-align: center;
				}

				#cityList {
					margin: 0;
					padding: 0;
				}

				.cityElement {
					/* width: 80px; */
					display: list-item;
					display: inline-block;
					list-style: none;
					margin-right: 20px;
				}

				.cityElement button {
					width: 80px;
					height: 47px;
					background-color: #f5f3ef;
					border-style: hidden;
				}

				.cityElement button:active {
					color: #f5f3ef;
					border-radius: 30px;
					background-color: #87826e;
					box-shadow: rgba(50, 50, 93, 0.25) 0px 13px 27px -5px, rgba(0, 0, 0, 0.3) 0px 8px 16px -8px;
				}

				.cityElement button:focus {
					color: #f5f3ef;
					box-shadow: rgba(50, 50, 93, 0.25) 0px 13px 27px -5px, rgba(0, 0, 0, 0.3) 0px 8px 16px -8px;
					border-radius: 30px;
					background-color: #87826e;
				}

				.cityElement a {
					font-weight: 500;
					font-family: 'Noto Sans KR', sans-serif;
				}

				.cityElement:nth-child(7n) {
					margin-right: 0;
				}

				.cityElement:nth-child(-n+7) {
					margin-bottom: 30px;
				}

				#cityBox {
					padding-left: 15px;
					padding-right: 15px;
				}

				.ui-datepicker {
					/* margin-left: 230px; */
					z-index: 999999 !important;
				}
				.dropdown-menu[data-bs-popper] {
					right:-12.5%;
				}
				
				.nav-item a {
					font-family: 'Noto Sans KR', sans-serif;
					/* font-weight: 450; */
				}
			</style>
		</head>

		<body>

			<header id="header" class="site-header">
				<nav id="header-nav" class="navbar navbar-expand-lg px-3">
					<div class="container">
						<!-- 로고 -->
						<a class="navbar-brand d-lg-none" href="home.do"> <img src="vaso-html/images/STAYSPACE_logo.png"
								class="logo" style="width: 103px; height: 100px;">
						</a>
						<button class="navbar-toggler d-flex d-lg-none order-3 p-2" type="button"
							data-bs-toggle="offcanvas" data-bs-target="#bdNavbar" aria-controls="bdNavbar"
							aria-expanded="false" aria-label="Toggle navigation" style="font-weight: 600;">Menu</button>
						<div class="offcanvas offcanvas-end" tabindex="-1" id="bdNavbar"
							aria-labelledby="bdNavbarOffcanvasLabel">
							<div class="offcanvas-header px-4 pb-0">
								<a class="navbar-brand" href="index.html"> <img
										src="vaso-html/images/STAYSPACE_logo.png" class="logo"
										style="width: 103px; height: 100px;">
								</a>
								<button type="button" class="btn-close btn-close-black" data-bs-dismiss="offcanvas"
									aria-label="Close" data-bs-target="#bdNavbar"></button>
							</div>

							<!-- 메뉴바 -->
							<div class="offcanvas-body">
								<ul id="navbar"
									class="navbar-nav w-100 d-flex justify-content-between align-items-center">

									<ul class="list-unstyled d-lg-flex justify-content-md-between align-items-center">
										<!-- About NAV -->
										<li class="nav-item"><a class="nav-link ms-0" href="about.do">About</a></li>
										<!-- Find Where -->
										<li class="nav-item"><a class="nav-link ms-0" type="button"
												data-bs-toggle="modal" data-bs-target="#findWhereModal" id="findWhere" style="width: 100%">
												Find Where</a></li>
										<!-- Find When -->
										<li class="nav-item"><a class="nav-link ms-0" type="button"
												data-bs-toggle="modal" data-bs-target="#findWhenModal" id="findWhen" style="width: 100%">
												Find When</a></li>
										<!-- pages NAV -->
										<!-- 
										<li class="nav-item dropdown"><a
										class="nav-link dropdown-toggle ms-0" data-bs-toggle="dropdown"
										href="home.do" role="button" aria-expanded="false">Pages<svg
												class="bi" width="18" height="18">
												<use xlink:href="#chevron-down"></use></svg></a>
										<ul class="dropdown-menu">
											<li><a href="about.html"
												class="dropdown-item fs-5 fw-medium">About <span
													class="text-primary">(PRO)</span></a></li>
											<li><a href="shop.html"
												class="dropdown-item fs-5 fw-medium">Shop <span
													class="text-primary">(PRO)</span></a></li>
											<li><a href="single-product.html"
												class="dropdown-item fs-5 fw-medium">Single Product <span
													class="text-primary">(PRO)</span></a></li>
											<li><a href="login.html"
												class="dropdown-item fs-5 fw-medium">Account <span
													class="text-primary">(PRO)</span></a></li>
											<li><a href="cart.html"
												class="dropdown-item fs-5 fw-medium">Cart <span
													class="text-primary">(PRO)</span></a></li>
											<li><a href="checkout.html"
												class="dropdown-item fs-5 fw-medium">Checkout <span
													class="text-primary">(PRO)</span></a></li>
											<li><a href="blog.html"
												class="dropdown-item fs-5 fw-medium">Blog <span
													class="text-primary">(PRO)</span></a></li>
											<li><a href="single-post.html"
												class="dropdown-item fs-5 fw-medium">Single Post <span
													class="text-primary">(PRO)</span></a></li>
											<li><a href="contact.html"
												class="dropdown-item fs-5 fw-medium">Contact <span
													class="text-primary">(PRO)</span></a></li>
										</ul></li> 
									
										-->

										<!-- LOGO NAV -->
										<a class="navbar-brand d-none d-lg-block me-0" href="home.do">
											<img src="vaso-html/images/STAYSPACE_logo.png" class="logo"
												style="width: 103px; height: 100px; margin-left: 50px; margin-right: 50px">
										</a>

										<!-- ### Right NAV start ### -->


										<!-- 
										Search NAV
										<li class="nav-item search-item">
											<div id="search-bar" class="border-right d-none d-lg-block">
												<form action="" autocomplete="on">
													<input id="search" class="text-dark" name="search" type="text"
														placeholder="Search Here..."> <a type="submit"
														class="nav-link me-0" href="#">Search</a>
												</form>
											</div>
										</li>
										Search NAV end
										-->


										<!-- Space NAV start -->
										<li class="nav-item"><a class="nav-link me-0" href="shoplist.do">Space</a></li>
										<!-- Space NAV end -->

										<!-- Account NAV -->
										<c:choose>
										<c:when test="${empty memberId }">
											<li class="nav-item"><a class="nav-link me-0" href="account.do">Account</a>
											</li>
										</c:when>
										<c:when test="${not empty memberId }">
											<li class="nav-item dropdown"><a class="nav-link dropdown-toggle me-0"
													data-bs-toggle="dropdown" href="home.do" role="button"
													aria-expanded="false">Account<svg class="bi" width="18" height="18">
													<use xlink:href="#chevron-down"></use>
													</svg></a>
												<ul class="dropdown-menu" style="text-align: center;">
													<li><a href="memberreservationhome.do" class="dropdown-item fs-5 fw-medium">My
													page</a></li>
													<c:if test="${memberCK eq 'user' }">
														<li><a href="cart.do" class="dropdown-item fs-5 fw-medium">Cart</a>
														</li>
													</c:if>
													<li><a href="memberlogout.do"
													class="dropdown-item fs-5 fw-medium">Logout</a></li>
												</ul>
											</li>
										</c:when>
										</c:choose>
										<!--##### Search NAV start #####-->
										<!-- <li class="nav-item search-item" style="margin-right: 7px">
											<div id="search-bar" class="border-right d-none d-lg-block">
												<form action="" autocomplete="off">
													<input id="search" class="text-dark" name="search" type="text"
														placeholder="Search Here..." style="padding: 60px 74px 8px 0px;"> <a type="submit"
														class="nav-link me-0" href="about.do">Search</a>
												</form>
											</div>
										</li> -->
										<li class="nav-item"><a class="nav-link me-0" href="contactcontroller.do">Contact</a></li>
										<!-- Search NAV end -->
										<!-- ### right NAV end ### -->

										<!-- 		
										Cart NAV
										<li class="cart-dropdown nav-item dropdown"><a
												class="nav-link dropdown-toggle me-0" data-bs-toggle="dropdown" href="#"
												role="button" aria-expanded="false">Cart(2)</a>
											<div class="dropdown-menu dropdown-menu-end p-3">
												<h4 class="d-flex justify-content-between align-items-center mb-3">
													<span class="text-primary">Your cart</span> <span
														class="badge bg-primary rounded-pill">2</span>
												</h4>
												<ul class="list-group mb-3">
													<li
														class="list-group-item bg-transparent border-dark d-flex justify-content-between lh-sm">
														<div>
															<h5 class="card-title fs-3 text-capitalize">
																<a href="single-product.html">Matt Black</a>
															</h5>
															<small class="text-body-secondary">Soft texture
																matt coated.</small>
														</div> <span class="text-primary">$120</span>
													</li>
													<li
														class="list-group-item bg-transparent border-dark d-flex justify-content-between lh-sm">
														<div>
															<h5 class="card-title fs-3 text-capitalize">
																<a href="single-product.html">Shiny Pot</a>
															</h5>
															<small class="text-body-secondary">This pot is
																ceramic.</small>
														</div> <span class="text-primary">$870</span>
													</li>
													<li
														class="list-group-item bg-transparent border-dark d-flex justify-content-between">
														<span class="text-uppercase"><b>Total (USD)</b></span>
														<strong>$990</strong>
													</li>
												</ul>
												<div class="d-flex flex-wrap justify-content-center">
													<a class="w-100 btn btn-dark mb-1" type="submit">View
														Cart</a> <a class="w-100 btn btn-primary" type="submit">Go
														to checkout</a>
												</div>
											</div>
										</li>
										Cart NAV end
										-->

									</ul>
								</ul>
							</div>
						</div>
					</div>

					<!-- Find Where 모달 -->
					<!-- <form id="findWhereForm" action="shoplist.do?spaceCity=Seoul" method="get"> -->
						<div class="modal fade" id="findWhereModal" tabindex="-1" role="dialog" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">

									<!-- Modal Header -->
									<div class="modal-header" style="margin: 0 15px;">
										<h4 class="modal-title"
											style="font-family: 'Noto Sans KR', sans-serif; font-weight: 800;  margin: 10px 0;">
											어디로 떠날까요?</h4>
										<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
									</div>

									<!-- Modal body -->
									<div class="modal-body">
										<div class="form-group py-3" style="margin: 20px 0;">
											<h4
												style="font-family: 'Noto Sans KR', sans-serif; font-weight: 700; padding-top: 20px; text-align:center; margin-bottom: 15px">
												도시</h4>
											<div class="form-group py-3" id="cityBox">
												<ul id="cityList">
													<li class="cityElement">

														<button type="button" id="All" onclick="cityClick(this)">
															<a>전체</a>
														</button>
													</li>
													<li class="cityElement">
														<button type="button" id="제주" onclick="cityClick(this)">
															<a>제주</a>
														</button>
													</li>
													<li class="cityElement">
														<button type="button" id="서울" onclick="cityClick(this)">
															<a>서울</a>
														</button>
													</li>
													<li class="cityElement">
														<button type="button" id="경기" onclick="cityClick(this)">
															<a>경기</a>
														</button>
													</li>
													<li class="cityElement">
														<button type="button" id="인천" onclick="cityClick(this)">
															<a>인천</a>
														</button>
													</li>
													<li class="cityElement" >
														<button type="button" id="강원" onclick="cityClick(this)">
															<a>강원</a>
														</button>
													</li>
													<li class="cityElement">
														<button type="button" id="충청" onclick="cityClick(this)">
															<a>충청</a>
														</button>
													</li>
													<li class="cityElement">
														<button type="button" id="대전" onclick="cityClick(this)">
															<a>대전</a>
														</button>
													</li>
													<li class="cityElement">
														<button type="button" id="경상" onclick="cityClick(this)">
															<a>경상</a>
														</button>
													</li>
													<li class="cityElement">
														<button type="button" id="대구" onclick="cityClick(this)">
															<a>대구</a>
														</button>
													</li>
													<li class="cityElement">
														<button type="button" id="울산" onclick="cityClick(this)">
															<a>울산</a>
														</button>
													</li>
													<li class="cityElement">
														<button type="button" id="부산" onclick="cityClick(this)">
															<a>부산</a>
														</button>
													</li>
													<li class="cityElement">
														<button type="button" id="전라" onclick="cityClick(this)">
															<a>전라</a>
														</button>
													</li>
													<li class="cityElement">
														<button type="button" id="광주" onclick="cityClick(this)">
															<a>광주</a>
														</button>
													</li>
												</ul>
											</div>
										</div>
									</div>
									<!-- Modal footer -->
									<div class="modal-footer">
										<button type="button" class="btn btn-primary" id="findWhereBtn"
											style="margin: 20px auto; display: block;" onclick="findformcheck()">search</button>
									</div>
								</div>
							</div>
						</div>
					<!-- </form> -->

					<!-- Find When 모달 -->
					<form id="findWhenForm" action="shoplist.do" method="get">
						<div class="modal fade" id="findWhenModal" tabindex="-1" role="dialog" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">

									<!-- Modal Header -->
									<div class="modal-header" style="margin: 0 15px;">
										<h4 class="modal-title"
											style="font-family: 'Noto Sans KR', sans-serif; font-weight: 750;">
											언제 떠날까요?</h4>
										<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
									</div>

									<!-- Modal body -->
									<div class="modal-body">
										<!-- <div class="form-group py-3" style="margin: 20px 0;">
										<label>Date:</label><input type="text" class="datepicker">
										<div id="datepicker" style="margin: 0"></div>
									</div> -->
										<!-- <input type="text" class="form-control"> -->
										<!-- <b>Date:</b> <input type="" name="" id="txtDate" runat="server" /> -->
										<!-- <p>Date: <input type="text" id="datepicker"></p> -->
										<!--   <input type="text" class="form-control" data-toggle="datepicker"> -->
										<div class="form-group py-3" style="text-align: center;">
											<input type="text" class="form-control"
												style="display: inline-block; font-family: 'Noto Sans KR', sans-serif; text-align: center; width:300px"
												placeholder="날짜를 선택하세요" id="finddatepicker" name="spaceStartDate">
										</div>
									</div>
									<!-- Modal footer -->
									<div class="modal-footer">
										<button type="submit" class="btn btn-primary" id="idBtn"
											style="margin: 20px auto; display: block;" onclick="findWhencheck()">search</button>
									</div>
								</div>
							</div>
						</div>
					</form>
				</nav>
			</header>
			
			<c:if test="${not empty messageLogout }">
				<div id=successLogout></div>
			</c:if>
			
			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/js/bootstrap.min.js"></script>
			<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.12.1/js/bootstrap-datepicker.min.js"></script> -->
			<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"
				integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA=="
				crossorigin="anonymous" referrerpolicy="no-referrer"></script>
			<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
			<!-- <input class="datepicker"> -->
			<script type="text/javascript">
			/* .modal-body input */
				/* $('#datepicker').datepicker({
					format: 'yyyy-mm-dd'
					minDate: 0;
				}).on('hide', function (event) {
					event.preventDefault();
					event.stopPropagation();
				}); 
				
				/* var dateToday = new Date(); */
				$("#finddatepicker").datepicker({
				  /*   defaultDate: "+1w",
				    changeMonth: true,
				    numberOfMonths: 3, */
				    dateFormat:'yy-mm-dd',
				    minDate: 0,
				});
				   /*  onSelect: function(selectedDate) {
				        var option = this.id == "from" ? "minDate" : "maxDate",
				            instance = $(this).data("datepicker"),
				            date = $.datepicker.parseDate(instance.settings.dateFormat || $.datepicker._defaults.dateFormat, selectedDate, instance.settings);
				        dates.not(this).datepicker("option", option, date);
				    } */
			</script>
			
			<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
			<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.28/dist/sweetalert2.all.min.js"></script>
			<script type="text/javascript">
				<!-- 로그아웃 알람 -->
				/* console.log("${messageLogout }"); */
				
				if ($('#successLogout').length){				
						Swal.fire({
							title: '로그아웃',
							text: "${messageLogout } Thank you",
							icon: 'success',
							confirmButtonColor: '#87826E',
							confirmButtonText: 'OK',
						})
						.then(function () {
							location.href='home.do';
						});
				}
			</script>
			
			<!-- Find where -->
			<script type="text/javascript">
			
			let selectCity = '';
			
			function cityClick(e) {
				/* this.children.innerText; */
				console.log($(e).attr('id'));
				selectCity = $(e).attr('id');
			}
			
			function findformcheck() {
				if (selectCity == 'All') {
					window.location.href = 'shoplist.do';
					/* $("#findWhereForm").attr("action", "shoplist.do"); */
				} else if (selectCity == '') {
					window.location.href = 'shoplist.do';
				} else {
					window.location.href = 'shoplist.do?spaceCity=' + selectCity;
					/* $("#findWhereForm").attr("action", "shoplist.do?spaceCity="+selectCity); */
					/* console.log($("#findWhereForm").attr('action')); */
				}
			}
			
			</script>
		</body>

		</html>