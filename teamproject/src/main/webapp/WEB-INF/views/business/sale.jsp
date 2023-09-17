<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!-- =========================================================
* Sneat - Bootstrap 5 HTML Admin Template - Pro | v1.0.0
==============================================================

* Product Page: https://themeselection.com/products/sneat-bootstrap-html-admin-template/
* Created by: ThemeSelection
* License: You must have a valid license purchased in order to legally use the theme for your project.
* Copyright ThemeSelection (https://themeselection.com)

=========================================================
 -->
<!-- beautify ignore:start -->
<html lang="en" class="light-style layout-menu-fixed" dir="ltr"
	data-theme="theme-default" data-assets-path="sneat/assets/"
	data-template="vertical-menu-template-free">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

<title>Dashboard - Analytics | Sneat - Bootstrap 5 HTML Admin
	Template - Pro</title>

<meta name="description" content="" />

<!-- Favicon -->
<link rel="icon" type="image/x-icon"
	href="sneat/assets/img/favicon/favicon.ico" />

<!-- Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
	rel="stylesheet" />

<!-- Icons. Uncomment required icon fonts -->
<link rel="stylesheet" href="sneat/assets/vendor/fonts/boxicons.css" />

<!-- Core CSS -->
<link rel="stylesheet" href="sneat/assets/vendor/css/core.css"
	class="template-customizer-core-css" />
<link rel="stylesheet" href="sneat/assets/vendor/css/theme-default.css"
	class="template-customizer-theme-css" />
<link rel="stylesheet" href="sneat/assets/css/demo.css" />

<!-- Vendors CSS -->
<link rel="stylesheet"
	href="sneat/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

<link rel="stylesheet"
	href="sneat/assets/vendor/libs/apex-charts/apex-charts.css" />

<!-- Page CSS -->

<!-- Helpers -->
<script src="sneat/assets/vendor/js/helpers.js"></script>

<!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
<!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
<script src="sneat/assets/js/config.js"></script>
</head>
<body>
	<!-- Content wrapper -->
	<div class="content-wrapper">
		<div class="container-xxl flex-grow-1 container-p-y">
			<!-- Expense Overview -->
			<div class="col-md-6 col-lg-4 order-1 mb-4">
				<div class="card h-100">
					<div class="card-header">
						<ul class="nav nav-pills" role="tablist">
							<li class="nav-item">
								<button type="button" class="nav-link active" role="tab"
									data-bs-toggle="tab"
									data-bs-target="#navs-tabs-line-card-income"
									aria-controls="navs-tabs-line-card-income" aria-selected="true">
									Income</button>
							</li>
							<li class="nav-item">
								<button type="button" class="nav-link" role="tab">Expenses</button>
							</li>
							<li class="nav-item">
								<button type="button" class="nav-link" role="tab">Profit</button>
							</li>
						</ul>
					</div>
					<div class="card-body px-0">
						<div class="tab-content p-0">
							<div class="tab-pane fade show active"
								id="navs-tabs-line-card-income" role="tabpanel">
								<div class="d-flex p-4 pt-3">
									<div class="avatar flex-shrink-0 me-3">
										<img src="sneat/assets/img/icons/unicons/wallet.png"
											alt="User" />
									</div>
									<div>
										<small class="text-muted d-block">Total Balance</small>
										<div class="d-flex align-items-center">
											<h6 class="mb-0 me-1">$459.10</h6>
											<small class="text-success fw-semibold"> <i
												class="bx bx-chevron-up"></i> 42.9%
											</small>
										</div>
									</div>
								</div>
								<div id="incomeChart"></div>
								<div class="d-flex justify-content-center pt-4 gap-2">
									<div class="flex-shrink-0">
										<div id="expensesOfWeek"></div>
									</div>
									<div>
										<p class="mb-n1 mt-1">Expenses This Week</p>
										<small class="text-muted">$39 less than last week</small>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--/ Expense Overview -->
			<!-- Total Revenue -->
			<div class="col-12 col-lg-8 order-2 order-md-3 order-lg-2 mb-4">
				<div class="card">
					<div class="row row-bordered g-0">
						<div class="col-md-8">
							<h5 class="card-header m-0 me-2 pb-3">Total Revenue</h5>
							<div id="totalRevenueChart" class="px-2"></div>
						</div>
						<div class="col-md-4">
							<div class="card-body">
								<div class="text-center">
									<div class="dropdown">
										<button class="btn btn-sm btn-outline-primary dropdown-toggle"
											type="button" id="growthReportId" data-bs-toggle="dropdown"
											aria-haspopup="true" aria-expanded="false">
											2022</button>
										<div class="dropdown-menu dropdown-menu-end"
											aria-labelledby="growthReportId">
											<a class="dropdown-item" href="javascript:void(0);">2021</a>
											<a class="dropdown-item" href="javascript:void(0);">2020</a>
											<a class="dropdown-item" href="javascript:void(0);">2019</a>
										</div>
									</div>
								</div>
							</div>
							<div id="growthChart"></div>
							<div class="text-center fw-semibold pt-3 mb-2">62% Company
								Growth</div>

							<div
								class="d-flex px-xxl-4 px-lg-2 p-4 gap-xxl-3 gap-lg-1 gap-3 justify-content-between">
								<div class="d-flex">
									<div class="me-2">
										<span class="badge bg-label-primary p-2"><i
											class="bx bx-dollar text-primary"></i></span>
									</div>
									<div class="d-flex flex-column">
										<small>2022</small>
										<h6 class="mb-0">$32.5k</h6>
									</div>
								</div>
								<div class="d-flex">
									<div class="me-2">
										<span class="badge bg-label-info p-2"><i
											class="bx bx-wallet text-info"></i></span>
									</div>
									<div class="d-flex flex-column">
										<small>2021</small>
										<h6 class="mb-0">$41.2k</h6>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--/ Total Revenue -->
			<!-- Order Statistics -->
			<div class="col-md-6 col-lg-4 col-xl-4 order-0 mb-4">
				<div class="card h-100">
					<div
						class="card-header d-flex align-items-center justify-content-between pb-0">
						<div class="card-title mb-0">
							<h5 class="m-0 me-2">Order Statistics</h5>
							<small class="text-muted">42.82k Total Sales</small>
						</div>
						<div class="dropdown">
							<button class="btn p-0" type="button" id="orederStatistics"
								data-bs-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								<i class="bx bx-dots-vertical-rounded"></i>
							</button>
							<div class="dropdown-menu dropdown-menu-end"
								aria-labelledby="orederStatistics">
								<a class="dropdown-item" href="javascript:void(0);">Select
									All</a> <a class="dropdown-item" href="javascript:void(0);">Refresh</a>
								<a class="dropdown-item" href="javascript:void(0);">Share</a>
							</div>
						</div>
					</div>
					<div class="card-body">
						<div
							class="d-flex justify-content-between align-items-center mb-3">
							<div class="d-flex flex-column align-items-center gap-1">
								<h2 class="mb-2">8,258</h2>
								<span>Total Orders</span>
							</div>
							<div id="orderStatisticsChart"></div>
						</div>
						<ul class="p-0 m-0">
							<li class="d-flex mb-4 pb-1">
								<div class="avatar flex-shrink-0 me-3">
									<span class="avatar-initial rounded bg-label-primary"><i
										class="bx bx-mobile-alt"></i></span>
								</div>
								<div
									class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
									<div class="me-2">
										<h6 class="mb-0">Electronic</h6>
										<small class="text-muted">Mobile, Earbuds, TV</small>
									</div>
									<div class="user-progress">
										<small class="fw-semibold">82.5k</small>
									</div>
								</div>
							</li>
							<li class="d-flex mb-4 pb-1">
								<div class="avatar flex-shrink-0 me-3">
									<span class="avatar-initial rounded bg-label-success"><i
										class="bx bx-closet"></i></span>
								</div>
								<div
									class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
									<div class="me-2">
										<h6 class="mb-0">Fashion</h6>
										<small class="text-muted">T-shirt, Jeans, Shoes</small>
									</div>
									<div class="user-progress">
										<small class="fw-semibold">23.8k</small>
									</div>
								</div>
							</li>
							<li class="d-flex mb-4 pb-1">
								<div class="avatar flex-shrink-0 me-3">
									<span class="avatar-initial rounded bg-label-info"><i
										class="bx bx-home-alt"></i></span>
								</div>
								<div
									class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
									<div class="me-2">
										<h6 class="mb-0">Decor</h6>
										<small class="text-muted">Fine Art, Dining</small>
									</div>
									<div class="user-progress">
										<small class="fw-semibold">849k</small>
									</div>
								</div>
							</li>
							<li class="d-flex">
								<div class="avatar flex-shrink-0 me-3">
									<span class="avatar-initial rounded bg-label-secondary"><i
										class="bx bx-football"></i></span>
								</div>
								<div
									class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
									<div class="me-2">
										<h6 class="mb-0">Sports</h6>
										<small class="text-muted">Football, Cricket Kit</small>
									</div>
									<div class="user-progress">
										<small class="fw-semibold">99</small>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!--/ Order Statistics -->
		</div>
	</div>
	<!-- Core JS -->
	<!-- build:js assets/vendor/js/core.js -->
	<script src="sneat/assets/vendor/libs/jquery/jquery.js"></script>
	<script src="sneat/assets/vendor/libs/popper/popper.js"></script>
	<script src="sneat/assets/vendor/js/bootstrap.js"></script>
	<script
		src="sneat/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

	<script src="sneat/assets/vendor/js/menu.js"></script>
	<!-- endbuild -->

	<!-- Vendors JS -->
	<script src="sneat/assets/vendor/libs/apex-charts/apexcharts.js"></script>

	<!-- Main JS -->
	<script src="sneat/assets/js/main.js"></script>

	<!-- Page JS -->
	<script src="sneat/assets/js/dashboards-analytics.js"></script>

	<!-- Place this tag in your head or just before your close body tag. -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>

</body>
</html>