<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
  		<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
		<style>
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
		    margin: 0 auto;
		}
		/* #datepicker > div {
			display: inline-block;
		} */
		</style>
		<!-- <style>
			.ui-widget-header {
				border: 0px solid #dddddd;
				background: #fff;
			}

			.ui-datepicker-calendar>thead>tr>th {
				font-size: 14px !important;
			}

			.ui-datepicker .ui-datepicker-header {
				position: relative;
				padding: 10px 0;
			}

			.ui-state-default,
			.ui-widget-content .ui-state-default,
			.ui-widget-header .ui-state-default,
			.ui-button,
			html .ui-button.ui-state-disabled:hover,
			html .ui-button.ui-state-disabled:active {
				border: 0px solid #c5c5c5;
				background-color: transparent;
				font-weight: normal;
				color: #454545;
				text-align: center;
			}

			.ui-datepicker .ui-datepicker-title {
				margin: 0 0em;
				line-height: 16px;
				text-align: center;
				font-size: 14px;
				padding: 0px;
				font-weight: bold;
			}

			.ui-datepicker {
				display: none;
				background-color: #fff;
				border-radius: 4px;
				margin-top: 10px;
				margin-left: 0px;
				margin-right: 0px;
				padding: 20px;
				padding-bottom: 10px;
				width: 300px;
				box-shadow: 10px 10px 40px rgba(0, 0, 0, 0.1);
			}

			.ui-widget.ui-widget-content {
				border: 1px solid #eee;
			}

			#datepicker:focus>.ui-datepicker {
				display: block;
			}

			.ui-datepicker-prev,
			.ui-datepicker-next {
				cursor: pointer;
			}

			.ui-datepicker-next {
				float: right;
			}

			.ui-state-disabled {
				cursor: auto;
				color: hsla(0, 0%, 80%, 1);
			}

			.ui-datepicker-title {
				text-align: center;
				padding: 10px;
				font-weight: 100;
				font-size: 20px;
			}

			.ui-datepicker-calendar {
				width: 100%;
			}

			.ui-datepicker-calendar>thead>tr>th {
				padding: 5px;
				font-size: 20px;
				font-weight: 400;
			}


			.ui-datepicker-calendar>tbody>tr>td>a {
				color: #000;
				font-size: 12px !important;
				font-weight: bold !important;
				text-decoration: none;

			}


			.ui-datepicker-calendar>tbody>tr>.ui-state-disabled:hover {
				cursor: auto;
				background-color: #fff;
			}

			.ui-datepicker-calendar>tbody>tr>td {
				border-radius: 100%;
				width: 44px;
				height: 30px;
				cursor: pointer;
				padding: 5px;
				font-weight: 100;
				text-align: center;
				font-size: 12px;
			}

			.ui-datepicker-calendar>tbody>tr>td:hover {
				background-color: transparent;
				opacity: 0.6;
			}

			.ui-state-hover,
			.ui-widget-content .ui-state-hover,
			.ui-widget-header .ui-state-hover,
			.ui-state-focus,
			.ui-widget-content .ui-state-focus,
			.ui-widget-header .ui-state-focus,
			.ui-button:hover,
			.ui-button:focus {
				border: 0px solid #cccccc;
				background-color: transparent;
				font-weight: normal;
				color: #2b2b2b;
			}

			.ui-widget-header .ui-icon {
				background-image: url('vaso-html/images/btns.png');
			}

			.ui-icon-circle-triangle-e {
				background-position: -20px 0px;
				background-size: 36px;
			}

			.ui-icon-circle-triangle-w {
				background-position: -0px -0px;
				background-size: 36px;
			}

			.ui-datepicker-calendar>tbody>tr>td:first-child a {
				color: red !important;
			}

			.ui-datepicker-calendar>tbody>tr>td:last-child a {
				color: #0099ff !important;
			}

			.ui-datepicker-calendar>thead>tr>th:first-child {
				color: red !important;
			}

			.ui-datepicker-calendar>thead>tr>th:last-child {
				color: #0099ff !important;
			}

			.ui-state-highlight,
			.ui-widget-content .ui-state-highlight,
			.ui-widget-header .ui-state-highlight {
				border: 0px;
				background: #f1f1f1;
				border-radius: 50%;
				padding-top: 10px;
				padding-bottom: 10px;
			}


			.inp {
				padding: 10px 10px;
				background-color: #f1f1f1;
				border-radius: 4px;
				border: 0px;
			}

			.inp:focus {
				outline: none;
				background-color: #eee;
			}
		</style> -->
	</head>

	<body>

		<header id="header" class="site-header">
			<nav id="header-nav" class="navbar navbar-expand-lg px-3">
				<div class="container">
					<!-- 로고 -->
					<a class="navbar-brand d-lg-none" href="home.do"> <img src="vaso-html/images/STAYSPACE_logo.png"
							class="logo" style="width: 103px; height: 100px;">
					</a>
					<button class="navbar-toggler d-flex d-lg-none order-3 p-2" type="button" data-bs-toggle="offcanvas"
						data-bs-target="#bdNavbar" aria-controls="bdNavbar" aria-expanded="false"
						aria-label="Toggle navigation">Menu</button>
					<div class="offcanvas offcanvas-end" tabindex="-1" id="bdNavbar"
						aria-labelledby="bdNavbarOffcanvasLabel">
						<div class="offcanvas-header px-4 pb-0">
							<a class="navbar-brand" href="index.html"> <img src="vaso-html/images/STAYSPACE_logo.png"
									class="logo" style="width: 103px; height: 100px;">
							</a>
							<button type="button" class="btn-close btn-close-black" data-bs-dismiss="offcanvas"
								aria-label="Close" data-bs-target="#bdNavbar"></button>
						</div>

						<!-- 메뉴바 -->
						<div class="offcanvas-body" style="padding-left: 24px">
							<ul id="navbar" class="navbar-nav w-100 d-flex justify-content-between align-items-center">

								<ul class="list-unstyled d-lg-flex justify-content-md-between align-items-center">
									<!-- About NAV -->
									<li class="nav-item"><a class="nav-link ms-0" href="about.do">About</a></li>
									<!-- Find Where -->
									<li class="nav-item"><a class="nav-link ms-0" a type="button" data-bs-toggle="modal"
											data-bs-target="#findWhereModal" id="findWhere">
											Find Where</a></li>
									<!-- Find When -->
									<li class="nav-item"><a class="nav-link ms-0" a type="button" data-bs-toggle="modal"
											data-bs-target="#findWhenModal" id="findWhen">
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
							</ul>
							 -->

									<!-- LOGO NAV -->
									<a class="navbar-brand d-none d-lg-block me-0" href="home.do">
										<img src="vaso-html/images/STAYSPACE_logo.png" class="logo"
											style="width: 103px; height: 100px;">
									</a>

									<!-- Right NAV start -->
									<ul class="list-unstyled d-lg-flex justify-content-between align-items-center">
										<!-- Search NAV -->
										<li class="nav-item search-item">
											<div id="search-bar" class="border-right d-none d-lg-block">
												<form action="" autocomplete="on">
													<input id="search" class="text-dark" name="search" type="text"
														placeholder="Search Here..."> <a type="submit"
														class="nav-link me-0" href="#">Search</a>
												</form>
											</div>
										</li>

										<!-- Account NAV -->
										<li class="nav-item"><a class="nav-link me-0" href="account.do">Account</a></li>
										<!-- Cart NAV -->
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
										<!-- Cart NAV end-->
									</ul>
								</ul>
						</div>
					</div>
				</div>

				<!-- Find Where 모달 -->
				<form id="findWhereForm" action="spacelist.do" method="get">
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
													<button type="button">
														<a>전체</a>
													</button>
												</li>
												<li class="cityElement">
													<button type="button">
														<a>제주</a>
													</button>
												</li>
												<li class="cityElement">
													<button type="button">
														<a>서울</a>
													</button>
												</li>
												<li class="cityElement">
													<button type="button">
														<a>경기</a>
													</button>
												</li>
												<li class="cityElement">
													<button type="button">
														<a>인천</a>
													</button>
												</li>
												<li class="cityElement">
													<button type="button">
														<a>강원</a>
													</button>
												</li>
												<li class="cityElement">
													<button type="button">
														<a>충청</a>
													</button>
												</li>
												<li class="cityElement">
													<button type="button">
														<a>대전</a>
													</button>
												</li>
												<li class="cityElement">
													<button type="button">
														<a>경상</a>
													</button>
												</li>
												<li class="cityElement">
													<button type="button">
														<a>대구</a>
													</button>
												</li>
												<li class="cityElement">
													<button type="button">
														<a>울산</a>
													</button>
												</li>
												<li class="cityElement">
													<button type="button">
														<a>부산</a>
													</button>
												</li>
												<li class="cityElement">
													<button type="button">
														<a>전라</a>
													</button>
												</li>
												<li class="cityElement">
													<button type="button">
														<a>광주</a>
													</button>
												</li>
											</ul>
										</div>
									</div>
								</div>
								<!-- Modal footer -->
								<div class="modal-footer">
									<button type="submit" class="btn btn-primary" id="idBtn"
										style="margin: 20px auto; display: block;">search</button>
								</div>
							</div>
						</div>
					</div>
				</form>

				<!-- Find When 모달 -->
				<form id="findWhenForm" action="spacelist.do" method="get">
					<div class="modal fade" id="findWhenModal" tabindex="-1" role="dialog" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">

								<!-- Modal Header -->
								<div class="modal-header" style="margin: 0 15px;">
									<h4 class="modal-title"
										style="font-family: 'Noto Sans KR', sans-serif; font-weight: 600;  margin: 10px 0;">
										언제 떠날까요?</h4>
									<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
								</div>

								<!-- Modal body -->
								<div class="modal-body">
									<div class="form-group py-3" style="margin: 20px 0;">
										<label>Date:</label><input type="text" >
										<div id="datepicker" style="margin: 0"></div>
									</div>
								</div>
								<!-- Modal footer -->
								<div class="modal-footer">
									<button type="submit" class="btn btn-primary" id="idBtn"
										style="margin: 20px auto; display: block;">search</button>
								</div>
							</div>
						</div>
					</div>
				</form>

			</nav>
		</header>

		<script>
			$('#datepicker').datepicker();
		</script>
	
	</body>

	</html>