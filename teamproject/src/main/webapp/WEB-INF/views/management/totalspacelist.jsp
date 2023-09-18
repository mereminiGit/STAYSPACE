<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="sneat/assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="sneat/assets/js/config.js"></script>
    <style>
    img#stayimg{
    	width: 200px;
    	heigth: 120px;
    	border-radius: 10px;
    }
    </style>
</head>
<body>
<!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Space </span> Management</h4>
              <!-- Hoverable Table rows -->
              <div class="card">
                <h5 class="card-header">전체 대여공간 목록</h5>
                <div class="table-responsive text-nowrap">
                  <table class="table table-hover">
                    <thead>
                      <tr>
                      	<th>Space Img</th>
                        <th>Name</th>
                        <th>City</th>
                        <th>Address</th>
                        <th>Price</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody class="table-border-bottom-0">
                    <!-- 1번 공간 -->
                      <tr>
                      	<td><img id="stayimg" src="sneat/assets/img/avatars/stayimg1.jpg" alt="space1"></td>
                        <td><i class="fab fa-angular fa-lg text-danger me-3"></i> <strong>촬영 스튜디오</strong></td>
                        <td>서울</td>
                        <td>서울시 강동구 ...</td>
                        <td>50000</td>
                        <td>
                          <div class="dropdown">
                            <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                              <i class="bx bx-dots-vertical-rounded"></i>
                            </button>
                            <div class="dropdown-menu">
                              <a class="dropdown-item" href="javascript:void(0);"
                                ><i class="bx bx-edit-alt me-1"></i> 수정</a
                              >
                              <a class="dropdown-item" href="javascript:void(0);"
                                ><i class="bx bx-trash me-1"></i> 삭제</a
                              >
                            </div>
                          </div>
                        </td>
                      </tr>
                      <!-- 2번 공간 -->
                      <tr>
                        <td><img id="stayimg" src="sneat/assets/img/avatars/stayimg1.jpg" alt="space1"></td>
                        <td><i class="fab fa-angular fa-lg text-danger me-3"></i> <strong>촬영 스튜디오</strong></td>
                        <td>서울</td>
                        <td>서울시 강동구 ...</td>
                        <td>50000</td>
                        <td>
                          <div class="dropdown">
                            <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                              <i class="bx bx-dots-vertical-rounded"></i>
                            </button>
                            <div class="dropdown-menu">
                              <a class="dropdown-item" href="javascript:void(0);"
                                ><i class="bx bx-edit-alt me-1"></i> 수정</a
                              >
                              <a class="dropdown-item" href="javascript:void(0);"
                                ><i class="bx bx-trash me-1"></i> 삭제</a
                              >
                            </div>
                          </div>
                        </td>
                      </tr>
                      <!-- 3번 공간 -->
                      <tr>
                        <td><img id="stayimg" src="sneat/assets/img/avatars/stayimg1.jpg" alt="space1"></td>
                        <td><i class="fab fa-angular fa-lg text-danger me-3"></i> <strong>촬영 스튜디오</strong></td>
                        <td>서울</td>
                        <td>서울시 강동구 ...</td>
                        <td>50000</td>
                        <td>
                          <div class="dropdown">
                            <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                              <i class="bx bx-dots-vertical-rounded"></i>
                            </button>
                            <div class="dropdown-menu">
                              <a class="dropdown-item" href="javascript:void(0);"
                                ><i class="bx bx-edit-alt me-1"></i> 수정</a
                              >
                              <a class="dropdown-item" href="javascript:void(0);"
                                ><i class="bx bx-trash me-1"></i> 삭제</a
                              >
                            </div>
                          </div>
                        </td>
                      </tr>
                      <!-- 4번 공간 -->
                      <tr>
                        <td><img id="stayimg" src="sneat/assets/img/avatars/stayimg1.jpg" alt="space1"></td>
                        <td><i class="fab fa-angular fa-lg text-danger me-3"></i> <strong>촬영 스튜디오</strong></td>
                        <td>서울</td>
                        <td>서울시 강동구 ...</td>
                        <td>50000</td>
                        <td>
                          <div class="dropdown">
                            <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                              <i class="bx bx-dots-vertical-rounded"></i>
                            </button>
                            <div class="dropdown-menu">
                              <a class="dropdown-item" href="javascript:void(0);"
                                ><i class="bx bx-edit-alt me-1"></i> 수정</a
                              >
                              <a class="dropdown-item" href="javascript:void(0);"
                                ><i class="bx bx-trash me-1"></i> 삭제</a
                              >
                            </div>
                          </div>
                        </td>
                      </tr>
                    </tbody>
                    <caption style="padding-left: 20px"><b>Total: </b>(Seoul: ,Busan: ,Daegu: )</caption>
                  </table>
                </div>
              </div>
              <!--/ Hoverable Table rows -->
              
              </div>
              </div>
              
              <!-- build:js assets/vendor/js/core.js -->
    <script src="sneat/assets/vendor/libs/jquery/jquery.js"></script>
    <script src="sneat/assets/vendor/libs/popper/popper.js"></script>
    <script src="sneat/assets/vendor/js/bootstrap.js"></script>
    <script src="sneat/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="sneat/assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->

    <!-- Main JS -->
    <script src="sneat/assets/js/main.js"></script>

    <!-- Page JS -->

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
</body>
</html>