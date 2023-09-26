<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<!-- alert -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
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
				<h5 class="card-header">Waiting for reservation approval</h5>
				<div class="table-responsive text-nowrap">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>Space Id</th>
								<th>Img</th>
								<th>Name</th>
								<th>Price</th>
								<th>Member Id</th>
								<th>Reserved Date</th>
								<th>Approval</th>
							</tr>
						</thead>
						<tbody class="table-border-bottom-0">
							<!-- 1번 공간 -->
							<tr>
								<td>1</td>
								<td><img id="stayimg"
									src="sneat/assets/img/avatars/stayimg1.jpg" alt="space1"></td>
								<td>촬영
										스튜디오</td>
								<td>50000 ₩</td>
								<td>홍길동</td>
								<td>2023-09-01</td>
								<td>
									<button type="button" class="btn btn-outline-warning approved">승인</button>
									<button type="button"
										class="btn btn-outline-secondary rejected">거부</button>
								</td>
							</tr>
							<!-- 2번 공간 -->
							<tr>
								<td>2</td>
								<td><img id="stayimg"
									src="sneat/assets/img/avatars/stayimg1.jpg" alt="space1"></td>
								<td>촬영
										스튜디오</td>
								<td>50000 ₩</td>
								<td>홍길동</td>
								<td>2023-09-01</td>
								<td>
									<button type="button" class="btn btn-outline-warning approved">승인</button>
									<button type="button"
										class="btn btn-outline-secondary rejected">거부</button>
								</td>
							</tr>
							<!-- 3번 공간 -->
							<tr>
								<td>3</td>
								<td><img id="stayimg"
									src="sneat/assets/img/avatars/stayimg1.jpg" alt="space1"></td>
								<td>촬영
										스튜디오</td>
								<td>50000 ₩</td>
								<td>홍길동</td>
								<td>2023-09-01</td>
								<td>
									<button type="button" class="btn btn-outline-warning approved">승인</button>
									<button type="button"
										class="btn btn-outline-secondary rejected">거부</button>
								</td>
							</tr>
							<!-- 4번 공간 -->
							<tr>
								<td>4</td>
								<td><img id="stayimg"
									src="sneat/assets/img/avatars/stayimg1.jpg" alt="space1"></td>
								<td>촬영
										스튜디오</td>
								<td>50000 ₩</td>
								<td>홍길동</td>
								<td>2023-09-01</td>
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
			Swal.fire({
				  icon: 'success',
				  text: '승인되었습니다.',
				})
			return approved;
		})
		$('.rejected').on('click', function(e) {
			e.target.parentElement.innerText = 'Rejected';
			Swal.fire({
				  icon: 'success',
				  text: '거부되었습니다.',
				})
			return rejected;
		})
	</script>

</body>
</html>