<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<footer id="footer" class="overflow-hidden padding-xlarge pb-0">
		<div class="container">
			<div class="row">
				<div class="footer-top-area pb-5">
					<div class="row d-flex flex-wrap justify-content-between">

						<div class="col-lg-3 col-sm-6 pb-3" data-aos="fade"
							data-aos-easing="ease-in" data-aos-duration="1000"
							data-aos-once="true">
							<!-- footer 1st -->
							<div class="footer-menu">
								<!-- 로고 이미지 -->
								<img src="vaso-html/images/STAYSPACE_logo_footer.png" class="logo" style="width: 103px; height: 70px;" alt="logo" class="mb-2">
								<!-- 플랫폼 간단 설명 -->
								<p style="font-family: 'Noto Sans KR', sans-serif; font-weight: 300; font-size: 19px;">
									장소는 누구에게나 추억을 선사합니다.<br>
									머무는 장소, 좋은 경험을 선사하기<br>위해 STAY를 큐레이팅합니다.</p>
							</div>
						</div>

						<div class="col-lg-2 col-sm-6 pb-3" data-aos="fade"
							data-aos-easing="ease-in" data-aos-duration="1200"
							data-aos-once="true">
							<!-- footer 2nd -->
							<div class="footer-menu" style="margin-top: 7px">
								<!-- 링크 4개 -->
								<h4 class="widget-title pb-2">Quick Links</h4>
								<ul class="menu-list list-unstyled">
									<!-- about 링크 -->
									<li class="menu-item pb-2"><a href="about.do">About</a></li>
									<!-- space 목록 링크 -->
									<li class="menu-item pb-2"><a href="spaceshop.do">Space</a></li>
									<!-- Account 링크 -->
									<li class="menu-item pb-2"><a href="account.do">Account</a></li>
								</ul>
							</div>
						</div>

						<div class="col-lg-3 col-sm-6 pb-3" data-aos="fade"
							data-aos-easing="ease-in" data-aos-duration="1400"
							data-aos-once="true">
							<!-- footer 3rd -->
							<div class="footer-menu contact-item" style="margin-top: 7px">
								<!-- 플랫폼 정보 -->
								<h4 class="widget-title pb-2">Contact info</h4>
								<ul class="menu-list list-unstyled">
									<!-- 플랫폼 위치 -->
									<li class="menu-item pb-2"><a type="button" data-bs-toggle="modal" data-bs-target="#mapModal" id="myBtn">
									대구광역시 중구 중앙대로 403</a></li>																		
									<!-- 플랫폼 전화번호 -->
									<li class="menu-item pb-2"><a href="#">+82 111 2222 3333</a></li>
									<!-- 플랫폼 이메일 -->
									<li class="menu-item pb-2"><a href="mailto:">stayspace@yedam.co.kr</a>
									</li>
								</ul>
							</div>
						</div>

						<div class="modal fade" id="mapModal" tabindex="-1" role="dialog"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog" role="document">

								<div class="modal-content">

									<div class="modal-body">
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close">
											<svg class="bi" width="40" height="40">
											<use xlink:href="#close-sharp"></use></svg>
										</button>
										<!-- <div class="ratio ratio-16x9"> -->
											<!-- <div id="map" style="width:100%; height:100%">
											</div> -->
											<div
												style="font: normal normal 400 12px/normal dotum, sans-serif; width: 768px; height: 392px; color: #333; position: relative">
												<div style="height: 360px;">
													<a
														href="https://map.kakao.com/?urlX=859751.0&amp;urlY=661725.0&amp;itemId=19776924&amp;q=%EC%98%88%EB%8B%B4%EC%A7%81%EC%97%85%EC%A0%84%EB%AC%B8%ED%95%99%EA%B5%90&amp;srcid=19776924&amp;map_type=TYPE_MAP&amp;from=roughmap"
														target="_blank"><img class="map"
														src="http://t1.daumcdn.net/roughmap/imgmap/01794178534436c9405cc941254f8d7155b6a41eeb224e00a8bef2d8fd3ccaff"
														width="768px" height="358px"
														style="border: 1px solid #ccc;"></a>
												</div>
												<div
													style="overflow: hidden; padding: 7px 11px; border: 1px solid rgba(0, 0, 0, 0.1); border-radius: 0px 0px 2px 2px; background-color: rgb(249, 249, 249);">
													<a href="https://map.kakao.com" target="_blank"
														style="float: left;"><img
														src="//t1.daumcdn.net/localimg/localimages/07/2018/pc/common/logo_kakaomap.png"
														width="72" height="16" alt="카카오맵"
														style="display: block; width: 72px; height: 16px"></a>
													<div
														style="float: right; position: relative; top: 1px; font-size: 11px;">
														<a target="_blank"
															href="https://map.kakao.com/?from=roughmap&amp;srcid=19776924&amp;confirmid=19776924&amp;q=%EC%98%88%EB%8B%B4%EC%A7%81%EC%97%85%EC%A0%84%EB%AC%B8%ED%95%99%EA%B5%90&amp;rv=on"
															style="float: left; height: 15px; padding-top: 1px; line-height: 15px; color: #000; text-decoration: none;">로드뷰</a><span
															style="width: 1px; padding: 0; margin: 0 8px 0 9px; height: 11px; vertical-align: top; position: relative; top: 2px; border-left: 1px solid #d0d0d0; float: left;"></span><a
															target="_blank"
															href="https://map.kakao.com/?from=roughmap&amp;eName=%EC%98%88%EB%8B%B4%EC%A7%81%EC%97%85%EC%A0%84%EB%AC%B8%ED%95%99%EA%B5%90&amp;eX=859751.0&amp;eY=661725.0"
															style="float: left; height: 15px; padding-top: 1px; line-height: 15px; color: #000; text-decoration: none;">길찾기</a><span
															style="width: 1px; padding: 0; margin: 0 8px 0 9px; height: 11px; vertical-align: top; position: relative; top: 2px; border-left: 1px solid #d0d0d0; float: left;"></span><a
															target="_blank"
															href="https://map.kakao.com?map_type=TYPE_MAP&amp;from=roughmap&amp;srcid=19776924&amp;itemId=19776924&amp;q=%EC%98%88%EB%8B%B4%EC%A7%81%EC%97%85%EC%A0%84%EB%AC%B8%ED%95%99%EA%B5%90&amp;urlX=859751.0&amp;urlY=661725.0"
															style="float: left; height: 15px; padding-top: 1px; line-height: 15px; color: #000; text-decoration: none;">지도
															크게 보기</a>
													</div>
												</div>
											</div>
										<!-- </div> -->
									</div>

								</div>

							</div>
						</div>

						<div class="col-lg-3 col-sm-6 pb-3" data-aos="fade"
							data-aos-easing="ease-in" data-aos-duration="1600"
							data-aos-once="true">
							<div class="footer-menu" style="margin-top: 7px">
								<!-- footer 4th -->
								<h4 class="widget-title pb-2">Social info</h4>
								<p>You can follow us on our social platforms to get updates.</p>
								<div class="social-links">
									<ul class="d-flex list-unstyled">
										<li><a href="#"> <svg class="facebook">
                            				<use xlink:href="#facebook"></svg>
										</a></li>
										<li><a href="#"> <svg class="instagram">
                            				<use xlink:href="#instagram"></svg>
										</a></li>
										<li><a href="#"> <svg class="twitter">
                            				<use xlink:href="#twitter"></svg>
										</a></li>
										<li><a href="#"> <svg class="linkedin">
                            				<use xlink:href="#linkedin"></svg>
										</a></li>
										<li><a href="#"> <svg class="youtube">
                            				<use xlink:href="#youtube"></svg>
										</a></li>
									</ul>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
			<hr>
		</div>
	</footer>
	
	<!-- 가장 밑 footer -->
	<div id="footer-bottom">
		<div class="container">
			<div class="row d-flex flex-wrap justify-content-between">
				<div class="col-12">
					<div class="copyright">
						<p>
							© Copyright 2023 StaySpace. 
							<!-- Design by <a href="https://templatesjungle.com/" target="_blank"><b>TemplatesJungle</b></a> -->
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script> -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=dcfa3192da932a691467e98f5a9cf1e9"></script>
</html>