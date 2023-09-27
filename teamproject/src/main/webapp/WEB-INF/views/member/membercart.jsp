<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

      <!DOCTYPE html>
      <html lang="en" class="light-style layout-menu-fixed" dir="ltr" data-theme="theme-default"
        data-assets-path="../assets/" data-template="vertical-menu-template-free">

      <head>
        <meta charset="utf-8" />
        <meta name="viewport"
          content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

        <title>Stay Space / 관심 목록</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

        <meta name="description" content="" />

        <!-- Favicon -->
        <link rel="icon" type="image/x-icon" href="../assets/img/favicon/favicon.ico" />

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
          href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
          rel="stylesheet" />

        <!-- Icons. Uncomment required icon fonts -->
        <link rel="stylesheet" href="member/assets/vendor/fonts/boxicons.css" />

        <!-- Core CSS -->
        <link rel="stylesheet" href="member/assets/vendor/css/core.css" class="template-customizer-core-css" />
        <link rel="stylesheet" href="member/assets/vendor/css/theme-default.css"
          class="template-customizer-theme-css" />
        <link rel="stylesheet" href="member/assets/css/demo.css" />

        <!-- Vendors CSS -->
        <link rel="stylesheet" href="member/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

        <!-- Page CSS -->

        <!-- Helpers -->
        <script src="member/assets/vendor/js/helpers.js"></script>

        <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
        <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
        <script src="member/assets/js/config.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

        <style>
          #nowish {
            font-size: 30px;
            text-align: center;
            margin-top: 20%;
          }
        </style>
      </head>

      <body>
        <!-- Layout wrapper -->
        <div class="layout-wrapper layout-content-navbar">
          <div class="layout-container">
            <!-- Menu -->
            <%-- <jsp:include page="./membermenu.jsp" /> --%>
            <!-- / Menu -->

            <!-- Layout container -->
            <div class="layout-page">
           

              <!-- Content wrapper -->
              <div class="content-wrapper">
                <!-- Content -->

                <div class="container-xxl flex-grow-1 container-p-y">
                  <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">My Page /</span> 관심 목록 </h4>

                  <!-- Examples -->
                  <form id="frm" action="shopdetail.do" method="post" enctype="form-data">
                    <div class="row mb-5">
                      <c:choose>
                        <c:when test="${empty wishList }">
                          <p id="nowish">Wish List가 비어있습니다.</p>
                        </c:when>
                        <c:otherwise>
                          <c:forEach items="${wishList}" var="w">
                            <div class="col-md-6 col-lg-4 mb-3" class="cartlist" id="cartid_${w.wishListId}">
                              <input type="hidden" id="memberId" name="memberId" value="jiwon">
                              <input type="hidden" id="spaceId" name="spaceId" value="${w.spaceId}">
                              <input type="hidden" id="wishListId" name="wishListId" value="${w.wishListId}">
                              <div class="card h-100">
                                <img class="card-img-top" src="image/space/${w.spaceImage }" alt="Card image cap" />
                                <div class="card-body">
                                  <h5 class="card-title">${w.spaceName }</h5>
                                  <p class="card-text">
                                    <!--숙소 콘텐트있던곳-->
                                    <br>
                                    예약 날짜 : ${w.wishListStartDate }
                                    <br>
                                    <br>
                                    가격 :
                                    <fmt:formatNumber value="${w.spacePrice }" type="currency" currencySymbol="￦" />
                                  </p>
                                  <!-- <a href="javascript:void(0)" class="btn btn-outline-primary">Detailed page</a> -->
                                  <button type="button" class="btn btn-outline-secondary"
                                    onclick="detailCall()">Detailed page</button>
                                  <button type="button" class="btn btn-outline-danger" id="dangerBtn"
                                    onclick="deleteCall('${w.memberId }',${w.wishListId})">Delete</button>
                                </div>
                              </div>
                            </div>
                          </c:forEach>
                        </c:otherwise>
                      </c:choose>
                    </div>
                  </form>

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
        <script>
          //삭제 onclick
          function deleteCall(memberId, wishListId) {
            Swal.fire({
              title: '관심 상품을 삭제하시겠습니까?',
              text: "상품 변경을 원할시 삭제 후 다시 담아주세요.",
              icon: 'warning',
              showCancelButton: true,
              confirmButtonColor: '#3085d6',
              cancelButtonColor: '#d33',
              confirmButtonText: 'Yes'
            }).then((result) => {
              if (result.isConfirmed) {
                $.ajax({
                  url: "ajaxWishListDelete.do?wishListId=" + wishListId + "&memberId=" + memberId,
                  type: "post",
                  datatype: "html",
                  success: function (data) {
                    $("#cartid_" + wishListId).detach();
                  }
                });
                Swal.fire(
                  '삭제되었습니다.',
                )
              }
            })
          };
          //detailPage연결
          function detailCall() {
            document.getElementById("frm").submit();
            // $.ajax({
            //   url: "shopdetail.do?spaceId=" + spaceId,
            //   type: "get",
            //   datatype: "html",
            //   success: function (data) {
            //     alert("연결성공");
            //     location.href = 'shopdetail.do'
            //   }
            // });
          }

        </script>
      </body>

      </html>