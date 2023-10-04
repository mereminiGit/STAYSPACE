<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
				<span class="text-muted fw-light">Space</span> Detail Page
			</h4>
			<!-- Card layout -->

			<!-- Card Groups -->
			<div class="card-group mb-5">
				<div class="card">
					<img class="card-img-top" src="image/space/${s.spaceImageMain }"
						alt="Card image cap" style="objcet-fit: cover; height: 459px;" /><small
						class="text-muted" align="center">Main Image</small>
					<div class="card-body">
						<h5 class="card-title">
							<strong>Space Id</strong>
						</h5>
						<p class="card-text">&nbsp; ${s.spaceId }</p>
						<h5 class="card-title">
							<strong>Name</strong>
						</h5>
						<p class="card-text">&nbsp; ${s.spaceName }</p>
						<h5 class="card-title">
							<strong>Address</strong>
						</h5>
						<p class="card-text">&nbsp; ${s.spaceAddress }</p>
					</div>
				</div>
				<div class="card">
					<img class="card-img-top" src="image/space/${s.spaceImageSub1 }"
						alt="Card image cap" style="objcet-fit: cover; height: 459px;" /><small
						class="text-muted" align="center">Sub Image1</small>
					<div class="card-body">
						<h5 class="card-title">
							<strong>Content</strong>
						</h5>
						<p class="card-text">&nbsp; ${s.spaceContent }</p>
					</div>
				</div>
				<div class="card">
					<img class="card-img-top" src="image/space/${s.spaceImageSub2 }"
						alt="Card image cap" style="objcet-fit: cover; height: 459px;" /><small
						class="text-muted" align="center">Sub Image2</small>
					<div class="card-body">
						<h5 class="card-title">
							<strong>Price</strong>
						</h5>
						<p class="card-text">&nbsp; <fmt:formatNumber value="${s.spacePrice }" type="currency" currencySymbol="￦"/></p>
						<h5 class="card-title">
							<strong>Type</strong>
						</h5>
						<p class="card-text">&nbsp; ${s.spaceType }</p>
						<h5 class="card-title">
							<strong>Grade</strong>
						</h5>
						<p class="card-text">
							<c:forEach begin="1" end="${s.spaceStar }">
								<span>★</span>
							</c:forEach>
							<c:forEach begin="1" end="${5-s.spaceStar }">
								<span>☆</span>
							</c:forEach>
						</p>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-xl">
					<div class="card mb-4">
						<h5 class="card-header">Reply  <span style="color:#aaa"><small>(Total Count: ${replycount })</small></span></h5>
						<div class="table-responsive text-nowrap">
						<div id="float">
				&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" class="myInput"
						onkeyup="myFunction(0)" placeholder="Search for somethings.."
						>
						<br>
						</div>
							<table class="table table-hover myTable" id="replyTable" style="table-layout: fixed;">
								<thead>
									<tr>
										<th>Img</th>
										<th onclick="sortTable(0,1)">Space Name</th>
										<th style="width: 40%" onclick="sortTable(0,2)">Content</th>
										<th onclick="sortTable(0,3)">Write Date</th>
										<th onclick="sortTable(0,4)">Grade</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody class="table-border-bottom-0 myTbody">
									<c:choose>
										<c:when test="${empty reply }">
											<tr>
												<td colspan="6" align="center">해당 공간에 대한 후기가 없습니다.</td>
											</tr>
										</c:when>
										<c:otherwise>
											<c:forEach items="${replyList }" var="reply">
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
													<td class="detailContent" data-bs-toggle="modal" data-bs-target="#modalScrollable">${reply.memberId }</td>
													<td class="detailContent" data-bs-toggle="modal" data-bs-target="#modalScrollable" style="overflow: hidden; text-overflow: ellipsis;">${reply.replyContent }</td>
													<td class="detailContent" data-bs-toggle="modal" data-bs-target="#modalScrollable">${reply.replyDate }</td>
													<td>
														<c:forEach begin="1" end="${reply.replyStar }">
															<span>★</span>
														</c:forEach> <c:forEach begin="1" end="${5-reply.replyStar }">
															<span>☆</span>
														</c:forEach></td>
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
							<!-- pagination -->
							<br>
					<nav aria-label="Page navigation">
						<ul class="pagination justify-content-center">
							<!-- <li class="page-item prev">
                              <a class="page-link" href="?page=${currentPage-1 }"
                                ><i class="tf-icon bx bx-chevrons-left"></i
                              ></a>
                            </li> -->
							<c:forEach var="rppage" begin="1" end="${rppages }">
								<c:if test="${rppage eq rpcurrentPage }">
									<li class="page-item"><a class="page-link active"
										href="?rppage=${rppage }&spaceId=${s.spaceId}">${rppage }</a></li>
								</c:if>
								<c:if test="${rppage ne rpcurrentPage }">
									<li class="page-item"><a class="page-link"
										href="?rppage=${rppage }&spaceId=${s.spaceId}">${rppage }</a></li>
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
				</div>
			</div>

			<div class="row">
				<div class="col-xl">
					<div class="card mb-4">
						<h5 class="card-header">Reservation  <span style="color:#aaa"><small>(Total Count: ${reservecount })</small></span></h5>
						<div class="table-responsive text-nowrap">
						<div id="float">
				&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" class="myInput"
						onkeyup="myFunction(1)" placeholder="Search for somethings.."
						><br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<small id="descript">*예약대기 목록 조회시 '대기'입력</small><br>
						<br>
						</div>
							<table class="table table-hover myTable">
								<thead>
									<tr>
										<th onclick="sortTable(1,0)">Reserve Id</th>
										<th onclick="sortTable(1,1)">Member Id</th>
										<th onclick="sortTable(1,2)">Reserved Date</th>
										<th onclick="sortTable(1,3)">Reserve Check</th>
										<th onclick="sortTable(1,4)">Check Out Date</th>
										<!-- <th>Action</th>  -->
									</tr>
								</thead>
								<tbody class="table-border-bottom-0 myTbody">
									<c:choose>
										<c:when test="${empty reserve }">
											<tr>
												<td colspan="6" align="center">해당 공간에 대한 예약이 없습니다.</td>
											</tr>
										</c:when>
										<c:otherwise>
											<c:forEach items="${reserveList }" var="r">
												<tr reserveId="${r.reserveId }">
													<td>${r.reserveId }</td>
													<td>${r.memberId }</td>
													<td>${r.reserveStartDate }</td>
														<c:if test="${r.reserveCheck eq 0}">
															<td><a href="spacewaiting.do" style="color: red">예약대기</a></td>
															<td></td>
														</c:if>
														<c:if test="${r.reserveCheck eq 1}">
															<td>예약승인</td>
															<td>${r.reserveCheckoutDate }</td>
														</c:if>
														<c:if test="${r.reserveCheck eq 2}">
															<td>예약취소</td>
															<td>${r.reserveCheckoutDate }</td>
														</c:if>
													<!-- <td>
														<div class="dropdown">
															<button type="button"
																class="btn p-0 dropdown-toggle hide-arrow reservedelete">
																<i class="bx bx-trash me-1"></i> Delete
															</button>
														</div>
													</td>  -->
												</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>
							<!-- pagination -->
							<br>
					<nav aria-label="Page navigation">
						<ul class="pagination justify-content-center">
							<!-- <li class="page-item prev">
                              <a class="page-link" href="?page=${currentPage-1 }"
                                ><i class="tf-icon bx bx-chevrons-left"></i
                              ></a>
                            </li> -->
							<c:forEach var="rspage" begin="1" end="${rspages }">
								<c:if test="${rspage eq rscurrentPage }">
									<li class="page-item"><a class="page-link active"
										href="?rspage=${rspage }&spaceId=${s.spaceId}">${rspage }</a></li>
								</c:if>
								<c:if test="${rspage ne rscurrentPage }">
									<li class="page-item"><a class="page-link"
										href="?rspage=${rspage }&spaceId=${s.spaceId}">${rspage }</a></li>
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
				</div>
			</div>
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
	      if(isNaN(x.innerHTML) && isNaN(y.innerHTML)){
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
						location.href = "AjaxHostSpaceDetail.do"
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
	
        $('.reservedelete').on('click', function (e) {
            //e.target.parentElement.parentElement.parentElement.remove();
            let reserveId = e.target.parentElement.parentElement.parentElement.getAttribute('reserveId');
            Swal.fire({
              text: "해당 예약을 삭제하시겠습니까?",
              icon: 'warning',
              showCancelButton: true,
              confirmButtonColor: '#3085d6',
              cancelButtonColor: '#d33',
              confirmButtonText: 'Yes'
            }).then((result) => {
              if (result.isConfirmed) {
                reserveRemove(reserveId, function (result) {
                  if (result.retCode == 'Success') {
                    e.target.parentElement.parentElement.parentElement.remove();
                    Swal.fire({
                      icon: 'success',
                      text: '삭제 성공',
                    }).then((result)=>{
                    	location.href = "AjaxHostSpaceDetail.do"
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
          function reserveRemove(reserveId, callback) {
            fetch('AjaxReserveDelete.do?reserveId=' + reserveId)
              .then(resolve => resolve.json())
              .then(result => callback(result))
              .catch();
          }
     </script>
</body>
</html>