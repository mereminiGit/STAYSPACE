<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<!DOCTYPE html>
		<html lang="en" class="light-style layout-menu-fixed" dir="ltr" data-theme="theme-default"
			data-assets-path="../assets/" data-template="vertical-menu-template-free">

		<head>

			<title>Stay Space/ 예약내역</title>
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
			<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>


			<meta name="description" content="" />

		</head>

		<body>
			<!-- Layout wrapper -->
			<div class="layout-wrapper layout-content-navbar">
				<div class="layout-container">
					<!-- Menu -->
					<%-- <jsp:include page="./membermenu.jsp" /> --%>
					<!-- / Menu -->

					<!-- Layout container -->
					<div class="layout-page">
						<!-- 언니가 작성하고 싶은거.. -->
						<!-- Content wrapper -->
						<div class="content-wrapper">
							<!-- Content -->

							<div class="container-xxl flex-grow-1 container-p-y">
								<h4 class="fw-bold py-3 mb-4">
									<span class="text-muted fw-light">My Page / </span>예약 내역
								</h4>

								<!-- Basic Bootstrap Table -->
								<div class="card">
									<h5 class="card-header">Reservation details</h5>
									<div class="table-responsive text-nowrap">
										<table class="table">
											<thead>
												<tr id="thfont">
													<th>SPACE IMG</th>
													<th>NAME</th>
													<th>RESERVATION DATE</th>
													<th>PAYMENT DATE</th>
													<th>PRICE</th>
													<th>APPROVAL</th>
													<th>CANCEL A RESERVATION</th>
												</tr>
											</thead>
											<tbody class="table-border-bottom-0" id="tlist">
												<c:choose>
													<c:when test="${empty reservation}">
														<tr>
															<td colspan="7" align="center">데이터가 존재하지 않습니다.</td>
														</tr>
													</c:when>
													<c:otherwise>
													<c:forEach items="${reservation}" var="r">
														<tr>
															<td><i class="fab fa-angular fa-lg text-danger me-3"></i><a
																	href="#"><img id="stayimg" alt="stay"
																		src="member/image/${r.reservationImage }"></a></td>
															<td>${r.spaceName }</td>
															<td>${r.reserveStartDate }</td>
															<td>2023/09/17</td>
															<td>${r.reservePrice }</td>
															<td><span
																	class="badge bg-label-primary me-1"><strong>예약확정</strong></span>
															</td>
															<td>
																<div class="dropdown" id="deletecenter">
																	<div class="deletebtn">
																		<a class="" href="javascript:void(0);">
																			<i class="bx bx-trash me-2"></i> Cancel</a>
																	</div>
																</div>
															</td>
														</tr>
														<tr>
															<td><i class="fab fa-react fa-lg text-info me-3"></i><a
																	href="#"><img id="stayimg" alt="stay"
																		src="member/image/숙소1.jpg"></a></td>
															<td>소게</td>
															<td>2023/09/17</td>
															<td>2023/09/17</td>
															<td>120,000원</td>
															<td><span class="badge bg-label-success me-1">예약취소</span>
															</td>
															<td>
																<div class="dropdown" id="deletecenter">
																	<div class="deletebtn">
																		<a class="" href="javascript:void(0);">
																			<i class="bx bx-trash me-2"></i> Cancel</a>
																	</div>
																</div>
															</td>
														</tr>
														<tr>
															<td><i class="fab fa-vuejs fa-lg text-success me-3"></i><img
																	id="stayimg" alt="시호" src="member/image/일일시호.jpg">
															</td>
															<td>Trevor Baker</td>
															<td>2023/09/17</td>
															<td>2023/09/17</td>
															<td>120,000원</td>
															<td><span
																	class="badge bg-label-primary me-1"><strong>예약확정</strong></span>
															</td>
															<td>
																<div class="dropdown" id="deletecenter">
																	<div class="deletebtn">
																		<a class="" href="javascript:void(0);">
																			<i class="bx bx-trash me-2"></i> Cancel</a>
																	</div>
																</div>
															</td>
														</tr>
														<tr>
															<td><i class="fab fa-vuejs fa-lg text-success me-3"></i><img
																	id="stayimg" alt="시호" src="member/image/일일시호.jpg">
															</td>
															<td>Jerry Milton</td>
															<td>2023/09/17</td>
															<td>2023/09/17</td>
															<td>120,000원</td>
															<td><span
																	class="badge bg-label-info me-1"><strong>예약승인대기</strong></span>
															</td>
															<td>
																<div class="dropdown" id="deletecenter">
																	<div class="deletebtn">
																		<a class="" href="memberHomecancel.do">
																			<i class="bx bx-trash me-2"></i> Cancel</a>
																	</div>
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
								<!--/ Basic Bootstrap Table -->


							</div>
							<!-- / Layout page 내가작성하고싶은거 끝 -->
						</div>
					</div>
				</div>

				<script>
					$('.deletebtn').on('click', function () {
						Swal.fire({
							title: '예약을 취소하시겠습니까?',
							text: '해당 상품의 취소정책에 따라 고객님이 선택하신 결제방식으로 환불이 진행됩니다.',
							icon: 'warning',
							showCancelButton: true,
							confirmButtonColor: '#3085d6',
							cancelButtonColor: '#d33',
							confirmButtonText: 'Yes'
						}).then((result) => {
							if (result.isConfirmed) {
								Swal.fire(
									'Cancelled!',
									'예약이 취소되었습니다.',
									'success'
								)
							}
						})
					})
					$('.deletebtn').on('click', function () {

					})
				</script>
		</body>

		</html>