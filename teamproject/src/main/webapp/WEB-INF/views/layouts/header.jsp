<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.min.css"> -->
		<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
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
		/* .ui-datepicker {
		    margin: 0 auto;
		} */
		.ui-datepicker {
			margin-left: 230px;
    		z-index: 999999 !important;
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
						<div class="modal-dialog" role="document">
							<div class="modal-content">

								<!-- Modal Header -->
								<div class="modal-header">
									<h4 class="modal-title"
										style="font-family: 'Noto Sans KR', sans-serif; font-weight: 600;  margin: 10px 0;">
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
									<div class="form-group py-3">						
										<input type="text" class="form-control" style="display: inline-block; text-align: center;" placeholder="날짜를 선택하세요">
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
		
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/js/bootstrap.min.js"></script>
    	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.min.js"></script>
    	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    	<!-- <input class="datepicker"> -->
		<script type="text/javascript">
			$('.modal-body input').datepicker({
			  format: 'yyyy-mm-dd'
			}).on('hide', function(event) {
			  event.preventDefault();
			  event.stopPropagation();
			});
		</script>
	</body>

	</html>