<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
				<span class="text-muted fw-light">Member</span> Detail
			</h4>

			<!-- Basic Layout -->
			<div class="row"
				style="width: 30%; float: left; margin-right: 1.5%">
				<div class="col-xl">
					<div class="card mb-4">
						<div
							class="card-header d-flex justify-content-between align-items-center">
							<h5 class="mb-0">${m.memberId } Detail page</h5>
							<small class="text-muted float-end"></small>
						</div>
							<hr style="margin: 0px">
						<div class="card-body">
							<form>
								 <!--<div class="mb-3">
									 <label class="form-label" for="basic-icon-default-fullname">Profile
										 </label> <img src="image/member/defaultimg.png" alt="user-avatar"
										class="d-block rounded" height="200" width="200"
										id="uploadedAvatar" />  
								</div> -->
								<div class="mb-3">
									<label class="form-label" for="basic-icon-default-company">Member
										Id</label>
									<div class="input-group input-group-merge">
										<span id="basic-icon-default-company2"
											class="input-group-text"><i class="bx bx-buildings"></i></span>
										<input type="text" id="basic-icon-default-company"
											class="form-control" value="    ${m.memberId }"
											aria-describedby="basic-icon-default-company2" readonly />
									</div>
								</div>
								<div class="mb-3">
									<label class="form-label" for="basic-icon-default-fullname">Full
										Name</label>
									<div class="input-group input-group-merge">
										<span id="basic-icon-default-fullname2"
											class="input-group-text"><i class="bx bx-user"></i></span> <input
											type="text" class="form-control"
											id="basic-icon-default-fullname" value="    ${m.memberName }"
											aria-describedby="basic-icon-default-fullname2" readonly />
									</div>
								</div>
								<div class="mb-3" style="width: 100%">
									<label class="form-label" for="basic-icon-default-email">Email</label>
									<div class="input-group input-group-merge">
										<span class="input-group-text"><i
											class="bx bx-envelope"></i></span> <input type="text"
											id="basic-icon-default-email" class="form-control"
											value="    ${m.memberEmail }"
											aria-describedby="basic-icon-default-email2" readonly />
									</div>
								</div>
								<div class="mb-3" style="width: 100%">
									<label class="form-label" for="basic-icon-default-phone">Phone
										No</label>
									<div class="input-group input-group-merge">
										<span id="basic-icon-default-phone2" class="input-group-text"><i
											class="bx bx-phone"></i></span> <input type="text"
											id="basic-icon-default-phone" class="form-control phone-mask"
											value="    ${m.memberTel }"
											aria-describedby="basic-icon-default-phone2" readonly />
									</div>
								</div>
							</form>

						</div>
					</div>
				</div>
			</div>

			<div class="row" style="width: 70%; float: left;">
				<div class="col-xl">
					<div class="card mb-4" style="height: 457px;">
						<h5 class="card-header">Reply  <span style="color:#aaa"><small>(Total Count: ${replycount })</small></span></h5>
						<div class="table-responsive text-nowrap">
						<div id="float">
						&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="text" class="myInput"
						onkeyup="myFunction(0)" placeholder="Search for somethings.."
						><br>
						</div>
							<table class="table table-hover myTable" style="table-layout: fixed;">
								<thead>
									<tr>
										<th>Img</th>
										<th onclick="sortTable(0,1)">Space Name</th>
										<th style="width: 25%" onclick="sortTable(0,2)">Content</th>
										<th onclick="sortTable(0,3)">Write Date</th>
										<th onclick="sortTable(0,4)">Grade</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody class="table-border-bottom-0 myTbody">
									<c:choose>
										<c:when test="${empty reply }">
										<tr>
											<td colspan="6" align="center">작성하신 후기가 없습니다.</td>
										</tr>
										</c:when>
										<c:otherwise>
									<c:forEach items="${reply }" var="reply">
										<tr rid="${reply.replyId }">
											<c:choose>
												<c:when test="${reply.replyImage eq null}">
													<td class="detailContent" data-bs-toggle="modal" data-bs-target="#modalScrollable"><img src="image/member/defaultimg.png"
														class="rounded-circle" alt="default" style="width: 30px"></td>
												</c:when>
												<c:otherwise>
													<td class="detailContent" data-bs-toggle="modal" data-bs-target="#modalScrollable"><img src="image/reply/${reply.replyImage }"
														class="rounded-circle" alt="default" style="width: 30px"></td>
												</c:otherwise>
											</c:choose>
											<td class="detailContent" data-bs-toggle="modal" data-bs-target="#modalScrollable">${reply.spaceName }</td>
											<td class="detailContent" data-bs-toggle="modal" data-bs-target="#modalScrollable" style="overflow: hidden; text-overflow: ellipsis;">${reply.replyContent }</td>
											<td class="detailContent" data-bs-toggle="modal" data-bs-target="#modalScrollable">${reply.replyDate }</td>
											<td class="detailContent" data-bs-toggle="modal" data-bs-target="#modalScrollable">
											<c:forEach begin="1" end="${reply.replyStar }">
											<span>★</span>
											</c:forEach>
											<c:forEach begin="1" end="${5-reply.replyStar }">
											<span>☆</span>
											</c:forEach>
											</td>
											<td>
												<div class="dropdown">
													<button type="button"
														class="btn p-0 dropdown-toggle hide-arrow replydelete">
														<i class="bx bx-trash me-1"></i> Delete
													</button>
												</div>
											</td>
										</tr>
									</c:forEach>
									</c:otherwise>
									</c:choose>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<!-- Horizontal -->
			<h5 class="card-header">Reservation  <span style="color:#aaa"><small>(Total Count: ${replycount })</small></span></h5>
			<c:forEach items="${reserve }" var="r">
				<div class="card mb-3" style="float: left; margin-right: 1.5%; width:48%">
					<div class="row g-0">
						<div class="col-md-4">
							<img class="card-img card-img-left"
								src="image/space/${r.reserveImg }" alt="Card image"
								style="height: 100%; object-fit: cover; width: 100%" />
						</div>
						<div class="col-md-8">
							<div class="card-body">
								<h5 class="card-title">
									Reservation <span class="text-muted fw-light">Information</span>
								</h5>
								<hr>
								<p class="card-text" style="font-size: 14px">
									<strong>대여공간:</strong> ${r.spaceName }
								</p>
								
								<p class="card-text" style="font-size: 14px">
									<strong>가격:</strong> <fmt:formatNumber value="${r.reservePrice }" type="currency" currencySymbol="￦"/>
									&nbsp;&nbsp;&nbsp;&nbsp;<strong>예약날짜:</strong>
									${r.reserveStartDate }
								</p>
								<c:choose>
									<c:when test="${r.reserveCheck eq 0}">
										<p class="card-text" style="font-size: 14px">
											<strong>예약승인여부:</strong> 미승인
										</p>
									</c:when>
									<c:otherwise>
										<p class="card-text" style="font-size: 14px">
											<strong>예약승인여부:</strong> 승인
											&nbsp;&nbsp;&nbsp;&nbsp;<strong>예약승인날짜:</strong>
											${r.reserveCheckoutDate }
										</p>
								</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<!-- Modal -->
    <div class="modal fade" id="modalScrollable" tabindex="-1" aria-hidden="true">
      <div class="modal-dialog modal-dialog-scrollable" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="modalScrollableTitle">Reply Content Detail</h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
          <p></p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
              Close
            </button>
          </div>
        </div>
      </div>
    </div>
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
	
	//후기 상세보기
	$('.detailContent').on('click',function(e){
		//console.log(e.target.parentElement.children[2].innerText);
		$('.modal-body').text(e.target.parentElement.children[2].innerText);
	})
	//삭제 이벤트 
        $('.replydelete').on('click', function (e) {
          //e.target.parentElement.parentElement.parentElement.remove();
          let rid = e.target.parentElement.parentElement.parentElement.getAttribute('rid');
          Swal.fire({
            text: "해당 후기를 삭제하시겠습니까?",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes'
          }).then((result) => {
            if (result.isConfirmed) {
              replyRemove(rid, function (result) {
                if (result.retCode == 'Success') {
                  e.target.parentElement.parentElement.parentElement.remove();
                  Swal.fire({
                    icon: 'success',
                    text: '삭제 성공',
                  }).then((result)=>{
						location.href = "AjaxMemberDetail.do"
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
        function replyRemove(replyId, callback) {
          fetch('AjaxReplyDelete.do?rid=' + replyId)
            .then(resolve => resolve.json())
            .then(result => callback(result))
            .catch();
        }
     </script>
</body>
</html>