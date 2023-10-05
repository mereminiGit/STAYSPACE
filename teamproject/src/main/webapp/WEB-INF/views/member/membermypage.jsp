<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
			<!DOCTYPE html>
			<html lang="en" class="light-style layout-menu-fixed" dir="ltr" data-theme="theme-default"
				data-assets-path="../assets/" data-template="vertical-menu-template-free">

			<head>
				<meta charset="UTF-8">
				<title>Insert title here</title>
				<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
				<!-- Icons. Uncomment required icon fonts -->
				<link rel="stylesheet" href="member/assets/vendor/fonts/boxicons.css" />
				<style type="text/css">
					#nav-reservation-in,
					#nav-edituser #editInformation #nav-wishlist {
						font-family: 'Noto Sans KR', sans-serif;
						/* width: 1300px; */
						text-align: center;
					}

					#nav-reservation-in th {
						font-weight: 500;
					}

					#nav-reservation-in td {
						font-weight: 400;
						vertical-align: middle;
					}

					#edituser input {
						padding-left: 15px;
						color: #87826e;
					}

					#edituser label {
						font-family: 'Noto Sans KR', sans-serif;
						font-weight: 500;
						font-size: large;
						float: left;
					}
					h5{
						font-family: 'Noto Sans KR', sans-serif;
					}
					#withdrawal {
						font-family: 'Noto Sans KR', sans-serif;
					}

					#wishlist p {
						font-family: 'Noto Sans KR', sans-serif;
						font-weight: 400;
						text-align: center;
					}

					.btnwrap {
						disply: flex !important;
						align-items: center !important;
						justify-content: space-around !important;
						margin-left: 50px;
					}
					#wishdiv{
						padding:0px;
					}
					#wishImg{
						height: 500px;
					}
				</style>
			</head>

			<body>
				<section
					class="hero-section jarallax d-flex align-items-center justify-content-center padding-medium pb-5"
					style="background: url(vaso-html/images/hero-img.jpg) no-repeat;">
					<div class="hero-content">
						<div class="container">
							<div class="row">
								<div class="text-center padding-large no-padding-bottom">
									<h1>My Page</h1>
									<div class="breadcrumbs">
										<span class="item"> <a href="index.html">Home ></a>
										</span> <span class="item">My Page</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>

				<section class="login-tabs padding-large" style="padding-bottom: 0">
					<div class="container">
						<div class="row">
							<div class="tabs-listing">
								<!-- nav -->
								<nav>
									<div class="nav nav-tabs d-flex justify-content-center" id="nav-tab" role="tablist">
										<!-- Sign -->
										<button class="nav-link text-uppercase active" id="nav-reservation-in-tab"
											data-bs-toggle="tab" data-bs-target="#nav-reservation-in" type="button"
											role="tab" aria-controls="nav-reservation-in"
											aria-selected="true">Reservation
											details</button>
										<!-- wishlist 메뉴바 -->
										<button class="nav-link text-uppercase" id="nav-wishlist-tab"
											data-bs-toggle="tab" data-bs-target="#nav-wishlist" type="button" role="tab"
											aria-controls="nav-wishlist" aria-selected="false">Wish list</button>
										<!-- wishlist 메뉴바-->
										<!-- Register -->
										<button class="nav-link text-uppercase" id="nav-edituser-tab"
											data-bs-toggle="tab" data-bs-target="#nav-edituser" type="button" role="tab"
											aria-controls="nav-edituser" aria-selected="false">Edit profile</button>
										<!-- Register -->
									</div>
								</nav>

								<div class="tab-content" id="nav-tabContent">
									<!-- 예약 목록 -->
									<div class="tab-pane fade active show" id="nav-reservation-in" role="tabpanel"
										aria-labelledby="nav-reservation-in-tab">
										<div class="card">
											<h4 class="card-header"
												style="font-family: 'Noto Sans KR', sans-serif; padding: 30px 16px 30px 16px">
												Reservation details</h4>
											<form id="sform" action="shopdetail.do" method="post" enctype="form-data">
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
																<th>CANCEL</th>
															</tr>
														</thead>

														<tbody class="table-border-bottom-0" id="tlist">
															<c:choose>
																<c:when test="${empty reserve }">
																	<tr>
																		<td colspan="7" align="center">예약 내역이 없습니다.</td>
																	</tr>
																</c:when>
																<c:otherwise>
																	<c:forEach items="${reserve}" var="r">
																		<tr>
																			<td><i
																					class="fab fa-angular fa-lg text-danger me-3"></i><a
																					href="shopdetail.do?spaceId=${r.spaceId }"><img id="stayimg"
																						alt="stay"
																						src="image/space/${r.reserveImg }"
																						style="width: 200px; height: 120px;"></a>
																			</td>
																			<td>${r.spaceName }</td>
																			<td>${r.reserveStartDate }</td>
																			<td>${r.reserveCheckoutDate }</td>
																			<td>
																				<fmt:formatNumber
																					value="${r.reservePrice }"
																					type="currency"
																					currencySymbol="￦" />
																			</td>
																			<td><span class="btn btn-primary"><strong
																						id="reservation_${r.reserveId }">
																						<c:choose>
																							<c:when
																								test="${r.reserveCheck == 0}">
																								예약대기
																							</c:when>
																							<c:when
																								test="${r.reserveCheck == 1}">
																								예약확정
																							</c:when>
																							<c:when
																								test="${r.reserveCheck == 2}">
																								예약취소
																							</c:when>
																						</c:choose>
																					</strong></span></td>
																			<td>
																				<div class="dropdown" id="deletecenter">
																					<div class="deletebtn">
																						<a class="" href="#"
																							onclick="cancelCall('${r.spaceName }','${r.memberId}','${r.reserveId }');">
																							<i
																								class="bx bx-trash me-2"></i>
																							Cancel
																						</a>
																					</div>
																				</div>
																			</td>
																		</tr>
																	</c:forEach>
																	<caption style="padding-left: 20px">
																		Total:${count }</caption>
																</c:otherwise>
															</c:choose>
														</tbody>
													</table>
												</div>
												<input type="hidden" id="memberId" name="memberId"> <input type="hidden"
													id="spaceId" name="spaceId"> <input type="hidden" id="reserveId"
													name="reserveId">
											</form>
										</div>
									</div>

									<!-- wishlist 시작 -->
									<div class="tab-pane fade" id="nav-wishlist" role="tabpanel"
										aria-labelledby="nav-wishlist-tab">
										<div class="content-wrapper">
											<!-- Content -->

											<div class="container-xxl flex-grow-1 container-p-y" id="wishdiv">
												<div class="card">
												<h4 class="card-header"
													style="font-family: 'Noto Sans KR', sans-serif; padding: 30px 16px 30px 16px; text-align: center">
													Wish list</h4>
												<!-- Examples -->
													<div class="row" id="wishlist">
														<c:choose>
															<c:when test="${empty wishList }">
																<p id="nowish" style="padding-top: 24px; padding-bottom: 24px; margin-bottom: 0;">Wish List가 비어있습니다.</p>
															</c:when>
															<c:otherwise>
																<c:forEach items="${wishList}" var="w">
																	<div class="col-md-6 col-lg-4 mb-3" class="cartlist" id="cartid_${w.wishListId}" style="padding-top: 24px; padding-bottom: 24px">
																		<input type="hidden" id="memberId" name="memberId" value="${w.memberId }">
																		<input type="hidden" id="spaceId" name="spaceId" value="${w.spaceId}">
																		<input type="hidden" id="wishListId" name="wishListId" value="${w.wishListId}">
																		<div class="card h-100">
																			<img class="card-img-top" id="wishImg" src="image/space/${w.spaceImage }"
																				alt="Card image cap" />
																			<div class="card-body">
																				<h5 class="card-title" style="font-family: 'Noto Sans KR', sans-serif; text-align: center;">${w.spaceName }</h5>
																				<p class="card-text">
																					<!--숙소 콘텐트있던곳-->
																					<br>
																					예약 날짜 : ${w.wishListStartDate }
																					<br>
																					<br>
																					가격 :
																					<fmt:formatNumber value="${w.spacePrice }" type="currency"
																						currencySymbol="￦" />
																				</p>
																				<div class="btnwrap">
																					<!-- <a href="javascript:void(0)" class="btn btn-outline-primary">Detailed page</a> -->
																					<button type="button" class="btn btn-primary" onclick="detailCall(${w.spaceId})">Detailed
																						page</button>
																					<button type="button" class="btn btn-dark me-2" id="dangerBtn"
																						onclick="deleteCall('${w.memberId }',${w.wishListId})">Delete</button>
																				</div>
																			</div>
																		</div>
																	</div>
																</c:forEach>
															</c:otherwise>
														</c:choose>
													</div>

												</div>
											</div>
											<div class="content-backdrop fade"></div>
										</div>

									</div>
									<!-- 페이징처리 -->
									<!-- 페이징 끝 -->


									<!-- ################ 회원정보 수정 ############### -->
									<div class="tab-pane fade" id="nav-edituser" role="tabpanel"
										aria-labelledby="nav-edituser-tab">
										<!--  -->
										<div class="row">
											<div class="col-md-12">
												<div class="card mb-4" id="editInformation">
													<h4 class="card-header"
														style="font-family: 'Noto Sans KR', sans-serif; padding: 30px 16px 30px 16px; text-align: center;">
														Profile</h4>
													<!-- Account -->
													<%-- <div class="card-body">
														<div
															class="d-flex align-items-start align-items-sm-center gap-4">
															<c:if test="${empty m.memberImage}">
																<img src="image/member/기본프로필.jpg" alt="기본프로필"
																	class="d-block rounded" height="100" width="100"
																	id="uploadedAvatar" />
															</c:if>
															<c:if test="${not empty m.memberImage}">
																<img src="image/member/${m.memberImage }" alt="user-Img"
																	class="d-block rounded" height="100" width="100"
																	id="uploadedAvatar" />
															</c:if>
															<div class="button-wrapper">
																<label for="upload" class="btn btn-primary me-2 mb-4"
																	tabindex="0" onclick=""> <span
																		class="d-none d-sm-block">Upload new
																		photo</span> <i
																		class="bx bx-upload d-block d-sm-none"></i>
																	<input type="file" id="upload"
																		class="account-file-input" hidden
																		accept="image/png, image/jpeg" />
																</label>
																<button type="reset"
																	class="btn btn-outline-secondary account-image-reset mb-4">
																	<i class="bx bx-reset d-block d-sm-none"></i> <span
																		class="d-none d-sm-block">Reset</span>
																</button>

																<p class="text-muted mb-0">Allowed JPG, GIF or PNG. Max
																	size of 800K</p>
															</div>
														</div>
												</div>

												<hr class="my-0" /> --%>
												<div class="card-body">
													<form id="formAccountSettings" method="POST"
														onsubmit="return false">
														<div class="row" id="edituser">
															<div class="mb-3 col-md-6">
																<label for="firstName" class="form-label">ID</label>
																<div class="input-group input-group-merge"
																	style="padding: 0; background-color: #efefef;">
																	<input type="text" class="w-100" id="id" name="id"
																		value="${m.memberId }" readonly="readonly" />
																</div>
															</div>
															<div class="mb-3 col-md-6">
																<label for="firstName" class="form-label">Name</label>
																<input class="w-100" type="text" id="Name" name="Name"
																	value="${m.memberName }" autofocus />
															</div>
															<div class="mb-3 col-md-6">
																<label for="organization"
																	class="form-label">Password</label>
																<input type="password" class="w-100" id="password"
																	name="password" value="" placeholder="password" />
															</div>
															<div class="mb-3 col-md-6">
																<label for="email" class="form-label">E-mail</label>
																<span class="label-body"
																	style="font-family: 'Noto Sans KR', sans-serif;">
																	<a type="button" id="editEmailCheck"
																		onclick="EmailCheck()" data-value="No"
																		style="float: right; color: #87826e">중복체크</a>
																</span> <input class="w-100" type="text" id="email"
																	name="email" value="${m.memberEmail }"
																	placeholder="yedam@example.com" />
																<p id="firstEmail" style="display: none">${m.memberEmail
																	}</p>
															</div>
															<div class="mb-3 col-md-6">
																<label for="organization" class="form-label">Password
																	Check</label> <input type="password" class="w-100"
																	id="passwordcheck" name="passwordcheck" value=""
																	placeholder="password" />
															</div>
															<div class="mb-3 col-md-6">
																<label class="form-label"
																	for="phoneNumber">PhoneNumber</label>
																<div class="input-group input-group-merge"
																	style="padding: 0; background-color: #efefef;">
																	<input type="tel" id="tel" name="tel" class="w-100"
																		value="${m.memberTel }"
																		placeholder="010-1234-4567"
																		readonly="readonly" />
																</div>
															</div>
														</div>
														<div class="mt-2" style="float: right;">
															<button type="submit" class="btn btn-primary me-2 mb-2"
																onclick="editCall('${m.memberId}');">SAVE</button>
															<button type="reset" class="btn btn-dark me-2 mb-2"
																onclick="cancelEdit()">CANCEL</button>
														</div>
													</form>
												</div>
												<!-- /Account -->
											</div>

											<div class="card mb-4">
												<!-- <div class="card" id="withdrawal"> -->
												<h4 class="card-header"
													style="font-family: 'Noto Sans KR', sans-serif; padding: 30px 16px 30px 16px; text-align: center;">
													회원
													탈퇴</h4>
												<div class="card-body">
													<div class="mb-3 col-12 mb-0">
														<div class="alert alert-warning" id="alertwarning"
															style="background-color: #efefef; border: none; color: #212529;">
															<h4 class="alert-heading fw-bold mb-1"
																style="font-family: 'Noto Sans KR', sans-serif; font-weight: 800; color: #87826e">
																정말로 탈퇴하시겠습니까?</h4>
															<br>
															<p class="mb-0"
																style="font-family: 'Noto Sans KR', sans-serif; font-weight: 500">
																탈퇴시 계정을 복구할 수 없습니다.</p>
														</div>
													</div>
													<form id="formAccountDeactivation" onsubmit="return false">
														<div class="form-check mb-3">
															<input class="form-check-input" type="checkbox"
																name="chkSelect" id="accountActivation" /> <label
																class="form-check-label" for="accountActivation"
																style="font-family: 'Noto Sans KR', sans-serif; font-weight: 400">
																회원탈퇴에 동의합니다.</label>
														</div>
														<div class="mt-2" style="float: right;">
															<button type="submit" id="delete"
																class="btn btn-primary me-2 mb-2"
																onclick="deleteMember('${m.memberId}');"
																style="font-weight: bolder;">회원 탈퇴</button>
														</div>
													</form>
												</div>
												<!-- </div> -->
											</div>
										</div>
									</div>
									<!--  -->
								</div>
							</div>
						</div>
					</div>
					</div>
				</section>
				<form id="wishform" action="shopdetail.do" method="post">
			    <input type="hidden" id="spaceId" name="spaceId">
			    </form>
				<script>
					/* function listClick(id) {
						let form = document.getElementById("sform");
						form.memberId.value = id;
						form.submit();
					} */
					//detailPage연결
					function rdetailCall() {
						document.getElementById("sform").submit();
					}
				</script>
				<script>
					// 예약 공간 취소
					function cancelCall(name, id, rid) {


						let url = "ajaxReservationCancel.do?spaceName=" + name + "&memberId=" + id +"&reserveId="+rid;

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
								fetch(url).then(response => response.text())
									.then(text => {
										console.log("텍스트찍으러옴");
										console.log(text);
										if (text == 'Yes') {
											console.log("Yes들어옴~~~~!");
											document.querySelector('#reservation_' + rid).innerText = "예약취소";
											Swal.fire(
												'Cancelled!',
												'예약이 취소되었습니다.',
												'success'
											).then(function () {
												location.href = 'memberreservationhome.do';
											});
										}
									});
							}
						});
					}
				</script>
				<script>
					//삭제 onclick
					function deleteCall(memberId, wishListId) {
						Swal.fire({
							title: '관심 상품을 삭제하시겠습니까?',
							text: "상품 변경을 원할시 삭제 후 다시 담아주세요.",
							icon: 'warning',
							showCancelButton: true,
							confirmButtonColor: '#3085d6',
							cancelButtonColor: '#d33',
							confirmButtonText: 'Yes'
						}).then((result) => {
							if (result.isConfirmed) {
								$.ajax({
									url: "ajaxWishListDelete.do?wishListId=" + wishListId + "&memberId=" + memberId,
									type: "post",
									datatype: "html",
									success: function (data) {
										$("#cartid_" + wishListId).detach();
									}
								});
								Swal.fire(
									'삭제되었습니다.',
								)
							}
						})
					};
					//detailPage연결
					function detailCall(id) {
						let form = document.getElementById("wishform");
			            form.spaceId.value = id;
			            form.submit();
					}

				</script>
				<script type="text/javascript">

					var regEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
					function test() {
						var p1 = document.getElementById('password').value;
						var p2 = document.getElementById('passwordcheck').value;

						if (document.getElementById("Name").value == "") {
							Swal.fire({
								icon: 'error',
								text: 'name을 입력하세요!'
							})
							return false;

						} else if (document.getElementById("password").value == "") {
							Swal.fire({
								icon: 'error',
								text: 'password를 입력하세요!'
							})
							return false;
						} else if (document.getElementById("passwordcheck").value == "") {
							Swal.fire({
								icon: 'error',
								text: 'password check를 입력하세요!'
							})
							return false;
						} else if (!regEmail.test(document.getElementById("email").value)) {
							Swal.fire({
								icon: 'error',
								text: 'email을 형식에 맞게 입력하세요! ex) june@example.com'
							})
							return false;

						} else if (document.getElementById("email").value == "") {
							Swal.fire({
								icon: 'error',
								text: 'email을 입력하세요! ex) june@example.com'
							})
							return false;

						}
						else if (document.getElementById("tel").value == "") {
							Swal.fire({
								icon: 'error',
								text: 'tel을 입력하세요!'
							})
							return false;
						}

						else if (p1.length < 10) {
							Swal.fire({ text: '비밀번호는 10자 이상이어야 합니다.' })
							return false;
						}

						else if (p1 != p2) {
							Swal.fire({
								icon: 'error',
								title: 'Oops...',
								text: '비밀번호가 일치하지 않습니다.',
							})
							return false;
						} else {
							return true;
						}
					}

				</script>

				<script>
					//회원탈퇴
					function deleteMember(memberId) {

						var chk = $('input[name=chkSelect]:checked').length;

						if (chk == 0) {
							//체크박스 선택안함
							/* alert("회원 탈퇴 동의 해주세요."); */
							Swal.fire({
								icon: 'error',
								title: 'Oops...',
								text: '회원 탈퇴에 동의 해주세요!',
							})
							return false;
						} else {
							Swal.fire({
								title: '정말로 탈퇴하시겠어요?',
								text: "탈퇴시 계정은 삭제되며 복구할 수 없습니다.",
								icon: 'warning',
								showCancelButton: true,
								confirmButtonColor: '#3085d6',
								cancelButtonColor: '#d33',
								confirmButtonText: 'Yes'
							}).then((result) => {
								if (result.isConfirmed) {
									$.ajax({
										url: "ajaxUserDelete.do?memberId=" + memberId,
										type: "post",
										datatype: "html",
										success: function (data) { }
									});
									Swal.fire(
										'회원 탈퇴가 완료되었습니다.',
										'그동안 저희 StaySpace를 이용해주셔서 감사합니다.',
										'success'
									)
									setTimeout(function () {
										location.href = "home.do";
									}, 2000);

								}
							})
							return true;
						}
					}
					//회원정보수정
					function editCall(memberId) {
						if ($('input[id = email]').val() == $('#firstEmail').text()) {
							/* console.log($('#firstEmail').text()); */
							$('#editEmailCheck').attr('data-value', 'Yes');
						}
						test();
						if (test()) {
							if ($('#editEmailCheck').attr('data-value') == 'No') {
								Swal.fire({
									title: '중복체크',
									text: "이메일 중복체크 하세요",
									icon: 'warning',
									confirmButtonColor: '#87826E',
									confirmButtonText: 'OK',
								})
								return false;
							} else {
								$.ajax({
									url: "ajaxMemberEdit.do?memberId=" + memberId,
									type: "post",
									data: {
										memberName: $("#Name").val(),
										memberPassword: $("#password").val(),
										memberEmail: $("#email").val(),
										memberTel: $("#tel").val()
									},
									datatype: "JSON",
									success: function (data) {
										Swal.fire({
											position: 'center',
											icon: 'success',
											title: '회원정보가 변경되었습니다.',
											showConfirmButton: false,
											timer: 1500
										}).then(function () {
											//location.href = 'memberreservationhome.do';
										});
									}
								});
								return true;
							}
						}
					};

					// 이메일 중복체크
					function EmailCheck() {
						if (!($('input[id = email]').val())) {
							Swal.fire({
								title: '이메일 입력',
								text: "이메일을 입력하세요",
								icon: 'warning',
								confirmButtonColor: '#87826E',
								confirmButtonText: 'OK',
							})
								.then(function () {
									$('input[id = email]').focus();
								});
						} else {
							// 이메일 수정을 하지 않고 중복체크를 할 경우
							if ($('input[id = email]').val() == $('#firstEmail').text()) {
								console.log($('#firstEmail'));
								Swal.fire({
									title: '이메일 체크',
									text: "현재 사용중인 이메일 입니다",
									icon: 'success',
									confirmButtonColor: '#87826E',
									confirmButtonText: 'OK',
								})
							} else {
								//aJax 사용
								let url = "memberemailcheck.do";
								let email = $('input[id = email]').val();

								url = url + "?memberEmail=" + email;

								fetch(url)
									.then(response => response.text())	// response 객체에 text로 받기
									.then(text => memberemailcheck(text));
							}
						}
					}

					function memberemailcheck(check) {
						if (check == 'Yes') {
							Swal.fire({
								title: '이메일 체크',
								text: "사용가능한 이메일 입니다",
								icon: 'success',
								confirmButtonColor: '#87826E',
								confirmButtonText: 'OK',
							})
								.then(function () {
									$('#editEmailCheck').attr('data-value', 'Yes');
									$('#editEmailCheck').attr('disabled', 'true');	// 버튼 비활성화 */
								});
						} else {
							Swal.fire({
								title: '이메일 체크',
								text: "존재하는 이메일 입니다",
								icon: 'error',
								confirmButtonColor: '#87826E',
								confirmButtonText: 'OK',
							})
								.then(function () {
									$('input[id = email]').val($('#firstEmail').text());
									$('input[id = email]').focus();
								});
						}
					}
					function cancelEdit() {
						$('#editEmailCheck').attr('data-value', 'No');
						console.log($('#editEmailCheck').attr('data-value'));
					}
				</script>
			</body>

			</html>