<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!-- =========================================================
* Sneat - Bootstrap 5 HTML Admin Template - Pro | v1.0.0
==============================================================

* Product Page: https://themeselection.com/products/sneat-bootstrap-html-admin-template/
* Created by: ThemeSelection
* License: You must have a valid license purchased in order to legally use the theme for your project.
* Copyright ThemeSelection (https://themeselection.com)

=========================================================
 -->
<!-- beautify ignore:start -->
<html lang="en" class="light-style layout-menu-fixed" dir="ltr"
	data-theme="theme-default" data-assets-path="sneat/assets/"
	data-template="vertical-menu-template-free">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />


<meta name="description" content="" />

<!-- Favicon -->
<link rel="icon" type="image/x-icon"
	href="sneat/assets/img/favicon/favicon.ico" />

<!-- Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
	rel="stylesheet" />

<!-- Icons. Uncomment required icon fonts -->
<link rel="stylesheet" href="sneat/assets/vendor/fonts/boxicons.css" />

<!-- Core CSS -->
<link rel="stylesheet" href="sneat/assets/vendor/css/core.css"
	class="template-customizer-core-css" />
<link rel="stylesheet" href="sneat/assets/vendor/css/theme-default.css"
	class="template-customizer-theme-css" />
<link rel="stylesheet" href="sneat/assets/css/demo.css" />

<!-- Vendors CSS -->
<link rel="stylesheet"
	href="sneat/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

<!-- Page CSS -->

<!-- Helpers -->
<script src="sneat/assets/vendor/js/helpers.js"></script>

<!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
<!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
<script src="sneat/assets/js/config.js"></script>
</head>

<body>
	<!-- Content wrapper -->
	<div class="content-wrapper">
		<!-- Content -->

		<div class="container-xxl flex-grow-1 container-p-y">
			<h4 class="fw-bold py-3 mb-4">
				<span class="text-muted fw-light">MY PAGE</span>
			</h4>

			<div class="row">
				<div class="col-md-12">
					<div class="card mb-4">
						<h5 class="card-header">내 정보 수정</h5>
						<!-- Account -->
						<div class="card-body">
							<div class="d-flex align-items-start align-items-sm-center gap-4">
								<img src="sneat/assets/img/avatars/1.png" alt="user-avatar"
									class="d-block rounded" height="100" width="100"
									id="uploadedAvatar" />
								<div class="button-wrapper">
									<label for="upload" class="btn btn-primary me-2 mb-4"
										tabindex="0"> <span class="d-none d-sm-block">이미지 등록</span> <i class="bx bx-upload d-block d-sm-none"></i> <input
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
										<label for="lastName" class="form-label">PASSWORD</label> <input
											class="form-control" type="password" name="lastName"
											id="lastName" placeholder="비밀번호를 입력하세요." />
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
											<input
												type="text" id="phoneNumber" name="phoneNumber"
												class="form-control" placeholder="010-0000-1111" />
										</div>
									</div>
									<div class="mt-2">
										<button type="submit" class="btn btn-primary me-2">수정하기</button>
										<button type="reset" class="btn btn-outline-secondary">취소하기</button>
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
								<div class="alert alert-warning">
									<h6 class="alert-heading fw-bold mb-1">정말로 계정을 삭제하시겠습니까?</h6>
									<br>
									<p class="mb-0">계정을 삭제하면 되돌릴 수 없습니다.</p>
								</div>
							</div>
							<form id="formAccountDeactivation" onsubmit="return false">
								<div class="form-check mb-3">
									<input class="form-check-input" type="checkbox"
										name="accountActivation" id="accountActivation" />
									<label class="form-check-label" for="accountActivation">내
										계정 탈퇴에 동의합니다.</label>
								</div>
								<button type="submit" class="btn btn-danger deactivate-account">탈퇴하기</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- / Content -->
	</div>
	<!-- Core JS -->
	<!-- build:js assets/vendor/js/core.js -->
	<script src="sneat/assets/vendor/libs/jquery/jquery.js"></script>
	<script src="sneat/assets/vendor/libs/popper/popper.js"></script>
	<script src="sneat/assets/vendor/js/bootstrap.js"></script>
	<script
		src="sneat/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

	<script src="sneat/assets/vendor/js/menu.js"></script>
	<!-- endbuild -->

	<!-- Vendors JS -->

	<!-- Main JS -->
	<script src="sneat/assets/js/main.js"></script>

	<!-- Page JS -->
	<script src="sneat/assets/js/pages-account-settings-account.js"></script>

	<!-- Place this tag in your head or just before your close body tag. -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>
</body>
</html>