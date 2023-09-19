<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="light-style layout-menu-fixed" dir="ltr"
	data-theme="theme-default" data-assets-path="sneat/assets/"
	data-template="vertical-menu-template-free">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />
<meta name="description" content="" />
<style>
img#stayimg {
	width: 120px;
	height: 80px;
	border-radius: 10px;
}
</style>
</head>
<body>
	<div class="container-xxl flex-grow-1 container-p-y">
		<h4 class="fw-bold py-3 mb-4">
			<span class="text-muted fw-light">Sale </span> Chart
		</h4>

		<!-- Content wrapper -->
		<div class="content-wrapper">
			<!-- Content -->
			<div class="row">

				<!-- Expense Overview -->
				<div class="col-md-6 col-lg-4 order-1 mb-4">
					<div class="card h-100">
						<div class="card-header">
							<ul class="nav nav-pills" role="tablist">
								<li class="nav-item">
									<button type="button" class="btn btn-outline-secondary active"
										style="border: none" role="tab" data-bs-toggle="tab"
										data-bs-target="#navs-tabs-line-card-income"
										aria-controls="navs-tabs-line-card-income"
										aria-selected="true">Monthly</button>
								</li> &nbsp;&nbsp;
								<li class="nav-item">
									<button type="button" class="btn btn-outline-secondary"
										style="border: none" role="tab" data-bs-toggle="tab"
										data-bs-target="#navs-tabs-line-card-space"
										aria-controls="navs-tabs-line-card-space"
										aria-selected="false">by location</button>
								</li>
							</ul>
						</div>
						<div class="card-body px-0">
							<div class="tab-content">
								<div class="tab-pane fade show active"
									id="navs-tabs-line-card-income" role="tabpanel">
									<div class="d-flex p-4 pt-3">
										<div class="avatar flex-shrink-0 me-3">
											<img src="sneat/assets/img/icons/unicons/total.png"
												alt="User" />
										</div>
										<div>
											<small class="text-muted d-block">Total Sales</small>
											<div class="d-flex align-items-center">
												<h6 class="mb-0 me-1">4591000원</h6>
												<small class="text-success fw-semibold"> <i
													class="bx bx-chevron-up"></i> 42.9%
												</small>
											</div>
										</div>
									</div>
									<!-- 수정 
									<div id="incomeChart"></div> -->
									<canvas id="lineChart"></canvas>

									<div class="d-flex justify-content-center pt-4 gap-2">
										<div>
											<p class="mb-n1 mt-1">Highest Sales</p>
											<small class="text-muted">Month: Jul</small>
										</div>
									</div>
								</div>

								<div class="tab-pane" id="navs-tabs-line-card-space"
									role="tabpane1">
									<div class="d-flex p-4 pt-3">
										<div class="avatar flex-shrink-0 me-3">
											<img src="sneat/assets/img/icons/unicons/cc-warning.png"
												alt="User" />
										</div>
										<div>
											<small class="text-muted d-block">Total Sales</small>
											<div class="d-flex align-items-center">
												<h6 class="mb-0 me-1">4591000원</h6>
												<small class="text-success fw-semibold"> <i
													class="bx bx-chevron-up"></i> 42.9%
												</small>
											</div>
										</div>
									</div>
									<!-- 수정 
									<div id="incomeChart"></div> -->
									<canvas id="barChart"></canvas>

									<div class="d-flex justify-content-center pt-4 gap-2">
										<div>
											<p class="mb-n1 mt-1">Highest Sales</p>
											<small class="text-muted">Space: Studio</small>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--/ Expense Overview -->

				<!-- Transactions -->
				<div class="col-md-6 col-lg-4 order-2 mb-4">
					<div class="card h-100">
						<div
							class="card-header d-flex align-items-center justify-content-between">
							<h5 class="card-title m-0 me-2">
								The First Half Sales<span class="text-muted fw-light"><small>
										(상반기 매출액)</small></span>
							</h5>
						</div>
						<div class="card-body">
							<ul class="p-0 m-0">
								<li class="d-flex mb-4 pb-1">
									<div class="avatar flex-shrink-0 me-3">
										<img src="sneat/assets/img/icons/unicons/1.png" alt="User"
											class="rounded" />
									</div>
									<div
										class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
										<div class="me-2">
											<small class="text-muted d-block mb-1">January</small>
											<h6 class="mb-0">Studio</h6>
										</div>
										<div class="user-progress d-flex align-items-center gap-1">
											<h6 class="mb-0">100000원</h6>
											<span class="text-muted">KRW</span>
										</div>
									</div>
								</li>
								<li class="d-flex mb-4 pb-1">
									<div class="avatar flex-shrink-0 me-3">
										<img src="sneat/assets/img/icons/unicons/2.png" alt="User"
											class="rounded" />
									</div>
									<div
										class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
										<div class="me-2">
											<small class="text-muted d-block mb-1">February</small>
											<h6 class="mb-0">Party Room</h6>
										</div>
										<div class="user-progress d-flex align-items-center gap-1">
											<h6 class="mb-0">200000원</h6>
											<span class="text-muted">KRW</span>
										</div>
									</div>
								</li>
								<li class="d-flex mb-4 pb-1">
									<div class="avatar flex-shrink-0 me-3">
										<img src="sneat/assets/img/icons/unicons/3.png" alt="User"
											class="rounded" />
									</div>
									<div
										class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
										<div class="me-2">
											<small class="text-muted d-block mb-1">March</small>
											<h6 class="mb-0">Studio</h6>
										</div>
										<div class="user-progress d-flex align-items-center gap-1">
											<h6 class="mb-0">300000원</h6>
											<span class="text-muted">KRW</span>
										</div>
									</div>
								</li>
								<li class="d-flex mb-4 pb-1">
									<div class="avatar flex-shrink-0 me-3">
										<img src="sneat/assets/img/icons/unicons/4.png" alt="User"
											class="rounded" />
									</div>
									<div
										class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
										<div class="me-2">
											<small class="text-muted d-block mb-1">April</small>
											<h6 class="mb-0">Studio</h6>
										</div>
										<div class="user-progress d-flex align-items-center gap-1">
											<h6 class="mb-0">400000원</h6>
											<span class="text-muted">KRW</span>
										</div>
									</div>
								</li>
								<li class="d-flex mb-4 pb-1">
									<div class="avatar flex-shrink-0 me-3">
										<img src="sneat/assets/img/icons/unicons/5.png" alt="User"
											class="rounded" />
									</div>
									<div
										class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
										<div class="me-2">
											<small class="text-muted d-block mb-1">May</small>
											<h6 class="mb-0">Studio</h6>
										</div>
										<div class="user-progress d-flex align-items-center gap-1">
											<h6 class="mb-0">500000원</h6>
											<span class="text-muted">KRW</span>
										</div>
									</div>
								</li>
								<li class="d-flex">
									<div class="avatar flex-shrink-0 me-3">
										<img src="sneat/assets/img/icons/unicons/6.png" alt="User"
											class="rounded" />
									</div>
									<div
										class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
										<div class="me-2">
											<small class="text-muted d-block mb-1">June</small>
											<h6 class="mb-0">Studio</h6>
										</div>
										<div class="user-progress d-flex align-items-center gap-1">
											<h6 class="mb-0">600000원</h6>
											<span class="text-muted">KRW</span>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!--/ Transactions -->

				<!-- Transactions -->
				<div class="col-md-6 col-lg-4 order-2 mb-4">
					<div class="card h-100">
						<div
							class="card-header d-flex align-items-center justify-content-between">
							<h5 class="card-title m-0 me-2">
								Second Half Sales<span class="text-muted fw-light"><small>
										(하반기 매출액)</small></span>
							</h5>
						</div>
						<div class="card-body">
							<ul class="p-0 m-0">
								<li class="d-flex mb-4 pb-1">
									<div class="avatar flex-shrink-0 me-3">
										<img src="sneat/assets/img/icons/unicons/7.png" alt="User"
											class="rounded" />
									</div>
									<div
										class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
										<div class="me-2">
											<small class="text-muted d-block mb-1">July</small>
											<h6 class="mb-0">Studio</h6>
										</div>
										<div class="user-progress d-flex align-items-center gap-1">
											<h6 class="mb-0">700000원</h6>
											<span class="text-muted">KRW</span>
										</div>
									</div>
								</li>
								<li class="d-flex mb-4 pb-1">
									<div class="avatar flex-shrink-0 me-3">
										<img src="sneat/assets/img/icons/unicons/8.png" alt="User"
											class="rounded" />
									</div>
									<div
										class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
										<div class="me-2">
											<small class="text-muted d-block mb-1">August</small>
											<h6 class="mb-0">Studio</h6>
										</div>
										<div class="user-progress d-flex align-items-center gap-1">
											<h6 class="mb-0">800000원</h6>
											<span class="text-muted">KRW</span>
										</div>
									</div>
								</li>
								<li class="d-flex mb-4 pb-1">
									<div class="avatar flex-shrink-0 me-3">
										<img src="sneat/assets/img/icons/unicons/9.png" alt="User"
											class="rounded" />
									</div>
									<div
										class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
										<div class="me-2">
											<small class="text-muted d-block mb-1">September</small>
											<h6 class="mb-0">Studio</h6>
										</div>
										<div class="user-progress d-flex align-items-center gap-1">
											<h6 class="mb-0">900000원</h6>
											<span class="text-muted">KRW</span>
										</div>
									</div>
								</li>
								<li class="d-flex mb-4 pb-1">
									<div class="avatar flex-shrink-0 me-3">
										<img src="sneat/assets/img/icons/unicons/10.png" alt="User"
											class="rounded" />
									</div>
									<div
										class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
										<div class="me-2">
											<small class="text-muted d-block mb-1">October</small>
											<h6 class="mb-0">Studio</h6>
										</div>
										<div class="user-progress d-flex align-items-center gap-1">
											<h6 class="mb-0">1000000원</h6>
											<span class="text-muted">KRW</span>
										</div>
									</div>
								</li>
								<li class="d-flex mb-4 pb-1">
									<div class="avatar flex-shrink-0 me-3">
										<img src="sneat/assets/img/icons/unicons/11.png" alt="User"
											class="rounded" />
									</div>
									<div
										class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
										<div class="me-2">
											<small class="text-muted d-block mb-1">November</small>
											<h6 class="mb-0">Studio</h6>
										</div>
										<div class="user-progress d-flex align-items-center gap-1">
											<h6 class="mb-0">1100000원</h6>
											<span class="text-muted">KRW</span>
										</div>
									</div>
								</li>
								<li class="d-flex">
									<div class="avatar flex-shrink-0 me-3">
										<img src="sneat/assets/img/icons/unicons/12.png" alt="User"
											class="rounded" />
									</div>
									<div
										class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
										<div class="me-2">
											<small class="text-muted d-block mb-1">December</small>
											<h6 class="mb-0">Studio</h6>
										</div>
										<div class="user-progress d-flex align-items-center gap-1">
											<h6 class="mb-0">1200000원</h6>
											<span class="text-muted">KRW</span>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!--/ Transactions -->
			</div>
		</div>
		<!-- / Content -->

		<!-- Content wrapper -->

		<div class="col-xl-6" style="width: 100%">
			<h6 class="text-muted">Click the tap</h6>
			<div class="nav-align-top mb-4">
				<ul class="nav nav-tabs nav-fill" role="tablist">
					<li class="nav-item">
						<button type="button" class="nav-link active" role="tab"
							data-bs-toggle="tab" data-bs-target="#navs-justified-home"
							aria-controls="navs-justified-home" aria-selected="true">
							<i class="tf-icons bx bx-message-square"></i> 이번달 매출 순위
						</button>
					</li>
					<li class="nav-item">
						<button type="button" class="nav-link" role="tab"
							data-bs-toggle="tab" data-bs-target="#navs-justified-profile"
							aria-controls="navs-justified-profile" aria-selected="false">
							<i class="tf-icons bx bx-home"></i> 총 매출 순위
						</button>
					</li>

				</ul>
				<div class="tab-content">
					<div class="tab-pane fade show active" id="navs-justified-home"
						role="tabpanel">
						<!-- Bootstrap Dark Table -->
						<div class="card">
							<h5 class="card-header">Top 3 Sales by location</h5>
							<div class="table-responsive text-nowrap"
								style="border-radius: 10px">
								<table class="table">
									<thead>
										<tr>
											<th>No</th>
											<th>Space Img</th>
											<th>Name</th>
											<th>City</th>
											<th>Address</th>
											<th>Total Price</th>
										</tr>
									</thead>
									<tbody class="table-border-bottom-0">
										<tr>
											<td>1.</td>
											<td><img id="stayimg"
												src="sneat/assets/img/avatars/stayimg1.jpg" alt="space1"></td>
											<td><i class="fab fa-angular fa-lg text-danger me-3"></i>
												<strong>촬영 스튜디오</strong></td>
											<td>서울</td>
											<td>서울특별시 강남구 테헤란로19</td>
											<td><span>50000</span> 원</td>
										</tr>
										<tr>
											<td>2.</td>
											<td><img id="stayimg"
												src="sneat/assets/img/avatars/stayimg1.jpg" alt="space1"></td>
											<td><i class="fab fa-angular fa-lg text-danger me-3"></i>
												<strong>촬영 스튜디오</strong></td>
											<td>서울</td>
											<td>서울특별시 강남구 테헤란로19</td>
											<td><span>50000</span> 원</td>
										</tr>
										<tr>
											<td>3.</td>
											<td><img id="stayimg"
												src="sneat/assets/img/avatars/stayimg1.jpg" alt="space1"></td>
											<td><i class="fab fa-angular fa-lg text-danger me-3"></i>
												<strong>촬영 스튜디오</strong></td>
											<td>서울</td>
											<td>서울특별시 강남구 테헤란로19</td>
											<td><span>50000</span> 원</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<!--/ Bootstrap Dark Table -->
					</div>
					<div class="tab-pane fade" id="navs-justified-profile"
						role="tabpanel">
						<!-- Bootstrap Dark Table -->
						<div class="card">
							<h5 class="card-header">Top 3 Sales by location</h5>
							<div class="table-responsive text-nowrap"
								style="border-radius: 10px">
								<table class="table">
									<thead>
										<tr>
											<th>No</th>
											<th>Space Img</th>
											<th>Name</th>
											<th>City</th>
											<th>Address</th>
											<th>Total Price</th>
										</tr>
									</thead>
									<tbody class="table-border-bottom-0">
										<tr>
											<td>1.</td>
											<td><img id="stayimg"
												src="sneat/assets/img/avatars/stayimg1.jpg" alt="space1"></td>
											<td><i class="fab fa-angular fa-lg text-danger me-3"></i>
												<strong>촬영 스튜디오</strong></td>
											<td>서울</td>
											<td>서울특별시 강남구 테헤란로19</td>
											<td><span>50000</span> 원</td>
										</tr>
										<tr>
											<td>2.</td>
											<td><img id="stayimg"
												src="sneat/assets/img/avatars/stayimg1.jpg" alt="space1"></td>
											<td><i class="fab fa-angular fa-lg text-danger me-3"></i>
												<strong>촬영 스튜디오</strong></td>
											<td>서울</td>
											<td>서울특별시 강남구 테헤란로19</td>
											<td><span>50000</span> 원</td>
										</tr>
										<tr>
											<td>3.</td>
											<td><img id="stayimg"
												src="sneat/assets/img/avatars/stayimg1.jpg" alt="space1"></td>
											<td><i class="fab fa-angular fa-lg text-danger me-3"></i>
												<strong>촬영 스튜디오</strong></td>
											<td>서울</td>
											<td>서울특별시 강남구 테헤란로19</td>
											<td><span>50000</span> 원</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<!--/ Bootstrap Dark Table -->
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Core JS -->
	<!-- Custom js for this page-->
	<script src="js/chart.js"></script>
	<script src="js/Chart.min.js"></script>
	<!-- build:js assets/vendor/js/core.js -->
	<script src="sneat/assets/vendor/libs/jquery/jquery.js"></script>
	<script src="sneat/assets/vendor/libs/popper/popper.js"></script>
	<script src="sneat/assets/vendor/js/bootstrap.js"></script>
	<script
		src="sneat/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

	<script src="sneat/assets/vendor/js/menu.js"></script>
	<!-- endbuild -->

	<!-- Vendors JS -->
	<script src="sneat/assets/vendor/libs/apex-charts/apexcharts.js"></script>

	<!-- Main JS -->
	<script src="sneat/assets/js/main.js"></script>

	<!-- Page JS -->
	<script src="sneat/assets/js/dashboards-analytics.js"></script>

	<!-- Place this tag in your head or just before your close body tag. -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>


</body>
</html>