<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

	
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

								<th>subscriber</th>
								<th>Start Date</th>
								<th>Payment date</th>
								<th>Approved or not</th>

								<th>Member Id</th>
								<th>Reserved Date</th>
								<th>Approval</th>

							</tr>
						</thead>
						<tbody class="table-border-bottom-0">
							<!-- 1번 공간 -->
							<c:forEach items="${hostReserve }" var="h">
							<tr>
								<td>1</td>
								<td><img id="stayimg"

									src="image/space/${h.reserveImg }" alt="space1"></td>
								<td>${h.spaceName }</td>
								<td><fmt:formatNumber value="${h.reservePrice }" type="currency" currencySymbol="￦"/></td>
								<td>${h.memberId }</td>
								<td>${h.reserveStartDate }</td>
								<td>${h.reserveCheckoutDate }</td>
								<c:choose>
								<c:when test="${h.reserveCheck == 0 }">
									<td><button type="button" class="btn btn-outline-warning approved" onclick="reserveCall('${h.hostId }',${h.reserveId},${h.reserveCheck },'승인')">승인</button>
									
									<button type="button"
										class="btn btn-outline-secondary rejected" onclick="reserveCall('${h.hostId }',${h.reserveId},${h.reserveCheck },'거부')">거부</button>
									</td>
								</c:when>
								<c:otherwise>
								<td>처리완료</td>
								</c:otherwise>
								</c:choose>
								
							</tr>
							</c:forEach>
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
							3번 공간
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
							4번 공간
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
							</tr> -->
						</tbody>
						<caption style="padding-left: 20px">
							<b>Total: ${count}
						</caption>
					</table>
				</div>
			</div>
			<!--/ Hoverable Table rows -->

		</div>
	</div>
	<script>
	 	$('.approved').on('click', function(e) {
			Swal.fire({
				  icon: 'success',
				  text: '승인되었습니다.',
				})
				setTimeout(function() {
					location.reload();
				}, 900);
		})
		
		$('.rejected').on('click', function(e) {
			Swal.fire({
				  icon: 'success',
				  text: '거부되었습니다.',
				})
				setTimeout(function() {
					location.reload();
				}, 900);
		})  
		
		function reserveCall(hostId,reserveId,reserveCheck,type){
		    $.ajax({
                url: "ajaxReserveUpdate.do?hostId="+hostId+"&reserveId="+reserveId+"&reserveCheck="+reserveCheck+"&type="+type,
                type: "post",
                datatype: "html",
                success: function (data) {
                	console.log(data);
                        }
                
              });
		}
	</script>

</body>
</html>