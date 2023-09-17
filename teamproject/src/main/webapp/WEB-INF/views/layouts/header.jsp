<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header id="header" class="site-header">
		<nav id="header-nav" class="navbar navbar-expand-lg px-3">
			<div class="container">
				<!-- 로고 -->
				<a class="navbar-brand d-lg-none" href="home.do"> <img
					src="vaso-html/images/main-logo.png" class="logo">
				</a>
				<button class="navbar-toggler d-flex d-lg-none order-3 p-2"
					type="button" data-bs-toggle="offcanvas" data-bs-target="#bdNavbar"
					aria-controls="bdNavbar" aria-expanded="false"
					aria-label="Toggle navigation">Menu</button>
				<div class="offcanvas offcanvas-end" tabindex="-1" id="bdNavbar"
					aria-labelledby="bdNavbarOffcanvasLabel">
					<div class="offcanvas-header px-4 pb-0">
						<a class="navbar-brand" href="index.html"> <img
							src="vaso-html/images/main-logo.png" class="logo">
						</a>
						<button type="button" class="btn-close btn-close-black"
							data-bs-dismiss="offcanvas" aria-label="Close"
							data-bs-target="#bdNavbar"></button>
					</div>

					<!-- 메뉴바 -->
					<div class="offcanvas-body">
						<ul id="navbar"
							class="navbar-nav w-100 d-flex justify-content-between align-items-center">

							<ul
								class="list-unstyled d-lg-flex justify-content-md-between align-items-center">
								<!-- About NAV -->
								<li class="nav-item"><a class="nav-link ms-0"
									href="about.html">About</a></li>
								<!-- Shop NAV -->
								<li class="nav-item"><a class="nav-link ms-0"
									href="shop.html">Shop</a></li>
								<!-- pages NAV -->
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle ms-0" data-bs-toggle="dropdown"
									href="#" role="button" aria-expanded="false">Pages<svg
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

							<!-- LOGO NAV -->
							<a class="navbar-brand d-none d-lg-block me-0" href="index.html">
								<img src="vaso-html/images/main-logo.png" class="logo">
							</a>

							<!-- Right NAV start -->
							<ul
								class="list-unstyled d-lg-flex justify-content-between align-items-center">
								<!-- Search NAV -->
								<li class="nav-item search-item">
									<div id="search-bar" class="border-right d-none d-lg-block">
										<form action="" autocomplete="on">
											<input id="search" class="text-dark" name="search"
												type="text" placeholder="Search Here..."> <a
												type="submit" class="nav-link me-0" href="#">Search</a>
										</form>
									</div>
								</li>

								<!-- Account NAV -->
								<li class="nav-item"><a class="nav-link me-0"
									href="login.html">Account</a></li>
								<!-- Cart NAV -->									
								<li class="cart-dropdown nav-item dropdown"><a
									class="nav-link dropdown-toggle me-0" data-bs-toggle="dropdown"
									href="#" role="button" aria-expanded="false">Cart(2)</a>
									<div class="dropdown-menu dropdown-menu-end p-3">
										<h4
											class="d-flex justify-content-between align-items-center mb-3">
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
												<span class="text-uppercase"><b>Total (USD)</b></span> <strong>$990</strong>
											</li>
										</ul>
										<div class="d-flex flex-wrap justify-content-center">
											<a class="w-100 btn btn-dark mb-1" type="submit">View
												Cart</a> <a class="w-100 btn btn-primary" type="submit">Go
												to checkout</a>
										</div>
									</div></li>
								<!-- Cart NAV end-->
							</ul>
						</ul>
					</div>
				</div>
			</div>
		</nav>
	</header>
</body>
</html>