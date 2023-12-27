<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- img css -->
<style>
img.stayimg {
	width: 120px;
	height: 80px;
	border-radius: 10px;
}
</style>
<!-- jquery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<!-- 모달 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
	<!-- Content wrapper -->
	<div class="content-wrapper">
		<!-- Content -->

		<div class="container-xxl flex-grow-1 container-p-y">
			<h4 class="fw-bold py-3 mb-4">
				<span class="text-muted fw-light">Space </span> Management
			</h4>
			<h5>
				<span style="color: #aaa">Total Count: ${count }</span>
			</h5>
			<!-- Hoverable Table rows -->
			<div class="row row-cols-1 row-cols-md-3 g-4 mb-5" id="list">
				<c:forEach items="${spaces }" var="s">
					<div class="col">
						<div class="card h-100">
							<img class="card-img-top" src="image/space/${s.spaceImageMain}"
								alt="Card image cap" style="height: 250px; object-fit: cover;" />
							<div class="card-body" sid="${s.spaceId }">
								<h4 class="card-title" style="display: inline-block;">${s.spaceName }</h4>
								<div class="dropdown" style="float: right">
									<button type="button"
										class="btn p-0 dropdown-toggle hide-arrow"
										data-bs-toggle="dropdown">
										<i class="bx bx-dots-vertical-rounded"></i>
									</button>
									<div class="dropdown-menu">
										<button type="button" class="dropdown-item spaceedit"
											data-bs-toggle="modal" data-bs-target="#modalCenter">
											<i class="bx bx-edit-alt me-1"></i> Edit
										</button>
										<button type="button" class="dropdown-item spacedelete">
											<i class="bx bx-trash me-1"></i> Delete
										</button>
									</div>
								</div>
								<hr>
								<p class="card-text">
									<strong>ID:&nbsp;&nbsp;&nbsp;</strong><span>${s.spaceId }</span>
								</p>
								<p class="card-text">
									<strong>ADDRESS:&nbsp;&nbsp;&nbsp;</strong><span>${s.spaceAddress }</span>
								</p>
								<p class="card-text">
									<strong>PRICE:&nbsp;&nbsp;&nbsp;￦</strong><span>${s.spacePrice }</span>
								</p>
								<p class="card-text">
									<strong>TYPE:&nbsp;&nbsp;&nbsp;</strong><span>${s.spaceType }</span>
								</p>
								<p class="card-text" style="display: none">
									<strong>CONTENT:&nbsp;&nbsp;&nbsp;</strong><span>${s.spaceContent }</span>
								</p>
								<p class="card-text">
									<strong>Hit:&nbsp;&nbsp;&nbsp;</strong><span>${s.spaceHit }</span>
								</p>
								<div align="center">
									<button type="button" class="btn btn-outline-dark"
										onclick="adminspacedetail('${s.spaceId }')">Show
										Detail</button>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<!--/ Hoverable Table rows -->


		</div>
	</div>
	<form id="frm" method="post" action="AjaxHostSpaceModify.do"
		enctype="multipart/form-data">
		<!-- Modal -->
		<div class="modal fade" id="modalCenter" tabindex="-1"
			aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">

					<div class="modal-header">
						<h5 class="modal-title" id="modalCenterTitle">대여공간 수정항목</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="mb-3">
								<div class="row">
									<div class="col mb-3">
										<label for="nameWithTitle" class="form-label">Space Id</label>
										<input type="text" id="idWithTitle" class="form-control"
											name="sid" readonly />
									</div>
								</div>
								<label for="formFile" class="form-label">Main 이미지 파일 선택</label>
								<input class="form-control" name="imgfile1" type="file"
									id="formFile1" multiple /> <label for="formFile"
									class="form-label">Sub1 이미지 파일 선택</label> <input
									class="form-control" name="imgfile2" type="file" id="formFile2"
									multiple /> <label for="formFile" class="form-label">Sub2
									이미지 파일 선택</label> <input class="form-control" name="imgfile3"
									type="file" id="formFile3" multiple />
							</div>
						</div>
						<div class="row">
							<div class="col mb-3">
								<label for="nameWithTitle" class="form-label">Name</label> <input
									type="text" id="nameWithTitle" class="form-control"
									name="sname" placeholder="이름을 입력하세요." />
							</div>
						</div>
						<div class="row">
							<div class="col mb-3">
								<label for="AddressWithTitle" class="form-label">Address</label>
								<input type="text" id="AddressWithTitle" class="form-control"
									name="saddress" placeholder="주소를 입력하세요." />
							</div>
						</div>
						<div class="row">
							<div class="col mb-3">
								<label for="PriceWithTitle" class="form-label">Price</label> <input
									type="text" id="PriceWithTitle" class="form-control"
									name="sprice" placeholder="가격을 입력하세요." />
							</div>
						</div>
						<div class="row">
							<div class="col mb-3">
								<label for="PriceWithTitle" class="form-label">Type</label> <select
									id="stype" name="stype" class="form-control">
									<option value="Commercial">Commercial</option>
									<option value="House">House</option>
									<option value="Studio">Studio</option>
								</select>
							</div>
						</div>
						<div class="row">
							<div class="col mb-3">
								<label class="form-label" for="basic-default-message">Content</label>
								<textarea id="basic-default-message" name="scontent"
									class="form-control" placeholder="대여공간에 대한 설명을 입력하세요."></textarea>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-outline-secondary"
							data-bs-dismiss="modal">취소하기</button>
						<button type="submit" class="btn btn-dark change"
							data-bs-dismiss="modal">변경하기</button>
					</div>
				</div>
			</div>
		</div>
	</form>
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
	<form id="detailForm" action="AjaxHostSpaceDetail.do" method="post">
		<input type="hidden" id="spaceId" name="spaceId">
	</form>
	<c:if test="${not empty retCode }">
		<div id="${retCode }"></div>
	</c:if>
	<script>
			//수정시 알람창
			if($('#Success').length){
				Swal.fire({
					  icon: 'success',
					  text: '수정되었습니다.',
					}).then(function () {
						location.href = 'BusinessSpaceList.do';
					});
			}
			if($('#Fail').length){
				Swal.fire({
					  icon: 'error',
					  text: '처리 중 오류 발생',
					}).then(function () {
						location.href = 'BusinessSpaceList.do';
					});
			}
			
			  //공간 상세보기
			  function adminspacedetail(id){
				  let form = $('#detailForm');
				  $('input[name=spaceId]').val(id);
				  form.submit();
			  }
              //삭제 이벤트 
              $('.spacedelete').on('click', function(e){
      			let sid = e.target.parentElement.parentElement.parentElement.getAttribute('sid');
      			Swal.fire({
      	            text: "대여공간을 삭제하시겠습니까?",
      	            icon: 'warning',
      	            showCancelButton: true,
      	            confirmButtonColor: '#3085d6',
      	            cancelButtonColor: '#d33',
      	            confirmButtonText: 'Yes'
      	          }).then((result) => {
      	        	  if(result.isConfirmed){
		      			spaceRemove(sid,function(result){
		      				if(result.retCode == 'Success'){
		      					e.target.parentElement.parentElement.parentElement.parentElement.parentElement.remove();
		      					Swal.fire({
									  icon: 'success',
									  text: '삭제 성공',
									}).then((result)=>{
					                	  location.href = "BusinessSpaceList.do";
					                  })
		    				}else if(result.retCode == 'Fail'){
		 						Swal.fire({
								  icon: 'error',
								  text: '처리 중 에러 발생',
								})
		    				}else{
		    					Swal.fire({
								  icon: 'error',
								  text: '잘못된 코드 반환',
								})
		    				}
	      	        	  })
	      	          }
                  })
	      			})
	        
              function spaceRemove(spaceId, callback){
            	  fetch('AjaxSpaceDelete.do?sid='+spaceId)
            	  .then(resolve => resolve.json())
            	  .then(result => callback(result))
            	  .catch();
              }
              
              //수정 이벤트
              $('.spaceedit').on('click',function(e){
            	  let tr = e.target.parentElement.parentElement.parentElement.parentElement;
            	  console.log(tr);
            	  
            	  let spaceid = tr.children[1].children[3].children[1].innerText;
            	  let spacename = tr.children[1].children[0].innerText;
            	  let spaceaddress = tr.children[1].children[4].children[1].innerText;
            	  let spaceprice = tr.children[1].children[5].children[1].innerText;
            	  let spacetype = tr.children[1].children[6].children[1].innerText;
            	  let spacecontent = tr.children[1].children[7].children[1].innerText;
            	  //console.log(spacename + spaceaddress + spaceprice + spacetype);
            	  
            	  $('input[name=sid]').val(spaceid);
            	  $('input[name=sname]').val(spacename);
            	  $('input[name=saddress]').val(spaceaddress);
            	  $('input[name=sprice]').val(spaceprice);
            	  $('textarea').val(spacecontent);
            	  $('#stype').val(spacetype).prop('selected', true);
            	  
            	  
              	})
            	
              </script>

	<!-- Core JS -->
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

	<!-- Page JS 
    <script src="sneat/assets/js/dashboards-analytics.js"></script>

    <!-- Place this tag in your head or just before your close body tag. -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>

</body>
</html>