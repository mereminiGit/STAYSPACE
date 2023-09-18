<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
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
								<button class="nav-link text-uppercase active" id="nav-sign-in-tab" data-bs-toggle="tab"
									data-bs-target="#nav-sign-in" type="button" role="tab" aria-controls="nav-sign-in"
									aria-selected="true">Sign
									In</button>
								<!-- Register -->
								<button class="nav-link text-uppercase" id="nav-register-tab" data-bs-toggle="tab"
									data-bs-target="#nav-register" type="button" role="tab" aria-controls="nav-register"
									aria-selected="false">Register</button>
								<!-- Register -->
							</div>
						</nav>

						<div class="tab-content" id="nav-tabContent">
							<!-- 로그인 -->
							<div class="tab-pane fade active show" id="nav-sign-in" role="tabpanel"
								aria-labelledby="nav-sign-in-tab">
								<div class="form-group py-3">
									<label for="sign-in">Username or email address *</label> <input type="text"
										minlength="2" name="username" placeholder="Your Username" class="w-100"
										required>
								</div>
								<div class="form-group py-3">
									<label for="sign-in">Password *</label> <input type="password" minlength="2"
										name="password" placeholder="Your Password" class="w-100" required>
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
								<button type="submit" name="submit" class="btn btn-dark w-100 my-3">Login</button>
							</div>

							<!-- 회원가입 -->
							<div class="tab-pane fade" id="nav-register" role="tabpanel"
								aria-labelledby="nav-register-tab">
								<form action="memberRegister.do" method="post">
									<div class="form-group py-3">
										<label for="register">ID *</label> <input type="text"
											minlength="2" name="registerId" placeholder="Your Id" class="w-100" required>
									</div>
									<div class="form-group py-3">
										<label for="register">Password *</label> <input type="password" minlength="2"
											name="registerPassword" placeholder="Your Password" class="w-100" required>
									</div>
									<div class="form-group py-3">
										<label for="register">name *</label> <input type="text"
											minlength="2" name="registerName" placeholder="Your Name" class="w-100" required>
									</div>
									<div class="form-group py-3">
										<label for="register">email *</label> <input
											type="email" minlength="2" name="registerEmail" placeholder="Your Email Address" class="w-100" required>
									</div>
									<div class="form-group py-3">
										<label for="register">phone *</label> <input
											type="text" minlength="2" name="registerTel" placeholder="Your Phone Number" class="w-100" required>
									</div>
									<label class="py-3"> <input type="checkbox" name="registerCheck" class="d-inline"> <span
											class="label-body">&nbsp;Do you want to sign up as a host?</span>
									</label>
									<button type="submit" name="submit" class="btn btn-dark w-100 my-3">Register</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- 아이디 모달 -->
			<form id="findId">
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
									<label for="username">User name *</label>
									<input type="text" minlength="2" name="username" id="username"
										placeholder="Your Username" class="w-100" required>
								</div>
								<div class="form-group py-3">
									<label for="useremail">Email address *</label>
									<input type="email" minlength="2" name="useremail" id="useremail"
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

			<!-- 비밀번호 모달 -->
			<form id="findPassword">
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
									<label for="userid">User Id *</label>
									<input type="text" minlength="2" name="userid" id="userid" placeholder="Your Userid"
										class="w-100" required>
								</div>
								<div class="form-group py-3">
									<label for="useremail">Email address *</label>
									<input type="email" minlength="2" name="useremail" id="useremail"
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

		</section>
		<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

		<script type="text/javascript">
			<!-- 아이디 찾기 모달 이벤트 -->
			$('#findId').on('submit', function () {
				Swal.fire({
					title: '아이디 전송',
					text: "이메일을 확인해주세요",
					icon: 'success',
					confirmButtonColor: '#87826E',
					confirmButtonText: 'OK',
				}).then(function () {
					location.reload();
				});
			});


		< !--비밀번호 찾기 모달 이벤트-- >
				$('#findPassword').on('submit', function () {
					/* alert("초기화된 비밀번호가 이메일로 전송되었습니다!"); */
					/* swal("비밀번호 초기화","이메일을 확인해주세요", "suc"); */
					Swal.fire({
						title: '비밀번호 초기화',
						text: "이메일을 확인해주세요",
						icon: 'success',
						confirmButtonColor: '#87826E',
						confirmButtonText: 'OK',
					}).then(function () {
						location.reload();
					});
				});
		</script>
	</body>

	</html>