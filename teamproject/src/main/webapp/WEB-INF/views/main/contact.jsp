<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>contact</title>
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
					<p>Tortor dignissim convallis aenean et tortor at risus viverra
						adipiscing.</p>
					<div class="page-content d-flex flex-wrap">
						<div class="col-lg-6 col-sm-12">
							<div class="content-box text-dark pe-4 mb-5">
								<h5
									class="widget-title text-decoration-underline text-uppercase">Office</h5>
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
									class="widget-title text-decoration-underline text-uppercase">Management</h5>
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
							<h3>Our stores</h3>
							<p>You can also directly buy products from our stores.</p>
						</div>
						<div class="location-content d-flex flex-wrap">
							<div class="col-lg-6 col-sm-12">
								<div class="content-box text-dark pe-4 mb-5">
									<h5
										class="widget-title text-decoration-underline text-uppercase">Office</h5>
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
										class="widget-title text-decoration-underline text-uppercase">USA</h5>
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
</body>
</html>