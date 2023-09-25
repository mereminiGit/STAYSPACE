<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 모달 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
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
				style="width: 30%; height: 700px; float: left; margin-right: 1.5%">
				<div class="col-xl">
					<div class="card mb-4">
						<div
							class="card-header d-flex justify-content-between align-items-center">
							<h5 class="mb-0">${m.memberId }Detail page</h5>
							<small class="text-muted float-end"></small>
						</div>
						<div class="card-body">
							<form>
								<div class="mb-3">
									<label class="form-label" for="basic-icon-default-fullname">Profile
										Image</label> <img src="image/member/defaultimg.png" alt="user-avatar"
										class="d-block rounded" height="200" width="200"
										id="uploadedAvatar" />
								</div>
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

			<div class="row" style="width: 70%; height: 700px; float: left;">
				<div class="col-xl">
					<div class="card mb-4" style="height: 680px;">
						<h5 class="card-header">Reply</h5>
						<div class="table-responsive text-nowrap">
							<table class="table table-hover">
								<thead>
									<tr>
										<th>Img</th>
										<th>Space Name</th>
										<th>Content</th>
										<th>Write Date</th>
										<th>Grade</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody class="table-border-bottom-0">
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
													<td><img src="image/member/defaultimg.png"
														class="rounded-circle" alt="default" style="width: 30px"></td>
												</c:when>
												<c:otherwise>
													<td><img src="image/member/${reply.replyImage }"
														class="rounded-circle" alt="default" style="width: 30px"></td>
												</c:otherwise>
											</c:choose>
											<td>${reply.spaceName }</td>
											<td>${reply.replyContent }</td>
											<td>${reply.replyDate }</td>
											<td>${reply.replyStar }</td>
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
			<c:forEach items="${reserve }" var="r">
				<div class="card mb-3" style="float: left; margin-right: 1.5%">
					<div class="row g-0">
						<div class="col-md-4">
							<img class="card-img card-img-left"
								src="image/space/${r.reserveImg }" alt="Card image"
								style="height: 100%; object-fit: cover;" />
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
									<strong>가격:</strong> ${r.reservePrice }
									&nbsp;&nbsp;&nbsp;&nbsp;<strong>예약날짜:</strong>
									${r.reserveStartDate }
								</p>
								<p class="card-text" style="font-size: 14px">
									<strong>예약승인여부:</strong> ${r.reserveCheck }
									&nbsp;&nbsp;&nbsp;&nbsp;<strong>예약승인날짜:</strong>
									${r.reserveCheckoutDate }
								</p>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
			<!-- <div class="card mb-3" style="float: right">
                    <div class="row g-0">
                      <div class="col-md-4">
                        <img class="card-img card-img-left" src="../assets/img/elements/12.jpg" alt="Card image" />
                      </div>
                      <div class="col-md-8">
                        <div class="card-body">
                          <h5 class="card-title">Card title</h5>
                          <p class="card-text">
                            This is a wider card with supporting text below as a natural lead-in to additional content.
                            This content is a little bit longer.
                          </p>
                          <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                        </div>
                      </div>
                    </div>
                  </div>  -->
			<!--/ Horizontal -->
		</div>
	</div>
	<script>
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