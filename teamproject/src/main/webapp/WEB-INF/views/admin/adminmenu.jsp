<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">

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

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
</head>

<body>

	<!-- Menu -->

	<aside id="layout-menu"
		class="layout-menu menu-vertical menu bg-menu-theme"
		style="height: 100%">
		<!-- 로고 -->
		<div class="app-brand demo">
			<a href="home.do" class="app-brand-link"> <img
				src="vaso-html/images/STAYSPACE_logo.png" class="logo"
				style="width: 103px; height: 100px;">
			</a>

		</div>
		<div class="menu-inner-shadow"></div>

		<ul class="menu-inner py-1">

			<!-- MEMBERS -->
			<li class="menu-header small text-uppercase"><span
				class="menu-header-text">MENU</span></li>
			<li class="menu-item"><a href="adminmypage.do" class="menu-link">
					<i class="menu-icon tf-icons bx bx-dock-top"></i>
					<div data-i18n="Form Elements">My Account Settings</div>
			</a></li>
			<!-- Member Management -->
			<li class="menu-item"><a href="memberlist.do" class="menu-link">
					<i class="menu-icon tf-icons bx bx-detail"></i>
					<div data-i18n="Basic">Member List</div>
			</a></li>


			<!-- SPACES 
            <li class="menu-header small text-uppercase"><span class="menu-header-text">SPACES</span></li>
            <!-- Space Management -->
			<li class="menu-item"><a href="totalspacelist.do"
				class="menu-link"> <i class="menu-icon tf-icons bx bx-detail"></i>
					<div data-i18n="Basic">Total Space List</div>
			</a></li>

			<!-- RESERVATIONS 
            <li class="menu-header small text-uppercase"><span class="menu-header-text">RESERVATIONS</span></li>
            <!-- Reservation Management -->
			<li class="menu-item"><a href="totalreservelist.do"
				class="menu-link"> <i class="menu-icon tf-icons bx bx-detail"></i>
					<div data-i18n="Form Elements">Total Reservation List</div>
			</a></li>
			<!-- Logout -->
			<li class="menu-item"><a href="memberlogout.do"
				class="menu-link"> <i class="menu-icon tf-icons bx bx-user"></i>
					<div data-i18n="Form Elements">Logout</div>
			</a></li>
		</ul>
	</aside>
	<!-- / Menu -->
	<c:if test="${not empty messageLogout }">
		<div id=successLogout></div>
	</c:if>
	<script>
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
