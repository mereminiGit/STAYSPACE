<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>

  <html lang="en" class="light-style layout-menu-fixed" dir="ltr" data-theme="theme-default"
    data-assets-path="member/assets/" data-template="vertical-menu-template-free">

  <head>
    <meta charset="utf-8" />
    <meta name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

    <title>Stay Space / 회원정보수정</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>



    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="member/assets/img/favicon/favicon.ico" />

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
    <link rel="stylesheet" href="member/assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="member/assets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="member/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="member/assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="member/assets/js/config.js"></script>
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

          <!-- / Navbar -->

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">My Page /</span> 회원정보 수정</h4>

              <div class="row">
                <div class="col-md-12">
                  <div class="card mb-4">
                    <h5 class="card-header">Profile</h5>
                    <!-- Account -->
                    <div class="card-body">
                      <div class="d-flex align-items-start align-items-sm-center gap-4">
                        <img src="member/assets/img/avatars/1.png" alt="user-avatar" class="d-block rounded"
                          height="100" width="100" id="uploadedAvatar" />
                        <div class="button-wrapper">
                          <label for="upload" class="btn btn-primary me-2 mb-4" tabindex="0">
                            <span class="d-none d-sm-block">Upload new photo</span>
                            <i class="bx bx-upload d-block d-sm-none"></i>
                            <input type="file" id="upload" class="account-file-input" hidden
                              accept="image/png, image/jpeg" />
                          </label>
                          <button type="button" class="btn btn-outline-secondary account-image-reset mb-4">
                            <i class="bx bx-reset d-block d-sm-none"></i>
                            <span class="d-none d-sm-block">Reset</span>
                          </button>

                          <p class="text-muted mb-0">Allowed JPG, GIF or PNG. Max size of 800K</p>
                        </div>
                      </div>
                    </div>
                    <hr class="my-0" />
                    <div class="card-body">
                      <form id="formAccountSettings" method="POST" onsubmit="return false">
                        <div class="row">
                          <div class="mb-3 col-md-6">
                            <label for="firstName" class="form-label">Name</label>
                            <input class="form-control" type="text" id="Name" name="Name" value="" placeholder="Name"
                              autofocus />
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="organization" class="form-label">Password</label>
                            <input type="password" class="form-control" id="password" name="password" value=""
                              placeholder="password" />
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="email" class="form-label">E-mail</label>
                            <input class="form-control" type="text" id="email" name="email" value=""
                              placeholder="john.doe@example.com" />
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="organization" class="form-label">Password Check</label>
                            <input type="password" class="form-control" id="passwordcheck" name="passwordcheck" value=""
                              placeholder="password" />
                          </div>
                          <div class="mb-3 col-md-6">
                            <label class="form-label" for="phoneNumber">Phone Number</label>
                            <div class="input-group input-group-merge">
                              <input type="tel" id="tel" name="tel" class="form-control" placeholder="010-1234-4567" />
                            </div>
                          </div>
                        </div>
                        <div class="mt-2">
                          <button type="submit" class="btn btn-primary me-2" onclick="test()">저장</button>
                          <button type="reset" class="btn btn-outline-secondary">취소</button>
                        </div>
                      </form>
                    </div>
                    <!-- /Account -->
                  </div>
                  <div class="card">
                    <h5 class="card-header">회원 탈퇴</h5>
                    <div class="card-body">
                      <div class="mb-3 col-12 mb-0">
                        <div class="alert alert-warning" id="alertwarning">
                          <h6 class="alert-heading fw-bold mb-1">정말로 탈퇴하시겠습니까?</h6>
                          <br>
                          <p class="mb-0">탈퇴시 계정을 복구할 수 없습니다.</p>
                        </div>
                      </div>
                      <form id="formAccountDeactivation" onsubmit="return false">
                        <div class="form-check mb-3">
                          <input class="form-check-input" type="checkbox" name="chkSelect" id="accountActivation" />
                          <label class="form-check-label" for="accountActivation">회원 탈퇴에 동의합니다.</label>
                        </div>
                        <button type="submit" id="delete" class="btn btn-danger deactivate-account"
                          onclick="checkTest()">회원 탈퇴</button>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
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

    <script src="member/assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->

    <!-- Main JS -->
    <script src="member/assets/js/main.js"></script>

    <!-- Page JS -->
    <script src="member/assets/js/pages-account-settings-account.js"></script>

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
    <script type="text/javascript">


      var regEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
      function test() {

        if (document.getElementById("Name").value == "") {
          Swal.fire({
            icon: 'error',
            text: 'name을 입력하세요!'
          })
          return false;

        } else if (document.getElementById("password").value == "") {
          Swal.fire({
            icon: 'error',
            text: 'password를 입력하세요!'
          })
          return false;
        } else if (document.getElementById("passwordcheck").value == "") {
          Swal.fire({
            icon: 'error',
            text: 'password check를 입력하세요!'
          })
          return false;
        } else if (!regEmail.test(document.getElementById("email").value)) {
          Swal.fire({
            icon: 'error',
            text: 'email을 형식에 맞게 입력하세요! ex) june@example.com'
          })
          return false;

        } else if (document.getElementById("email").value == "") {
          Swal.fire({
            icon: 'error',
            text: 'email을 입력하세요! ex) june@example.com'
          })
          return false;

        }
        else if (document.getElementById("tel").value == "") {
          Swal.fire({
            icon: 'error',
            text: 'tel을 입력하세요!'
          })
          return false;
        }

        var p1 = document.getElementById('password').value;
        var p2 = document.getElementById('passwordcheck').value;
        if (p1.length < 8) {
          Swal.fire({ text: '비밀번호는 8자 이상이어야 합니다.' })
          return false;
        }

        if (p1 != p2) {
          Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: '비밀번호가 일치하지 않습니다.',
          })
          return false;
        } else {
          return true;
        }
      }

    </script>
    <script>
      function checkTest() {

        var chk = $('input[name=chkSelect]:checked').length;

        if (chk == 0) {
          //체크박스 선택안함
          /* alert("회원 탈퇴 동의 해주세요."); */
          Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: '회원 탈퇴에 동의 해주세요!',
          })
          return false;
        } else {
          Swal.fire({
            title: '정말로 탈퇴하시겠어요?',
            text: "탈퇴시 계정은 삭제되며 복구할 수 없습니다",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!'
          }).then((result) => {
            if (result.isConfirmed) {
              Swal.fire(
                'Deleted!',
                '계정이 탈퇴되었습니다.',
                'success'
              )
            }
          })
          return true;
        }
      }
      /*    // 이메일 input value
            var email = document.getElementById('email').value;
      
            // 이메일에 값이 있으면
            if(email) {
                var regEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
                if (!regEmail.test(email)) {
                    alert('이메일 형식에 맞춰주세요.');
                    return false;
                }
            } */
    </script>
  </body>

  </html>