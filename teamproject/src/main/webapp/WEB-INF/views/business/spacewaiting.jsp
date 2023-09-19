<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>

<style>
img#stayimg {
	width: 200px;
	height: 120px;
	border-radius: 10px;
}
</style>
</head>
<body>
	<!-- Content wrapper -->
	<div class="content-wrapper">
		<!-- Content -->

		<div class="container-xxl flex-grow-1 container-p-y">
			<h4 class="fw-bold py-3 mb-4">
				<span class="text-muted fw-light">Reservation </span> Waiting
			</h4>
			<!-- Hoverable Table rows -->
			<div class="card">
				<h5 class="card-header">예약 승인대기 목록</h5>
				<div class="table-responsive text-nowrap">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>Space Img</th>
								<th>Name</th>
								<th>Price</th>
								<th>subscriber</th>
								<th>Start Date</th>
								<th>End Date</th>
								<th>Approved or not</th>
							</tr>
						</thead>
						<tbody class="table-border-bottom-0">
							<!-- 1번 공간 -->
							<tr>
								<td><img id="stayimg"
									src="sneat/assets/img/avatars/stayimg1.jpg" alt="space1"></td>
								<td><i class="fab fa-angular fa-lg text-danger me-3"></i> <strong>촬영
										스튜디오</strong></td>
								<td>50000</td>
								<td>홍길동</td>
								<td>2023-09-01</td>
								<td>2023-09-02</td>
								<td>
									<button type="button" class="btn btn-outline-warning approved">승인</button>
									<button type="button"
										class="btn btn-outline-secondary rejected">거부</button>
								</td>
							</tr>
							<!-- 2번 공간 -->
							<tr>
								<td><img id="stayimg"
									src="sneat/assets/img/avatars/stayimg1.jpg" alt="space1"></td>
								<td><i class="fab fa-angular fa-lg text-danger me-3"></i> <strong>촬영
										스튜디오</strong></td>
								<td>50000</td>
								<td>홍길동</td>
								<td>2023-09-01</td>
								<td>2023-09-02</td>
								<td>
									<button type="button" class="btn btn-outline-warning approved">승인</button>
									<button type="button"
										class="btn btn-outline-secondary rejected">거부</button>
								</td>
							</tr>
							<!-- 3번 공간 -->
							<tr>
								<td><img id="stayimg"
									src="sneat/assets/img/avatars/stayimg1.jpg" alt="space1"></td>
								<td><i class="fab fa-angular fa-lg text-danger me-3"></i> <strong>촬영
										스튜디오</strong></td>
								<td>50000</td>
								<td>홍길동</td>
								<td>2023-09-01</td>
								<td>2023-09-02</td>
								<td>
									<button type="button" class="btn btn-outline-warning approved">승인</button>
									<button type="button"
										class="btn btn-outline-secondary rejected">거부</button>
								</td>
							</tr>
							<!-- 4번 공간 -->
							<tr>
								<td><img id="stayimg"
									src="sneat/assets/img/avatars/stayimg1.jpg" alt="space1"></td>
								<td><i class="fab fa-angular fa-lg text-danger me-3"></i> <strong>촬영
										스튜디오</strong></td>
								<td>50000</td>
								<td>홍길동</td>
								<td>2023-09-01</td>
								<td>2023-09-02</td>
								<td>
									<button type="button" class="btn btn-outline-warning approved">승인</button>
									<button type="button"
										class="btn btn-outline-secondary rejected">거부</button>
								</td>
							</tr>
						</tbody>
						<caption style="padding-left: 20px">
							<b>Total:
						</caption>
					</table>
				</div>
			</div>
			<!--/ Hoverable Table rows -->

		</div>
	</div>
	<script>
		$('.approved').on('click', function(e) {
			e.target.parentElement.innerText = 'Approved';
			return approved;
		})
		$('.rejected').on('click', function(e) {
			e.target.parentElement.innerText = 'Rejected';
			return rejected;
		})
	</script>

</body>
</html>