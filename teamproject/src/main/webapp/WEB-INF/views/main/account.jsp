<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>Insert title here</title>
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
			<style type="text/css">
				.swal2-title {
					font-family: 'Noto Sans KR', sans-serif;
					font-weight: 600;
				}

				#pwBtn {
					margin: auto;
					display: block;
				}

				#idBtn {
					margin: auto;
					display: block;
				}
				#telcheck {
					margin: auto;
					display: block;
				}
			</style>
		</head>

		<body>
			<section class="hero-section jarallax d-flex align-items-center justify-content-center padding-medium pb-5"
				style="background: url(vaso-html/images/hero-img.jpg) no-repeat;">
				<div class="hero-content">
					<div class="container">
						<div class="row">
							<div class="text-center padding-large no-padding-bottom">
								<h1>Account</h1>
								<div class="breadcrumbs">
									<span class="item"> <a href="index.html">Home ></a>
									</span> <span class="item">Account</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<section class="login-tabs padding-large" style="padding-bottom: 0">
				<div class="container">
					<div class="row">
						<div class="tabs-listing">
							<!-- nav -->
							<nav>
								<div class="nav nav-tabs d-flex justify-content-center" id="nav-tab" role="tablist">
									<!-- Sign -->
									<button class="nav-link text-uppercase active" id="nav-sign-in-tab"
										data-bs-toggle="tab" data-bs-target="#nav-sign-in" type="button" role="tab"
										aria-controls="nav-sign-in" aria-selected="true">Sign
										In</button>
									<!-- Register -->
									<button class="nav-link text-uppercase" id="nav-register-tab" data-bs-toggle="tab"
										data-bs-target="#nav-register" type="button" role="tab"
										aria-controls="nav-register" aria-selected="false">Register</button>
									<!-- Register -->
								</div>
							</nav>

							<div class="tab-content" id="nav-tabContent">
								<!-- 로그인 -->
								<div class="tab-pane fade active show" id="nav-sign-in" role="tabpanel"
									aria-labelledby="nav-sign-in-tab">
									<form action="memberlogin.do" method="post">
										<div class="form-group py-3">
											<label for="loginId">User id *</label> <input type="text" minlength="2"
												name="loginId" placeholder="Your UserId" class="w-100" required>
										</div>
										<div class="form-group py-3">
											<label for="loginPassword">Password *</label> <input type="password"
												minlength="2" name="loginPassword" placeholder="Your Password"
												class="w-100" required>
										</div>
										<label class="py-3">
											<!-- 아이디 찾기 -->
											<span class="label-body">
												<a type="button" data-bs-toggle="modal" data-bs-target="#forgotIdModal"
													class="fw-bold">Forgot ID</a>
											</span>
											<span>&nbsp; | &nbsp;</span>
											<!-- 비밀번호 찾기 -->
											<span class="label-body">
												<a type="button" data-bs-toggle="modal" data-bs-target="#forgotPwModal"
													class="fw-bold">Forgot Password</a>
											</span>
										</label>
										<button type="submit" name="submit"
											class="btn btn-dark w-100 my-3">Login</button>
									</form>
								</div>

								<!-- 회원가입 -->
								<div class="tab-pane fade" id="nav-register" role="tabpanel"
									aria-labelledby="nav-register-tab">
									<form action="memberregister.do" method="post" id="registerJoin"
										onsubmit="return formcheck()">
										<div class="form-group py-3">
											<label for="register">ID *</label> &nbsp;&nbsp;&nbsp;&nbsp;
											<button type="button" class="btn btn-primary" id="idcheck"
												onclick="memberIdCheck()" value="No"
												style="padding: 10px 15px 10px 15px; border-radius: 30px;">중복</button>
											<input type="text" minlength="2" id="registerId" name="registerId"
												placeholder="Your Id" class="w-100" required>
										</div>
										<div class="form-group py-3">
											<label for="register">Password *</label> <input type="password"
												minlength="2" name="registerPassword" placeholder="Your Password"
												class="w-100" required>
										</div>
										<div class="form-group py-3">
											<label for="register">name *</label> <input type="text" minlength="2"
												name="registerName" placeholder="Your Name" class="w-100" required>
										</div>
										<div class="form-group py-3">
											<label for="register">email *</label> <input type="email" minlength="2"
												name="registerEmail" placeholder="Your Email Address" class="w-100"
												required>
										</div>
										<div class="form-group py-3">
											<label for="register">phone *</label>&nbsp;&nbsp;
											<span class="label-body">
												<a type="button" data-bs-toggle="modal" data-bs-target="#CheckTelModal"
													class="fw-bold" id="CheckTel" data-value="No">Check Phone number</a>
											</span>
											<input type="text" minlength="2" name="registerTel"
												placeholder="Your Phone Number" class="w-100" required>
										</div>
										<label class="py-3"> <input type="checkbox" name="registerCheck"
												class="d-inline">
											<span class="label-body">&nbsp;Do you want to sign up as a 'host'?</span>
										</label>
										<button type="submit" name="registersubmit"
											class="btn btn-dark w-100 my-3">Register</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- 전화번호 인증 모달 -->
				<div class="modal fade" id="CheckTelModal" tabindex="-1" role="dialog" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">

							<!-- Modal Header -->
							<div class="modal-header">
								<h4 class="modal-title">Check phone</h4>
								<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
							</div>

							<!-- Modal body -->
							<div class="modal-body">
								<div class="form-group py-3">
									<label for="checkNumber">Certification Number *</label>
									<button type="button" class="btn btn-primary" id="phonecheckbtn"
											onclick="phoneNumberCheck()" value="No"
											style="padding: 10px 15px 10px 15px; border-radius: 30px;">인증번호 발송</button>
									<input type="text" minlength="2" name="checkNumber" id="checkNumber"
										placeholder="Certification Number" class="w-100" required>
								</div>
							</div>
							<!-- Modal footer -->
							<div class="modal-footer">
								<button type="button" class="btn btn-primary" id="telcheck" onclick="certificationCheck()"
									value="No">submit</button>
							</div>
						</div>
					</div>
				</div>

				<!-- 아이디 찾기 모달 -->
				<form id="findId" action="findid.do" method="post">
					<div class="modal fade" id="forgotIdModal" tabindex="-1" role="dialog" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">

								<!-- Modal Header -->
								<div class="modal-header">
									<h4 class="modal-title">Find ID</h4>
									<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
								</div>

								<!-- Modal body -->
								<div class="modal-body">
									<div class="form-group py-3">
										<label for="findIdName">User name *</label>
										<input type="text" minlength="2" name="findIdName" id="findIdName"
											placeholder="Your Username" class="w-100" required>
									</div>
									<div class="form-group py-3">
										<label for="findIdEmail">Email address *</label>
										<input type="email" minlength="2" name="findIdEmail" id="findIdEmail"
											placeholder="Your Useremail" class="w-100" required>
									</div>
								</div>
								<!-- Modal footer -->
								<div class="modal-footer">
									<button type="submit" class="btn btn-primary" id="idBtn">submit</button>
								</div>
							</div>
						</div>
					</div>
				</form>

				<!-- 비밀번호 찾기 모달 -->
				<form id="findPassword" action="findpassword.do" method="post">
					<div class="modal fade" id="forgotPwModal" tabindex="-1" role="dialog" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">

								<!-- Modal Header -->
								<div class="modal-header">
									<h4 class="modal-title">Find Password</h4>
									<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
								</div>

								<!-- Modal body -->
								<div class="modal-body">
									<div class="form-group py-3">
										<label for="findPwId">User Id *</label>
										<input type="text" minlength="2" name="findPwId" id="findPwId"
											placeholder="Your Userid" class="w-100" required>
									</div>
									<div class="form-group py-3">
										<label for="findPwEmail">Email address *</label>
										<input type="email" minlength="2" name="findPwEmail" id="findPwEmail"
											placeholder="Your Useremail" class="w-100" required>
									</div>
								</div>
								<!-- Modal footer -->
								<div class="modal-footer">
									<button type="submit" class="btn btn-primary" id="pwBtn">submit</button>
								</div>
							</div>
						</div>
					</div>
				</form>

				<!-- 회원가입을 진행한 후 -->
				<c:if test="${not empty messageJoin }">
					<div id="${messageJoin }"></div>
				</c:if>

				<!-- 로그인 진행한 후 -->
				<c:if test="${not empty messageLogin }">
					<div id="${messageLogin }"></div>
				</c:if>

				<!-- 아이디 찾기 진행 후 -->
				<c:if test="${not empty findIdmessage }">
					<div id="${findIdmessage }"></div>
				</c:if>

				<!-- 비밀번호 찾기 진행 후 -->
				<c:if test="${not empty findPwmessage }">
					<div id="${findPwmessage }"></div>
				</c:if>

			</section>
			<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
			<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.28/dist/sweetalert2.all.min.js"></script>
			<script type="text/javascript">
				// 아이디 찾기 모달 이벤트(알람창) 	
				if ($('#findIdSuccess').length) {
					Swal.fire({
						title: '아이디 찾기',
						text: "이메일을 확인해주세요",
						icon: 'success',
						confirmButtonColor: '#87826E',
						confirmButtonText: 'OK',
					}).then(function () {
						location.href = 'account.do';
					});
				}
				// 아이디 찾기 모달 이벤트 실패(알람창) 	
				if ($('#findIdFail').length) {
					Swal.fire({
						title: '아이디 찾기',
						text: "존재하지 않는 사용자입니다",
						icon: 'error',
						confirmButtonColor: '#87826E',
						confirmButtonText: 'OK',
					}).then(function () {
						location.href = 'account.do';
					});
				}

				/* $('#findId').on('submit', function () {
					event.preventDefault(); // Prevent the page from redirecting
					Swal.fire({
						title: '아이디 전송',
						text: "이메일을 확인해주세요",
						icon: 'success',
						confirmButtonColor: '#87826E',
						confirmButtonText: 'OK',
					}).then(function () {
						location.reload();
					});
				}); */

				//  비밀번호 찾기 모달 이벤트(알람창)
				if ($('#findPwSuccess').length) {
					Swal.fire({
						title: '비밀번호 초기화',
						text: "이메일을 확인해주세요",
						icon: 'success',
						confirmButtonColor: '#87826E',
						confirmButtonText: 'OK',
					}).then(function () {
						location.href = 'account.do';
					});
				}
				// 비밀번호 찾기 모달 이벤트 실패(알람창) 	
				if ($('#findPwFail').length) {
					Swal.fire({
						title: '비밀번호 초기화',
						text: "존재하지 않는 사용자입니다",
						icon: 'error',
						confirmButtonColor: '#87826E',
						confirmButtonText: 'OK',
					}).then(function () {
						location.href = 'account.do';
					});
				}

				// $('#findPassword').on('submit', function () {
				// 	/* alert("초기화된 비밀번호가 이메일로 전송되었습니다!"); */
				// 	/* swal("비밀번호 초기화","이메일을 확인해주세요", "suc"); */
				// 	event.preventDefault(); // Prevent the page from redirecting
				// 	Swal.fire({
				// 		title: '비밀번호 초기화',
				// 		text: "이메일을 확인해주세요",
				// 		icon: 'success',
				// 		confirmButtonColor: '#87826E',
				// 		confirmButtonText: 'OK',
				// 	})
				// 		.then(function () {
				// 			location.reload();
				// 		});
				// }); 


				/* 회원가입 알람 (성공)*/
				if ($('#successJoin').length) {
					/* $('#registerJoin').on('submit', function () { */
					/* let joinEvent = event.preventDefault(); */
					Swal.fire({
						title: '회원가입',
						text: "회원가입을 축하합니다",
						icon: 'success',
						confirmButtonColor: '#87826E',
						confirmButtonText: 'OK',
					})
						.then(function () {
							location.href = 'account.do';
						});
					/* .then(function () {
						// 다시 폼 실행
						$('#registerJoin').submit();
					}); */
					/* }) */
				}

				/* 회원가입 알람 (실패)*/
				if ($('#failJoin').length) {
					/* $('#registerJoin').on('submit', function () {
						let joinEvent = event.preventDefault(); */
					Swal.fire({
						title: '회원가입',
						text: "이미 존재하는 이메일입니다",
						icon: 'error',
						confirmButtonColor: '#87826E',
						confirmButtonText: 'OK',
					})
						.then(function () {
							location.href = 'account.do';
						});
					/* .then(function () {
						// 다시 폼 실행
						$('#registerJoin').submit();
					}); */
					/* }) */
				}

				/* 로그인 알람 (성공)*/
				if ($('#successLogin').length) {
					Swal.fire({
						title: '로그인',
						text: "${memberName } 환영합니다",
						icon: 'success',
						confirmButtonColor: '#87826E',
						confirmButtonText: 'OK',
					})
						.then(function () {
							location.href = 'home.do';
						});
				}

				/* 로그인 알람 (실패)*/
				if ($('#failLogin').length) {
					Swal.fire({
						title: '로그인',
						text: "아이디 또는 비밀번호가 일치하지 않습니다",
						icon: 'error',
						confirmButtonColor: '#87826E',
						confirmButtonText: 'OK',
					})
						.then(function () {
							location.href = 'account.do';
						});
				}

			</script>

			<!-- 전화번호 인증 -->
			<script>
				let checkNum = '';
				// 인증번호 발송 버튼 클릭
				function phoneNumberCheck() {
					// 전화번호가 입력되지 않았을 때
 					if (!($('input[name = registerTel]').val())) {
						Swal.fire({
							title: '전화번호 입력',
							text: "전화번호를 입력하세요",
							icon: 'warning',
							confirmButtonColor: '#87826E',
							confirmButtonText: 'OK',
						})
						.then(function () {
							$('#CheckTelModal').modal('hide');
							$('input[id = CheckTel]').focus();
						});
					} else {
						Swal.fire({
							title: '인증번호 입력',
							text: "인증번호를 입력하세요",
							icon: 'success',
							confirmButtonColor: '#87826E',
							confirmButtonText: 'OK',
						})
						.then(function () {
							$('#phonecheckbtn').attr('disabled', 'true');
							//aJax 사용
							let url = "checkphonenum.do";
							let tel = $('input[name = registerTel]').val();
							url = url + "?phoneNum=" + tel;
		
							fetch(url)
								.then(response => response.text())	// response 객체에 text로 받기
								.then(text => memberTelCheck(text));
						});		
					} 
				}
				
				// 문자로 발송된 인증번호 받아오기
				function memberTelCheck(phone) {
					checkNum = phone;
					/* console.log(checkNum); */
					// $('#phonecheckbtn').val('Yes');
				}
				
				// 문자인증 submit 했을 경우
				function certificationCheck() {
					console.log(checkNum);
					console.log($('input[id = checkNumber]').val());
					
					// 전화번호를 입력 안 했을 떄
					if (!($('input[name = registerTel]').val())) {
						Swal.fire({
							title: '전화번호 입력',
							text: "전화번호를 입력하세요",
							icon: 'warning',
							confirmButtonColor: '#87826E',
							confirmButtonText: 'OK',
						})
						.then(function () {
							$('#CheckTelModal').modal('hide');
							$('input[id = CheckTel]').focus();
						});
					}
					// 인증번호 입력값이 없을때 실행되도록
					else if (!$('#checkNumber').val()) {
						Swal.fire({
							title: '인증번호 입력',
							text: "인증번호를 입력하세요",
							icon: 'warning',
							confirmButtonColor: '#87826E',
							confirmButtonText: 'OK',
						})
						.then(function () {
							$('#checkNumber').focus();
						});
					} else {
						if (checkNum == $('input[id = checkNumber]').val()) {
							Swal.fire({
								title: '문자인증',
								text: "문자인증이 완료되었습니다",
								icon: 'success',
								confirmButtonColor: '#87826E',
								confirmButtonText: 'OK',
							})
							.then(function () {
								/* $('#phonecheckbtn').val('Yes'); */
								$('#telcheck').val('Yes');
								$('#telcheck').attr('disabled', 'true');
								$('#CheckTelModal').modal('hide');
							});
						} else {
							Swal.fire({
								title: '문자인증',
								text: "인증번호를 다시 입력하세요",
								icon: 'error',
								confirmButtonColor: '#87826E',
								confirmButtonText: 'OK',
							})
								.then(function () {
									$('input[id = checkNumber]').val('');
									$('input[id = checkNumber]').focus();
								});
						}						
					}
				}
				
			</script>

			<!-- 회원가입 시 체크 사항 -->
			<script type="text/javascript">
				// 아이디 중복 체크
				function formcheck() {
					console.log($('#idcheck').val());
					if ($('#idcheck').val() == 'No') {
						/* alert('아이디 중복체크 하세요');
						// false면 form 실행 x
						return false;  */
						Swal.fire({
							title: '중복체크',
							text: "아이디 중복체크 하세요",
							icon: 'warning',
							confirmButtonColor: '#87826E',
							confirmButtonText: 'OK',
						})
						return false;
					} else if ($('#telcheck').val() == 'No') {
						// 문자인증 진행했는지 체크
						Swal.fire({
							title: '문자인증',
							text: "전화번호 인증하세요",
							icon: 'warning',
							confirmButtonColor: '#87826E',
							confirmButtonText: 'OK',
						})
						return false;

					} else {
						return true;
					}
				}

				function memberIdCheck() {
					/* $('input[name = registerId]').val */
					/* console.log($('input[id = registerId]').val()); */
					if (!($('input[id = registerId]').val())) {
						/* alert('아이디를 입력하세요');
						$('input[name = registerId]').focus(); */
						Swal.fire({
							title: '아이디 입력',
							text: "아이디를 입력하세요",
							icon: 'warning',
							confirmButtonColor: '#87826E',
							confirmButtonText: 'OK',
						})
							.then(function () {
								$('input[name = registerId]').focus();
							});
					} else {
						//aJax 사용
						let url = "memberidcheck.do";
						let id = $('input[name = registerId]').val();

						url = url + "?memberId=" + id;

						fetch(url)
							.then(response => response.text())	// response 객체에 text로 받기
							.then(text => membercheck(text));
					}
				}

				function membercheck(check) {
					if (check == 'Yes') {

						Swal.fire({
							title: '아이디 체크',
							text: "사용가능한 아이디 입니다",
							icon: 'success',
							confirmButtonColor: '#87826E',
							confirmButtonText: 'OK',
						})
							.then(function () {
								$('#idcheck').val('Yes');
								$('#idcheck').attr('disabled', 'true');	// 버튼 비활성화 */
							});

						/* alert("아이디 사용이 가능합니다.");
						$('#idcheck').val('Yes');
						$('#idcheck').attr('disabled', 'true');	// 버튼 비활성화 */
					} else {

						Swal.fire({
							title: '아이디 체크',
							text: "존재하는 아이디 입니다",
							icon: 'error',
							confirmButtonColor: '#87826E',
							confirmButtonText: 'OK',
						})
							.then(function () {
								$('input[name = registerId]').val('');
								$('input[name = registerId]').focus();
							});

						/* alert("이미 존재하는 아이디");
						$('input[name = registerId]').val('');
						$('input[name = registerId]').focus(); */
					}
				}	
			</script>
		</body>

		</html>