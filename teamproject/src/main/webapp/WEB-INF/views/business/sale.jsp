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
	<div class="container-xxl flex-grow-1 container-p-y">
		<h4 class="fw-bold py-3 mb-4">
			<span class="text-muted fw-light">Sale </span> Chart
		</h4>
		<!-- Content wrapper -->

		<div class="col-xl-6">
			<h6 class="text-muted">Click the tap</h6>
			<div class="nav-align-top mb-4">
				<ul class="nav nav-tabs nav-fill" role="tablist">
					<li class="nav-item">
						<button type="button" class="nav-link active" role="tab"
							data-bs-toggle="tab" data-bs-target="#navs-justified-home"
							aria-controls="navs-justified-home" aria-selected="true">
							<i class="tf-icons bx bx-message-square"></i> 월별 매출 차트
						</button>
					</li>
					<li class="nav-item">
						<button type="button" class="nav-link" role="tab"
							data-bs-toggle="tab" data-bs-target="#navs-justified-profile"
							aria-controls="navs-justified-profile" aria-selected="false">
							<i class="tf-icons bx bx-home"></i> 공간별 매출 차트
						</button>
					</li>

				</ul>
				<div class="tab-content">
					<div class="tab-pane fade show active" id="navs-justified-home"
						role="tabpanel">
						<h4 class="fw-bold py-3 mb-4">Monthly Sales</h4>
						<canvas id="lineChart"></canvas>
					</div>
					<div class="tab-pane fade" id="navs-justified-profile"
						role="tabpanel">
						<h4 class="fw-bold py-3 mb-4">Sales by location</h4>
						<canvas id="barChart"></canvas> 
					</div>
				</div>
			</div>
		</div>
			
		<!-- <div class="col-lg-6 grid-margin stretch-card">
					<div class="card">
						<div class="card-body">
							<h4 class="fw-bold py-3 mb-4">Monthly Sales</h4>
							<canvas id="lineChart"></canvas>
						</div>
					</div>
					
				</div> 

				<div class="col-lg-6 grid-margin stretch-card">
					<div class="card">
						<div class="card-body">
							<h4 class="fw-bold py-3 mb-4">Sales by location</h4>
							<canvas id="barChart"></canvas>
						</div>
					</div>
				</div> -->
				
	</div>
	<!-- Core JS -->
	<!-- Custom js for this page-->
	<script src="js/chart.js"></script>
	<script src="js/Chart.min.js"></script>
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