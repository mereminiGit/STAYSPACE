<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
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
				My Account <span class="text-muted fw-light">Settings</span>
			</h4>

			<div class="row">
				<div class="col-md-12">
					<div class="card mb-4">
						<h5 class="card-header">내 정보 수정</h5>
						<!-- Account -->
						<div class="card-body">
							<div class="d-flex align-items-start align-items-sm-center gap-4">
								<img src="sneat/assets/img/avatars/defaultimg.png"
									alt="user-avatar" class="d-block rounded" height="100"
									width="100" id="uploadedAvatar" />
								<div class="button-wrapper">
									<label for="upload" class="btn btn-secondary me-2 mb-4"
										tabindex="0"> <span class="d-none d-sm-block">이미지
											등록</span> <i class="bx bx-upload d-block d-sm-none"></i> <input
										type="file" id="upload" class="account-file-input" hidden
										accept="image/png, image/jpeg" />
									</label>
									<button type="button"
										class="btn btn-outline-secondary account-image-reset mb-4">
										<i class="bx bx-reset d-block d-sm-none"></i> <span
											class="d-none d-sm-block">초기화</span>
									</button>

									<p class="text-muted mb-0">Allowed JPG, GIF or PNG. Max
										size of 800K</p>
								</div>
							</div>
						</div>
						<hr class="my-0" />
						<div class="card-body">
							<form id="formAccountSettings" method="POST"
								onsubmit="return false">
								<div class="row">
									<div class="mb-3 col-md-6">
										<label for="password" class="form-label">PASSWORD</label> <input
											class="form-control" type="password" name="password"
											id="password" placeholder="비밀번호를 입력하세요." />
									</div>
									<div class="mb-3 col-md-6">
										<label for="checkPassword" class="form-label">CHECK
											PASSWORD</label> <input class="form-control" type="password"
											name="checkPassword" id="checkPassword"
											placeholder="비밀번호를 다시 입력하세요." />
									</div>
									<div class="mb-3 col-md-6">
										<label for="firstName" class="form-label">Name</label> <input
											type="text" class="form-control" id="firstName"
											name="firstName" placeholder="이름을 입력하세요." />
									</div>
									<div class="mb-3 col-md-6">
										<label for="email" class="form-label">E-mail</label> <input
											class="form-control" type="text" id="email" name="email"
											placeholder="john.doe@example.com" />
									</div>
									<div class="mb-3 col-md-6">
										<label class="form-label" for="phoneNumber">Phone
											Number</label>
										<div class="input-group input-group-merge">
											<input type="text" id="phoneNumber" name="phoneNumber"
												class="form-control" placeholder="010-0000-1111" />
										</div>
									</div>
									<div class="mt-2">
										<button type="submit" id="edit" class="btn btn-dark me-2">수정하기</button>
										<button type="reset" class="btn btn-outline-dark">취소하기</button>
									</div>
								</div>
							</form>

						</div>
						<!-- /Account -->
					</div>
					<div class="card">
						<h5 class="card-header">회원 탈퇴</h5>
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
										name="accountActivation" id="accountActivation" /> <label
										class="form-check-label" for="accountActivation">내 계정
										삭제에 동의합니다.</label>
								</div>
								<button type="submit" id="delete"
									class="btn btn-dark deactivate-account">탈퇴하기</button>
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
		
		//수정하기 버튼 클릭시 이벤트
		$('#edit').on('click',function(e){
			let password = $('input[name=password]').val();
			let checkPassword = $('input[name=checkPassword]').val();
			let emailFormat = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
			let email = $('input[name=email]').val();
			if(password.length<8){
				Swal.fire({
					  icon: 'error',
					  text: '비밀번호 8자리 이상 입력하세요.',
					})
				password = '';
			}else{
				if(password != checkPassword){
					Swal.fire({
						  icon: 'error',
						  text: '비밀번호가 일치하지 않습니다.',
						})
					password='';
					checkPassword='';
				}else{
					if(!emailFormat.test(email)){
			        	Swal.fire({
							  icon: 'error',
							  text: '잘못된 이메일 형식입니다.',
							})
			        	email='';
			        }else{
			        	Swal.fire({
			        		  icon: 'question',
			        		  text: '변경하시겠습니까?',
			        		  showDenyButton: true,
			        		  showCancelButton: true,
			        		  confirmButtonText: 'Yes',
			        		  denyButtonText: 'No'
			        		}).then((result) => {
			        		  /* Read more about isConfirmed, isDenied below */
			        		  if (result.isConfirmed) {
			        		    Swal.fire('', '변경되었습니다.', 'success')
			        		  } else if (result.isDenied) {
			        		    Swal.fire('', '변경 취소되었습니다.', 'info')
			        		  }
			        		})
			        }
				}
			}
			
	        
		})
		
		//회원탈퇴 동의 체크시 탈퇴
		
		$('#delete').on('click',function(e){
			let accountActivation = $('input[name=accountActivation]').is(':checked');
			console.log(accountActivation);
			if(accountActivation){
				
				Swal.fire({
					  text: "회원 탈퇴하시겠습니까?",
					  icon: 'warning',
					  showCancelButton: true,
					  confirmButtonColor: '#3085d6',
					  cancelButtonColor: '#d33',
					  confirmButtonText: 'Yes'
					}).then((result) => {
					  if (result.isConfirmed) {
					    Swal.fire(
					      '',
					      '탈퇴되었습니다.',
					      'success'
					    )
					  }
					})
			}else{
				Swal.fire({
					  icon: 'error',
					  text: '회원탈퇴 동의에 체크해주세요.',
					})
			}
		})
		
	</script>

</body>
</html>