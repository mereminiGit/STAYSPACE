<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


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
#myInput {
  background-image: url('sneat/assets/img/icons/unicons/searchicon.png');
  background-size: 25px 25px;
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 15px;
  padding: 10px 20px 10px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
  margin-right: 30px;
}
#float{
  float: right;
  width: 30%;
  margin-right: 50px;
}
th:hover{
background-color: beige;
cursor: pointer;
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
				<div id="float">
				&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" id="myInput"
						onkeyup="myFunction()" placeholder="Search for somethings.."
						><br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<small id="descript">*예약대기 목록 조회시 '대기'입력</small><br>
						<br>
						</div>
					<table class="table table-hover" id="myTable">
						<thead>
							<tr>
								<th onclick="sortTable(0)">Space Id</th>
								<th>Img</th>
								<th onclick="sortTable(2)">Name</th>
								<th onclick="sortTable(3)">Price</th>
								<th onclick="sortTable(4)">Member Id</th>
								<th onclick="sortTable(5)">Reserved Date</th>
								<th onclick="sortTable(6)">Payment Date</th>
								<th onclick="sortTable(7)">Approval</th>

							</tr>
						</thead>
						<tbody class="table-border-bottom-0" id="myTbody">
							<c:forEach items="${hostReserve }" var="h">
								<tr>
									<td>1</td>
									<td><img id="stayimg" src="image/space/${h.reserveImg }"
										alt="space1"></td>
									<td>${h.spaceName }</td>
									<td><fmt:formatNumber value="${h.reservePrice }"
											type="currency" currencySymbol="￦" /></td>
									<td>${h.memberId }</td>
									<td>${h.reserveStartDate }</td>
									<td>${h.reserveCheckoutDate }</td>
									<c:choose>
										<c:when test="${h.reserveCheck == 0 }">
											<td>
												<button type="button"
													class="btn btn-outline-warning approved"
													onclick="reserveCall('${h.hostId }',${h.reserveId},${h.reserveCheck },'승인')">승인</button>

												<button type="button"
													class="btn btn-outline-secondary rejected"
													onclick="reserveCall('${h.hostId }',${h.reserveId},${h.reserveCheck },'거부')">취소</button>
												<small style="display: none; font-size: 1px">대기</small>
											</td>
										</c:when>
										<c:otherwise>
											<c:if test="${h.reserveCheck == 1 }">
												<td>예약승인</td>
											</c:if>
											<c:if test="${h.reserveCheck == 2 }">
												<td>예약취소</td>
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
									<li class="page-item"><a class="page-link active"
										href="?page=${page }">${page }</a></li>
								</c:if>
								<c:if test="${page ne currentPage }">
									<li class="page-item"><a class="page-link"
										href="?page=${page }">${page }</a></li>
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
		//테이블 소팅
		function sortTable(num) {
		  var table, rows, switching, i, x, y, shouldSwitch, count;
		  table = document.getElementById("myTable");
		  switching = true;
		  count = 0;
		  while (switching) {
		    switching = false;
		    rows = table.rows;
		    for (i = 1; i < (rows.length - 1); i++) {
		      shouldSwitch = false;
		      x = rows[i].getElementsByTagName("TD")[num];
		      y = rows[i + 1].getElementsByTagName("TD")[num];
		      if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
		        shouldSwitch = true;
		        break;
		      }
		    }
		    
		    if (shouldSwitch) {
		      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
		      count += 1;
		      switching = true;
		    }
		  }
		  if(count == 0){
			  sortTableDesc(num);
		  }
		}
		
		function sortTableDesc(num) {
			  var table, rows, switching, i, x, y, shouldSwitch;
			  table = document.getElementById("myTable");
			  switching = true;
			  while (switching) {
			    switching = false;
			    rows = table.rows;
			    for (i = 1; i < (rows.length - 1); i++) {
			      shouldSwitch = false;
			      x = rows[i].getElementsByTagName("TD")[num];
			      y = rows[i + 1].getElementsByTagName("TD")[num];
			      if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
			        shouldSwitch = true;
			        break;
			      }
			    }
			    
			    if (shouldSwitch) {
			      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
			      switching = true;
			    }
			  }
			}
		
		//테이블 필터링
		function myFunction() {
		  var input, filter, table, tr, td, i, txtValue;
		  input = document.getElementById("myInput");
		  filter = input.value.toUpperCase();
		  tbody = document.getElementById("myTbody");
		  tr = tbody.getElementsByTagName("tr");
		  for (i = 0; i < tr.length; i++) {
		  var arr = [];
			  for(j=0; j<8; j++){
			    td = tr[i].getElementsByTagName("td")[j];
			    if (td) {
			      txtValue = td.textContent || td.innerText;
			      if (txtValue.toUpperCase().indexOf(filter) > -1) {
			    	arr.push("exist");
			      }
			    }   
			}
			if(arr.indexOf("exist") > -1){
			  tr[i].style.display = "";
	      } else {
	        tr[i].style.display = "none";
		  }
		}
		}
		
		//승인, 거부 버튼 기능
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
				  text: '취소되었습니다.',
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