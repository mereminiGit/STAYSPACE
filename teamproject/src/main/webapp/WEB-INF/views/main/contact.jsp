<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>contact</title>
<style type="text/css">
.swal2-title {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 600;
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
						<h1>Contact</h1>
						<div class="breadcrumbs">
							<span class="item"> <a href="index.html">Home ></a>
							</span> <span class="item">Contact</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class="contact-us padding-xlarge">
		<div class="container">
			<div class="row">
				<div class="contact-info col-lg-6 pb-3">
					<h3>Contact info</h3>
					<p>문의사항이 있으시면 아래 연락처로 연락 가능합니다.</p>
					<div class="page-content d-flex flex-wrap">
						<div class="col-lg-6 col-sm-12">
							<div class="content-box text-dark pe-4 mb-5">
								<h5
									class="widget-title text-decoration-underline text-uppercase">Office</h5>
								<div class="contact-address pt-3">
									<p>대구광역시 중구 중앙대로 403</p>
								</div>
								<div class="contact-number">
									<p>
										<a href="#">+82 111 2222 3333</a>
									</p>
									<p>
										<a href="#">+82 111 4444 5555</a>
									</p>
								</div>
								<div class="email-address">
									<p>
										<a href="#">yedamOfficial@yedam.com</a>
									</p>
								</div>
							</div>
						</div>
						<div class="col-lg-6 col-sm-12">
							<div class="content-box">
								<h5
									class="widget-title text-decoration-underline text-uppercase">Management</h5>
								<div class="contact-address pt-3">
									<p>403, Jungang-daero, Jung-gu</p>
								</div>
								<div class="contact-number">
									<p>
										<a href="#">+82 111 5555 6666</a>
									</p>
									<p>
										<a href="#">+82 111 7777 9999</a>
									</p>
								</div>
								<div class="email-address">
									<p>
										<a href="#">yedamInfo@yedam.com</a>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="inquiry-item col-lg-6">
					<h3>Any questions?</h3>
					<p>문의사항을 작성해 주시면 최대한 빠른 시일 내에 확인 후 연락드리겠습니다.</p>
					<form id="form" action="contactemailcontroller.do">
						<div class="py-3">
							<label>Your Name *</label> <input type="text" name="contactName"
								placeholder="Write your name here" class="w-100" required="required">
						</div>
						<div class="py-3">
							<label>Your Email *</label> <input type="text" name="contactEmail"
								placeholder="Write your email here" class="w-100" required="required">
						</div>
						<div class="py-3">
							<label>Phone Number</label> <input type="number" name="contactNumber"
								placeholder="Write your phone nuumber" class="w-100">
						</div>
						<div class="py-3">
							<label>Your Message *</label>
							<textarea placeholder="Write Your Message Here" class="w-100" name="contactMessage" required="required"></textarea>
						</div>
						<button type="submit" name="submit"
							class="btn btn-dark w-100 my-3">Submit</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<section id="our-store" class="padding-xlarge pt-0" style="padding-bottom: 0">
		<div class="container">
			<div class="row d-flex flex-wrap align-items-center">
				<div class="col-lg-6">
					<div class="image-holder mb-5" data-aos="fade"
						data-aos-easing="ease-in" data-aos-duration="1500"
						data-aos-once="true" style="margin-bottom: 0 !important;">
						<img src="vaso-html/images/post-item3.jpg" alt="our-store" class="img-fluid">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="locations-wrap" data-aos="fade"
						data-aos-easing="ease-in" data-aos-delay="600"
						data-aos-duration="1000" data-aos-once="true">
						<div class="display-header">
							<h3>Branch office</h3>
							<p>문의사항을 저희 지사를 소개합니다.</p>
						</div>
						<div class="location-content d-flex flex-wrap">
							<div class="col-lg-6 col-sm-12">
								<div class="content-box text-dark pe-4 mb-5">
									<h5
										class="widget-title text-decoration-underline text-uppercase">daegu</h5>
									<div class="contact-address pt-3">
										<p>730 Glenstone Ave 65802, Springfield, US</p>
									</div>
									<div class="contact-number">
										<p>
											<a href="#">+123 987 321</a>
										</p>
										<p>
											<a href="#">+123 123 654</a>
										</p>
									</div>
									<div class="email-address">
										<p>
											<a href="#">vaso@yourinfo.com</a>
										</p>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-sm-12">
								<div class="content-box">
									<h5
										class="widget-title text-decoration-underline text-uppercase">busan</h5>
									<div class="contact-address pt-3">
										<p>730 Glenstone Ave 65802, Springfield, US</p>
									</div>
									<div class="contact-number">
										<p>
											<a href="#">+123 987 321</a>
										</p>
										<p>
											<a href="#">+123 123 654</a>
										</p>
									</div>
									<div class="email-address">
										<p>
											<a href="#">vaso@yourinfo.com</a>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- 이메일 진행한 후 -->
	<c:if test="${not empty messageContact }">
		<div id="${messageContact }"></div>
	</c:if>
	
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.28/dist/sweetalert2.all.min.js"></script>
	
	<script type="text/javascript">
		// 이메일 이벤트(알람창) 	
		if ($('#emailSuccess').length) {
			Swal.fire({
				title: '문의사항',
				text: "확인 후 연락드리겠습니다",
				icon: 'success',
				confirmButtonColor: '#87826E',
				confirmButtonText: 'OK',
			}).then(function () {
				location.href = 'contactcontroller.do';
			});
		}
	</script>		
</body>
</html>