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
<html
  lang="en"
  class="light-style layout-menu-fixed"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="sneat/assets/"
  data-template="vertical-menu-template-free"
>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">

    <title>Dashboard - Analytics | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="sneat/assets/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet"
    />

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="sneat/assets/vendor/fonts/boxicons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="sneat/assets/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="sneat/assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="sneat/assets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="sneat/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <link rel="stylesheet" href="sneat/assets/vendor/libs/apex-charts/apex-charts.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="sneat/assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="sneat/assets/js/config.js"></script>
  </head>

  <body>
   
        <!-- Menu -->

        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme" style="height: 100%">
           <div class="app-brand demo">
					<a href="home.do" class="app-brand-link"> <img src="vaso-html/images/STAYSPACE_logo.png"
							class="logo" style="width: 103px; height: 100px;">
					</a>
					
			</div>
          <div class="menu-inner-shadow"></div>

          <ul class="menu-inner py-1"> 
          
          <!-- My page -->
            <li class="menu-header small text-uppercase"><span class="menu-header-text">MENU</span></li>
            <!-- Member Management -->
            <li class="menu-item">
              <a href="businessmemberpage.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-dock-top"></i>
                <div data-i18n="Account Settings">My Account Settings</div>
              </a>
            </li>

            
            <!-- SPACES 
            <li class="menu-header small text-uppercase"><span class="menu-header-text">SPACES</span></li>
            <!-- Space Management -->
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="Form Elements">Space Management</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="spacelist.do" class="menu-link">
                    <div data-i18n="Basic Inputs">Space List</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="registerspace.do" class="menu-link">
                    <div data-i18n="Input groups">Register Space</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="spacewaiting.do" class="menu-link">
                    <div data-i18n="Basic Inputs">Reservation Waiting</div>
                  </a>
                </li>
              </ul>
            </li>
            
            <!-- RESERVATIONS 
            <li class="menu-header small text-uppercase"><span class="menu-header-text">RESERVATIONS</span></li>
            <!-- Reservation Management -->
            <li class="menu-item">
              <a href="reservelist.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="Form Elements">Reservation List</div>
              </a>
             </li>
             
             <!-- Sales
            <li class="menu-header small text-uppercase"><span class="menu-header-text">SALES</span></li>
            <!-- Reservation Management -->
            <li class="menu-item">
              <a href="sale.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="Form Elements">Sales Chart</div>
              </a>
             </li>
          </ul>
        </aside>
        <!-- / Menu -->


    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="sneat/assets/vendor/libs/jquery/jquery.js"></script>
    <script src="sneat/assets/vendor/libs/popper/popper.js"></script>
    <script src="sneat/assets/vendor/js/bootstrap.js"></script>
    <script src="sneat/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="sneat/assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->
    <script src="sneat/assets/vendor/libs/apex-charts/apexcharts.js"></script>

    <!-- Main JS -->
    <script src="sneat/assets/js/main.js"></script>

    <!-- Page JS 
    <script src="sneat/assets/js/dashboards-analytics.js"></script>

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
    
  </body>
</html>
