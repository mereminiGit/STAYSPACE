<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<!-- beautify ignore:start -->
<html lang="en" class="light-style layout-menu-fixed" dir="ltr"
	data-theme="theme-default" data-assets-path="sneat/assets/"
	data-template="vertical-menu-template-free">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />


<meta name="description" content="" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>

<!-- 모달 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>


</head>

<body>
	<!-- Content wrapper -->
	<div class="content-wrapper">
		<!-- Content -->

		<div class="container-xxl flex-grow-1 container-p-y">
			<h4 class="fw-bold py-3 mb-4">
				Admin Account <span class="text-muted fw-light">Settings</span>
			</h4>

			<div class="row">
				<div class="col-md-12">
					<div class="card mb-4">
						<h5 class="card-header">My Account Settings</h5>
							<!-- Account -->
							<div class="card-body">
								<div
									class="d-flex align-items-start align-items-sm-center gap-4">
									<c:if test="${empty m.memberImage}">
										<img src="image/member/기본프로필.jpg" alt="기본프로필"
											class="d-block rounded" height="100" width="100"
											id="uploadedAvatar" />
									</c:if>
									<c:if test="${not empty m.memberImage}">
										<img src="image/member/${m.memberImage }" alt="user-Img"
											class="d-block rounded" height="100" width="100"
											id="uploadedAvatar" />
									</c:if>
									<!-- <div class="button-wrapper">
										<label for="upload" class="btn btn-secondary me-2 mb-4"
											tabindex="0"> <span class="d-none d-sm-block">이미지
												등록</span> <i class="bx bx-upload d-block d-sm-none"></i> <input
											type="file" name="imgfile" id="formFile"
											class="account-file-input" hidden
											accept="image/png, image/jpeg" multiple />
										</label>
										<button type="button"
											class="btn btn-outline-secondary account-image-reset mb-4">
											<i class="bx bx-reset d-block d-sm-none"></i> <span
												class="d-none d-sm-block">초기화</span>
										</button>

										<p class="text-muted mb-0">Allowed JPG, GIF or PNG. Max
											size of 800K</p>
									</div>  -->
								</div>
							</div>
							<hr class="my-0" />
							<div class="card-body">
								<div class="row">
									<div class="mb-3 col-md-6">
										<label for="Id" class="form-label">ID</label> <input
											type="text" id="id" class="form-control" name="memberId"
											value="${m.memberId }" readonly />
									</div>
									<div class="mb-3 col-md-6">
										<label for="password" class="form-label">PASSWORD</label> <input
											class="form-control" type="password" name="password"
											id="password" placeholder="비밀번호를 입력하세요." />
									</div>
									<div class="mb-3 col-md-6">
										<label for="checkPassword" class="form-label">CHECK
											PASSWORD</label> <input class="form-control" type="password"
											name="passwordcheck" id="passwordcheck"
											placeholder="비밀번호를 다시 입력하세요." />
									</div>
									<div class="mb-3 col-md-6">
										<label for="firstName" class="form-label">Name</label> <input
											type="text" class="form-control" id="Name" name="Name"
											value="${m.memberName }" />
									</div>
									<div class="mb-3 col-md-6">
										<label for="email" class="form-label">E-mail</label> <input
											class="form-control" type="text" id="email" name="email"
											value="${m.memberEmail }" />
									</div>
									<div class="mb-3 col-md-6">
										<label class="form-label" for="phoneNumber">Phone
											Number</label>
										<div class="input-group input-group-merge">
											<input type="text" id="tel" name="tel"
												class="form-control" value="${m.memberTel }" />
										</div>
									</div>
									<div class="mt-2">
										<button type="submit" id="edit" class="btn btn-dark me-2" onclick="editMember('${m.memberId}');">수정하기</button>
										<button type="reset" class="btn btn-outline-dark">취소하기</button>
									</div>
								</div>
							</div>
						<!-- /Account -->
					</div>
					<div class="card">
						<h5 class="card-header">My Account Delete</h5>
						<div class="card-body">
							<div class="mb-3 col-12 mb-0">
								<div class="alert alert-warning"
									style="background-color: #eee; width: 80%; border-radius: 10px">
									<br>
									<h6 class="alert-heading fw-bold mb-1"
										style="color: rgba(0, 0, 0, 0.6)">※ 정말로 계정을 삭제하시겠습니까?</h6>
									<br>
									<p class="mb-0" style="color: #aaa">&nbsp;계정을 삭제하면 되돌릴 수
										없습니다.</p>
									<br>
								</div>
							</div>
							<form id="formAccountDeactivation" onsubmit="return false">
								<div class="form-check mb-3">
									<input class="form-check-input" type="checkbox"
										name="chkSelect" id="accountActivation" /> <label
										class="form-check-label" for="accountActivation">내 계정
										삭제에 동의합니다.</label>
								</div>
								<button type="submit" id="delete"
									class="btn btn-dark deactivate-account" onclick="deleteMember('${m.memberId}')">탈퇴하기</button>
							</form>
						</div>
					</div>
					<!-- Modal 1-
					<div class="modal fade" id="modalToggle"
						aria-labelledby="modalToggleLabel" tabindex="-1"
						style="display: none" aria-hidden="true">
						<div class="modal-dialog modal-dialog-centered">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="modalToggleLabel"></h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>
								<div class="modal-body" align="center">정상적으로 회원 탈퇴되었습니다.</div>
								<div class="modal-footer">
									<button class="btn btn-secondary"
										data-bs-target="#modalToggle2" data-bs-toggle="modal"
										data-bs-dismiss="modal">확인</button>
								</div>
							</div>
						</div>
					</div>-->
				</div>
			</div>
		</div>
		<!-- / Content -->
	</div>
	<script>
		
	 var regEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
	 
     
     function test() {
    	 var p1 = document.getElementById('password').value;
         var p2 = document.getElementById('passwordcheck').value;
         
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

       
       else if (p1.length < 10) {
         Swal.fire({ text: '비밀번호는 10자 이상이어야 합니다.' })
         return false;
       }

       else if (p1 != p2) {
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
		
		//회원탈퇴 동의 체크시 탈퇴
		
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
      function editMember(memberId){
    	  test();
    	  if(test()){
    		  $.ajax({
	              url: "AjaxAdminEdit.do?memberId="+ memberId,
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
	            		  text: '회원정보가 변경되었습니다.',
	            		  showConfirmButton: true,
	            		  timer: 1500
	            		})
	            		$('#password').val('');
	            	  	$('#passwordcheck').val('');
	              }
	            });
    	  }
      };
	</script>
	<script type="text/javascript"
		src="member/assets/js/pages-account-settings-account.js">
	
	</script>

</body>
</html>