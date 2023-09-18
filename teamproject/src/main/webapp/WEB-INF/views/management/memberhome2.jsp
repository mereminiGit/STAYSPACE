<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html lang="en" class="light-style layout-menu-fixed" dir="ltr" data-theme="theme-default"
		data-assets-path="../assets/" data-template="vertical-menu-template-free">

	<head>
		<meta charset="utf-8" />
		<meta name="viewport"
			content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

		<title>Stay Space/ 예약내역</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>


		<meta name="description" content="" />

		<!-- Favicon -->
		<link rel="icon" type="image/x-icon" href="member/assets/img/favicon/favicon.ico" />

		<!-- Fonts -->
		<link rel="preconnect" href="https://fonts.googleapis.com" />
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
		<link
			href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
			rel="stylesheet" />

		<!-- Icons. Uncomment required icon fonts /member/assets/vendor/css/ -->
		<link rel="stylesheet" href="member/assets/vendor/fonts/boxicons.css" />

		<!-- Core CSS -->
		<link rel="stylesheet" href="member/assets/vendor/css/core.css" class="template-customizer-core-css" />
		<link rel="stylesheet" href="member/assets/vendor/css/theme-default.css"
			class="template-customizer-theme-css" />
		<link rel="stylesheet" href="member/assets/css/demo.css" />

		<!-- Vendors CSS -->
		<link rel="stylesheet" href="member/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

		<link rel="stylesheet" href="member/assets/vendor/libs/apex-charts/apex-charts.css" />

		<!-- Page CSS -->

		<!-- Helpers -->
		<script src="member/assets/vendor/js/helpers.js"></script>

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
					<!-- 언니가 작성하고 싶은거.. -->
					<!-- Content wrapper -->
					<div class="content-wrapper">
						<!-- Content -->

						<div class="container-xxl flex-grow-1 container-p-y">
							<h4 class="fw-bold py-3 mb-4">
								<span class="text-muted fw-light">My Page / </span>예약 내역
							</h4>

							<!-- Basic Bootstrap Table -->
							<div class="card">
								<h5 class="card-header">예약내역</h5>
								<div class="table-responsive text-nowrap">
									<table class="table">
										<thead>
											<tr id="thfont">
												<th>SPACE IMG</th>
												<th>NAME</th>
												<th>RESERVATION DATE</th>
												<th>PAYMENT DATE</th>
												<th>APPROVAL</th>
												<th>DELETE LIST</th>
											</tr>
										</thead>
										<tbody class="table-border-bottom-0">
											<tr>
												<td><i class="fab fa-angular fa-lg text-danger me-3"></i><a
														href="#"><img id="stayimg" alt="stay"
															src="member/image/숙소2.jpg"></a></td>
												<td>고도</td>
												<td>2023/09/17</td>
												<td>2023/09/17</td>
												<td><span class="badge bg-label-primary me-1"><strong>예약완료</strong></span></td>
												<td>
													<div class="dropdown" id="deletecenter">
														<div class="deletebtn">
															<a class="" href="javascript:void(0);">
																<i class="bx bx-trash me-2"></i> Delete</a>
														</div>
													</div>
												</td>
											</tr>
											<tr>
												<td><i class="fab fa-react fa-lg text-info me-3"></i><a href="#"><img
															id="stayimg" alt="stay" src="member/image/숙소1.jpg"></a></td>
												<td>소게</td>
												<td>2023/09/17</td>
												<td>2023/09/17</td>
												<td><span class="badge bg-label-success me-1">예약승인대기</span></td>
												<td>
													<div class="dropdown" id="deletecenter">
														<div class="deletebtn">
															<a class="" href="javascript:void(0);">
																<i class="bx bx-trash me-2"></i> Delete</a>
														</div>
													</div>
												</td>
											</tr>
											<tr>
												<td><i class="fab fa-vuejs fa-lg text-success me-3"></i><img
														id="stayimg" alt="시호" src="member/image/일일시호.jpg"></td>
												<td>Trevor Baker</td>
												<td>2023/09/17</td>
												<td>2023/09/17</td>
												<td><span class="badge bg-label-primary me-1"><strong>예약완료</strong></span></td>
												<td>
													<div class="dropdown" id="deletecenter">
														<div class="deletebtn">
															<a class="" href="javascript:void(0);">
																<i class="bx bx-trash me-2"></i> Delete</a>
														</div>
													</div>
												</td>
											</tr>
											<tr>
												<td><i class="fab fa-vuejs fa-lg text-success me-3"></i><img
														id="stayimg" alt="시호" src="member/image/일일시호.jpg"></td>
												<td>Jerry Milton</td>
												<td>2023/09/17</td>
												<td>2023/09/17</td>
												<td><span class="badge bg-label-success me-1">예약승인대기</span></td>
												<td>
													<div class="dropdown" id="deletecenter">
														<div class="deletebtn">
															<a class="" href="javascript:void(0);">
																<i class="bx bx-trash me-2"></i> Delete</a>
														</div>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<!--/ Basic Bootstrap Table -->


						</div>
						<!-- / Layout page 내가작성하고싶은거 끝 -->
					</div>
				</div>
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

		<!--  <script src="member/assets/vendor/js/menu.js"></script>-->
		<!-- endbuild -->

		<!-- Vendors JS -->
		<script src="member/assets/vendor/libs/apex-charts/apexcharts.js"></script>

		<!-- Main JS -->
		<script src="member/assets/js/main.js"></script>

		<!-- Page JS -->
		<script src="member/assets/js/dashboards-analytics.js"></script>

		<!-- Place this tag in your head or just before your close body tag. -->
		<script async defer src="https://buttons.github.io/buttons.js"></script>
		<script type="text/javascript">

		</script>
	</body>

	</html>