<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

 
  <!DOCTYPE html>

  <html lang="en" class="light-style layout-menu-fixed" dir="ltr" data-theme="theme-default"
    data-assets-path="member/assets/" data-template="vertical-menu-template-free">

  <head>
    <title>Stay Space / 회원정보수정</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
   
      <div class="layout-container">
        <!-- Menu -->

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
                       <c:if test="${empty m.memberImage}">
                        <img src="image/member/기본프로필.jpg" alt="기본프로필" class="d-block rounded"
                          height="100" width="100" id="uploadedAvatar" />
                          </c:if>
                           <c:if test="${not empty m.memberImage}">
                           <img src="image/member/${m.memberImage }" alt="user-Img" class="d-block rounded"
                          height="100" width="100" id="uploadedAvatar" />
                           </c:if>
                        <div class="button-wrapper">
                          <label for="upload" class="btn btn-primary me-2 mb-4" tabindex="0">
                            <span class="d-none d-sm-block">Upload new photo</span>
                            <i class="bx bx-upload d-block d-sm-none"></i>
                            <input type="file" id="upload" class="account-file-input" hidden
                              accept="image/png, image/jpeg" />
                          </label>
                          <button type="reset" class="btn btn-outline-secondary account-image-reset mb-4">
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
                            <input class="form-control" type="text" id="Name" name="Name" value="${m.memberName }" 
                              autofocus />
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="organization" class="form-label">Password</label>
                            <input type="password" class="form-control" id="password" name="password" value="" placeholder="password" 
                              />
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="email" class="form-label">E-mail</label>
                            <input class="form-control" type="text" id="email" name="email" value="${m.memberEmail }"
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
                              <input type="tel" id="tel" name="tel" class="form-control" value="${m.memberTel }"placeholder="010-1234-4567" />
                            </div>
                          </div>
                        </div>
                        <div class="mt-2">
                          <button type="submit" class="btn btn-primary me-2" onclick="test(); editCall('${m.memberId}');">저장</button>
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
                          onclick="deleteMember('${m.memberId}');">회원 탈퇴</button>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            </div>
            </div>
            </div>
            </div>
            <!-- / Content -->

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
        if (p1.length < 10) {
          Swal.fire({ text: '비밀번호는 10자 이상이어야 합니다.' })
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
    //회원탈퇴
      function deleteMember(memberId) {

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
        }  else {
        	   Swal.fire({
        		   title: '정말로 탈퇴하시겠어요?',
        		   text: "탈퇴시 계정은 삭제되며 복구할 수 없습니다.",
        		   icon: 'warning',
        		   showCancelButton: true,
        		   confirmButtonColor: '#3085d6',
        		   cancelButtonColor: '#d33',
        		   confirmButtonText: 'Yes'
        		 }).then((result) => {
        		   if (result.isConfirmed) {
			    	   $.ajax({
			               url: "ajaxUserDelete.do?memberId="+ memberId,
			               type: "post",
			               datatype: "html",
			               success: function (data) {}
			    	   });
        		     Swal.fire(
        		       '회원 탈퇴가 완료되었습니다.',
        		       '그동안 저희 StaySpace를 이용해주셔서 감사합니다.',
        		       'success'
        		     )
        		     setTimeout(function() {
        		    	 location.href = "home.do";
						}, 2000);
        		    
        		   }
        		 })
          return true;
        } 
      }
      //회원정보수정
      function editCall(memberId){
    	  $.ajax({
              url: "ajaxMemberEdit.do?memberId="+ memberId,
              type: "post",
              data:{
            	  memberName:$("#Name").val(),
              	  memberPassword:$("#password").val(),
              	  memberEmail:$("#email").val(),
              	  memberTel:$("#tel").val()
              },
              datatype:"JSON",
              success: function (data) {
            	  Swal.fire({
            		  position: 'center',
            		  icon: 'success',
            		  title: '회원정보가 변경되었습니다.',
            		  showConfirmButton: false,
            		  timer: 1500
            		})
              }
            });
      };
      
      //회원탈퇴
      /* function deleteMember(memberId){
            	   Swal.fire({
            		   title: '정말로 탈퇴하시겠어요?',
            		   text: "탈퇴시 계정은 삭제되며 복구할 수 없습니다.",
            		   icon: 'warning',
            		   showCancelButton: true,
            		   confirmButtonColor: '#3085d6',
            		   cancelButtonColor: '#d33',
            		   confirmButtonText: 'Yes'
            		 }).then((result) => {
            		   if (result.isConfirmed) {
				    	   $.ajax({
				               url: "ajaxUserDelete.do?memberId="+ memberId,
				               type: "post",
				               datatype: "html",
				               success: function (data) {}
				    	   });
            		     Swal.fire(
            		       '회원 탈퇴가 완료되었습니다.',
            		       '그동안 저희 StaySpace를 이용해주셔서 감사합니다.',
            		       'success'
            		     )
            		   }
            		 })
                 //location.href = "/로그인창";
      } */
      
      
      
      

    </script>
  </body>

  </html>