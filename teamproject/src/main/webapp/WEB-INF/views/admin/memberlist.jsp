<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<!-- jquery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<!-- 모달 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<style>
.myInput {
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
				<span class="text-muted fw-light">Member </span> management
			</h4>
			<!-- Hoverable Table rows -->
			<div class="card">
				<h5 class="card-header">Total Member List</h5>
				<div class="table-responsive text-nowrap">
				<div id="float">
				&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" class="myInput"
						onkeyup="myFunction(0)" placeholder="Search for somethings.."
						><br>
						</div>
					<table class="table table-hover myTable">
						<thead>
							<tr>
								<!-- <th>Image</th>  -->
								<th onclick="sortTable(0,0)">Id</th>
								<th onclick="sortTable(0,1)">Name</th>
								<th onclick="sortTable(0,2)">Email</th>
								<th onclick="sortTable(0,3)">Tel</th>
								<th onclick="sortTable(0,4)">Category</th>
								<th>Actions</th>
							</tr>
						</thead>
						<tbody class="table-border-bottom-0 myTbody">
							<c:forEach items="${members }" var="m">
								<tr mid="${m.memberId }">
									<!-- <c:choose>
										<c:when test="${m.memberImage eq null}">
											<td onclick="adminmemberdetail('${m.memberId }')"><img
												src="image/member/defaultimg.png" class="rounded-circle"
												alt="default" style="width: 30px"></td>
										</c:when>
										<c:otherwise>
											<td onclick="adminmemberdetail('${m.memberId }')"><img
												src="image/member/${m.memberImage }" class="rounded-circle"
												alt="default" style="width: 30px"></td>
										</c:otherwise>
									</c:choose> -->
									<td onclick="adminmemberdetail('${m.memberId }')">${m.memberId }</td>
									<td onclick="adminmemberdetail('${m.memberId }')">${m.memberName }</td>
									<td onclick="adminmemberdetail('${m.memberId }')">${m.memberEmail }</td>
									<td onclick="adminmemberdetail('${m.memberId }')">${m.memberTel }</td>
									<td onclick="adminmemberdetail('${m.memberId }')">${m.memberCheck }</td>
									<td>
										<div class="dropdown">
											<button type="button"
												class="btn p-0 dropdown-toggle hide-arrow memberdelete">
												<i class="bx bx-trash me-1"></i> Delete
											</button>
										</div>
									</td>
								</tr>
							</c:forEach>
						</tbody>
						<caption style="padding-left: 20px">
							<b>Total: ${count }</b>
						</caption>
					</table>
				</div>
				<br>
				<!-- pagination -->
				<nav aria-label="Page navigation">
					<ul class="pagination justify-content-center">
						<!-- <li class="page-item prev"><a class="page-link"
							href="?page=${currentPage-1 }"><i
								class="tf-icon bx bx-chevrons-left"></i></a></li>  -->
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
						<!-- <li class="page-item next"><a class="page-link"
							href="?page=${currentPage+1 }"><i
								class="tf-icon bx bx-chevrons-right"></i></a></li>  -->
					</ul>
				</nav>
				<!--  -->
			</div>
			<!--/ Hoverable Table rows -->

		</div>
	</div>
	<form id="detailForm" action="AjaxMemberDetail.do" method="post">
		<input type="hidden" id="memberId" name="memberId">
	</form>

	<script>
	//테이블 소팅
	function sortTable(tno,num) {
	  var table, rows, switching, i, x, y, shouldSwitch, count;
	  table = document.getElementsByClassName("myTable")[tno];
	  switching = true;
	  count = 0;
	  while (switching) {
	    switching = false;
	    rows = table.rows;
	    for (i = 1; i < (rows.length - 1); i++) {
	      shouldSwitch = false;
	      x = rows[i].getElementsByTagName("TD")[num];
	      y = rows[i + 1].getElementsByTagName("TD")[num];
	      if(isNaN(Number(x.innerHTML)) && isNaN(Number(y.innerHTML))){
		      if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
		        shouldSwitch = true;
		        break;
		      }
	      }else{
	    	  if (Number(x.innerHTML) > Number(y.innerHTML)) {
			        shouldSwitch = true;
			        break;
			      }
	      }
	    }
	    
	    if (shouldSwitch) {
	      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
	      count += 1;
	      switching = true;
	    }
	  }
	  if(count == 0){
		  sortTableDesc(tno,num);
	  }
	}
	
	function sortTableDesc(tno,num) {
		  var table, rows, switching, i, x, y, shouldSwitch;
		  table = document.getElementsByClassName("myTable")[tno];
		  switching = true;
		  while (switching) {
		    switching = false;
		    rows = table.rows;
		    for (i = 1; i < (rows.length - 1); i++) {
		      shouldSwitch = false;
		      x = rows[i].getElementsByTagName("TD")[num];
		      y = rows[i + 1].getElementsByTagName("TD")[num];
		      if(isNaN(x.innerHTML) && isNaN(y.innerHTML)){
			      if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
			        shouldSwitch = true;
			        break;
			      }
		      }else{
		    	  if (Number(x.innerHTML) < Number(y.innerHTML)) {
				        shouldSwitch = true;
				        break;
				      }
		      }
		    }
		    
		    if (shouldSwitch) {
		      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
		      switching = true;
		    }
		  }
		}
	
	//테이블 필터링
	function myFunction(tno) {
	  var input, filter, table, tr, td, i, txtValue;
	  input = document.getElementsByClassName("myInput")[tno];
	  filter = input.value.toUpperCase();
	  tbody = document.getElementsByClassName("myTbody")[tno];
	  tr = tbody.getElementsByTagName("tr");
	  for (i = 0; i < tr.length; i++) {
	  var arr = [];
	  var tdArr = tr[0].getElementsByTagName("td");
		  for(j=0; j<tdArr.length; j++){
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
	
		//회원 상세보기
		function adminmemberdetail(id){
			let form = $('#detailForm');
			$('input[name=memberId]').val(id);
			form.submit();
		}
		
        //삭제 이벤트 
        $('.memberdelete').on('click', function (e) {
          //e.target.parentElement.parentElement.parentElement.remove();
          let mid = e.target.parentElement.parentElement.parentElement.getAttribute('mid');
          Swal.fire({
            text: "회원 삭제하시겠습니까?",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes'
          }).then((result) => {
            if (result.isConfirmed) {
              memberRemove(mid, function (result) {
                if (result.retCode == 'Success') {
                  e.target.parentElement.parentElement.parentElement.remove();
                  Swal.fire({
                    icon: 'success',
                    text: '삭제 성공',
                  }).then((result)=>{
                	  location.href = "memberlist.do";
                  })
                }else if (result.retCode == 'Fail') {
                  Swal.fire({
                    icon: 'error',
                    text: '처리 중 에러 발생',
                  })
                } else {
                  Swal.fire({
                    icon: 'error',
                    text: '잘못된 코드 반환',
                  })
                }
              })
            }
        })
      })
        function memberRemove(memberId, callback) {
          fetch('AjaxMemberDelete.do?mid=' + memberId)
            .then(resolve => resolve.json())
            .then(result => callback(result))
            .catch();
        }
      </script>

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

	<!-- Place this tag in your head or just before your close body tag. -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>
</body>

</html>