<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html
  lang="en"
  class="light-style layout-menu-fixed"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="../assets/"
  data-template="vertical-menu-template-free"
>
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
    />

    <title>Cards basic - UI elements | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="../assets/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet"
    />

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="member/assets/vendor/fonts/boxicons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="member/assets/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="member/assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="member/assets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="member/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="../assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../assets/js/config.js"></script>
  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->
    		<jsp:include page="../layouts/membermenu2.jsp" />
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
          <!-- Navbar -->

              <!-- Search -->
            
              <!-- /Search -->


          <!-- / Navbar -->

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">My Page /</span> 관심 목록 </h4>

              <!-- Examples -->
              <div class="row mb-5">
                <div class="col-md-6 col-lg-4 mb-3">
                  <div class="card h-100">
                    <img class="card-img-top" src="member/image/숙소2.jpg" alt="Card image cap" />
                    <div class="card-body">
                      <h5 class="card-title">Card title</h5>
                      <p class="card-text">
                        Some quick example text to build on the card title and make up the bulk of the card's content.
                      </p>
                      <a href="javascript:void(0)" class="btn btn-outline-primary">Go somewhere</a>
                    </div>
                  </div>
                </div>
                
                   <div class="col-md-6 col-lg-4 mb-3">
                  <div class="card h-100">
                    <img class="card-img-top" src="member/image/숙소2.jpg" alt="Card image cap" />
                    <div class="card-body">
                      <h5 class="card-title">Card title</h5>
                      <p class="card-text">
                        Some quick example text to build on the card title and make up the bulk of the card's content.
                      </p>
                      <a href="javascript:void(0)" class="btn btn-outline-primary">Go somewhere</a>
                    </div>
                  </div>
                </div>
                
                  <div class="col-md-6 col-lg-4 mb-3">
                  <div class="card h-100">
                    <img class="card-img-top" src="member/image/숙소3.jpg" alt="Card image cap" />
                    <div class="card-body">
                      <h5 class="card-title">소게</h5>
                      <p class="card-text">
                        잠시 기대어 쉬는 느슨한 시간
                      </p>
                      <a href="javascript:void(0)" class="btn btn-outline-primary">Go somewhere</a>
                    </div>
                  </div>
                </div>
                
                  <div class="col-md-6 col-lg-4 mb-3">
                  <div class="card h-100">
                    <img class="card-img-top" src="member/image/숙소3.jpg" alt="Card image cap" />
                    <div class="card-body">
                      <h5 class="card-title">소게</h5>
                      <p class="card-text">
                        잠시 기대어 쉬는 느슨한 시간
                      </p>
                      <a href="javascript:void(0)" class="btn btn-outline-primary">Go somewhere</a>
                    </div>
                  </div>
                </div>

                
              </div>
              
              <!-- Examples -->

              <!-- Content types -->
 
              <!--/ Content types -->

              <!-- Text alignment -->
     
              <!--/ Text alignment -->

              <!-- Images -->
             
              <!--/ Images -->

              <!-- Horizontal -->
            
              <!--/ Horizontal -->

              <!-- Style variation -->
             
              <!-- Outline -->
             
              <!--/ Style variation -->

              <!-- Card layout -->
              

              <!-- Card Groups -->
            
              <!-- Grid Card -->
              
              <!-- Masonry -->
              
              <!--/ Card layout -->
            </div>
            <!-- / Content -->

            <!-- Footer -->
          
            <!-- / Footer -->

            <div class="content-backdrop fade"></div>
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
    </div>
    <!-- / Layout wrapper -->

    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="member/assets/vendor/libs/jquery/jquery.js"></script>
    <script src="member/assets/vendor/libs/popper/popper.js"></script>
    <script src="member/assets/vendor/js/bootstrap.js"></script>
    <script src="member/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <!-- <script src="member/assets/vendor/js/menu.js"></script> -->
    <!-- endbuild -->

    <!-- Vendors JS -->
    <script src="member/assets/vendor/libs/masonry/masonry.js"></script>

    <!-- Main JS -->
    <script src="member/assets/js/main.js"></script>

    <!-- Page JS -->

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
  </body>
</html>