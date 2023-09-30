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
	width: 120px;
	height: 80px;
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
								<th>Payment Date</th>
								<th>Approval</th>

							</tr>
						</thead>
						<tbody class="table-border-bottom-0">
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
								<c:if test="${h.reserveCheck == 1 }">
								<td>예약승인</td>
								</c:if>
								<c:if test="${h.reserveCheck == 2 }">
								<td>예약거부</td>
								</c:if>
								</c:otherwise>
								</c:choose>
								
							</tr>
							</c:forEach>
						</tbody>
						<caption style="padding-left: 20px">
							<b>Total: ${count}</b>
						</caption>
					</table>
<!-- pagination -->
	<nav aria-label="Page navigation">
                          <ul class="pagination justify-content-center">
                            <!-- <li class="page-item prev">
                              <a class="page-link" href="?page=${currentPage-1 }"
                                ><i class="tf-icon bx bx-chevrons-left"></i
                              ></a>
                            </li> -->
                            <c:forEach var="page" begin="1" end="${pages }">
	                           <c:if test="${page eq currentPage }">
	                           <li class="page-item">
	                             <a class="page-link active" href="?page=${page }">${page }</a>
	                           </li>
	                           </c:if>
	                           <c:if test="${page ne currentPage }">
	                           <li class="page-item">
	                             <a class="page-link" href="?page=${page }">${page }</a>
	                           </li>
	                           </c:if>
                            </c:forEach>
                            <!-- <li class="page-item next">
                              <a class="page-link" href="?page=${currentPage+1 }"
                                ><i class="tf-icon bx bx-chevrons-right"></i
                              ></a>
                            </li> -->
                          </ul>
                        </nav>
	<!--  -->
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