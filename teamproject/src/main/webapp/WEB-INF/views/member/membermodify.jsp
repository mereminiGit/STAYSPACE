<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html
  lang="en"
  class="light-style layout-menu-fixed"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="member/assets/"
  data-template="vertical-menu-template-free"
>
  <head>

    <title>Basic Inputs - Forms | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>
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
          <!-- Navbar -->


          <!-- / Navbar -->

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">My Page /</span> 회원정보 수정 </h4>

              <div class="row">

                <!-- Form controls -->
              
                <!-- Input Sizing -->
        		<form action="" method="get">

                <div class="col-xl-6">
                  <!-- HTML5 Inputs -->
                  <div class="card mb-4" id="memberinfo">
                    <h5 class="card-header">회원정보</h5>
                    <div class="card-body" id="modifybox">
                      <div class="mb-3 row">
                        <label for="html5-text-input" class="col-md-2 col-form-label">Name</label>
                        <div class="col-md-10">
                          <input class="form-control" type="search" value="" placeholder="Name" id="html5-text-input" />
                        </div>
                      </div>
                      <div class="mb-3 row">
                        <label for="html5-password-input" class="col-md-2 col-form-label">Password</label>
                        <div class="col-md-10">
                          <input class="form-control" type="password" value="" placeholder="Password" id="password" />
                        </div>
                      </div>
                          <div class="mb-3 row">
                        <label for="html5-password-input" class="col-md-2 col-form-label">Password check</label>
                        <div class="col-md-10">
                          <input class="form-control" type="password" name="passwordCheck" value="" placeholder="Password" id="passwordCheck" />
                        </div>
                      </div>
                      <div class="mb-3 row">
                        <label for="html5-email-input" class="col-md-2 col-form-label">Email</label>
                        <div class="col-md-10">
                          <input class="form-control" type="email" value="" placeholder="john@example.com" id="html5-email-input" />
                        </div>
                      </div>
                      <div class="mb-3 row">
                        <label for="html5-tel-input" class="col-md-2 col-form-label">Phone</label>
                        <div class="col-md-10">
                          <input class="form-control" type="tel" value="" placeholder="010-1234-5678" id="html5-tel-input" />
                        </div>
                      </div>
                       <button type="reset" class="btn btn-outline-secondary"><strong>취소</strong></button>
                       <button type="submit" class="btn btn-outline-secondary" onclick="test()"><strong>수정</strong></button>
                    </div>
                  </div>

                  <!-- File input -->
            
                </div>
                </form>
                <!--form 끝 -->
              </div>
            </div>
            <!-- / Content -->

    <script type="text/javascript">
    
    function test() {
        var p1 = document.getElementById('password').value;
        var p2 = document.getElementById('passwordCheck').value;
        
        if(p1.length < 6) {
                alert('비밀번호는 6글자 이상이어야 합니다.');
                return false;
            }
            
            if( p1 != p2 ) {
              alert("비밀번호불일치");
              return false;
            } else{
              alert("비밀번호가 일치합니다");
              return true;
            }
      }
	</script>
  </body>
</html>
    