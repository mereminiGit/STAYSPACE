<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section
		class="hero-section jarallax d-flex align-items-center justify-content-center padding-medium pb-5"
		style="background: url(vaso-html/images/hero-img.jpg) no-repeat;">
		<div class="hero-content">
			<div class="container">
				<div class="row">
					<div class="text-center padding-large no-padding-bottom">
						<h1>Account</h1>
						<div class="breadcrumbs">
							<span class="item"> <a href="index.html">Home ></a>
							</span> <span class="item">Account</span>
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
						<div class="nav nav-tabs d-flex justify-content-center"
							id="nav-tab" role="tablist">
							<!-- Sign -->
							<button class="nav-link text-uppercase active"
								id="nav-sign-in-tab" data-bs-toggle="tab"
								data-bs-target="#nav-sign-in" type="button" role="tab"
								aria-controls="nav-sign-in" aria-selected="true">Sign
								In</button>
							<!-- Register -->
							<button class="nav-link text-uppercase" id="nav-register-tab"
								data-bs-toggle="tab" data-bs-target="#nav-register"
								type="button" role="tab" aria-controls="nav-register"
								aria-selected="false">Register</button>
							<!-- Register -->
						</div>
					</nav>
					
					<div class="tab-content" id="nav-tabContent">
						<div class="tab-pane fade active show" id="nav-sign-in"
							role="tabpanel" aria-labelledby="nav-sign-in-tab">
							<div class="form-group py-3">
								<label for="sign-in">Username or email address *</label> <input
									type="text" minlength="2" name="username"
									placeholder="Your Username" class="w-100" required>
							</div>
							<div class="form-group py-3">
								<label for="sign-in">Password *</label> <input type="password"
									minlength="2" name="password" placeholder="Your Password"
									class="w-100" required>
							</div>
							<label class="py-3"> <input type="checkbox" required=""
								class="d-inline"> <span class="label-body">Remember
									Me</span> <span class="label-body">
									<a type="button" data-bs-toggle="modal" data-bs-target="#forgotModal" class="fw-bold">Forgot Password</a></span>
							</label>
							<button type="submit" name="submit"
								class="btn btn-dark w-100 my-3">Login</button>
						</div>
						<div class="tab-pane fade" id="nav-register" role="tabpanel"
							aria-labelledby="nav-register-tab">
							<div class="form-group py-3">
								<label for="register">Your email address *</label> <input
									type="text" minlength="2" name="username"
									placeholder="Your Email Address" class="w-100" required>
							</div>
							<div class="form-group py-3">
								<label for="sign-in">Password *</label> <input type="password"
									minlength="2" name="password" placeholder="Your Password"
									class="w-100" required>
							</div>
							<label class="py-3"> <input type="checkbox" required=""
								class="d-inline"> <span class="label-body">I
									agree to the <a href="#" class="fw-bold">Privacy Policy</a>
							</span>
							</label>
							<button type="submit" name="submit"
								class="btn btn-dark w-100 my-3">Register</button>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="modal" id="forgotModal">
			<div class="modal-dialog">
				<div class="modal-content">

					<!-- Modal Header -->
					<div class="modal-header">
						<h4 class="modal-title">Find Password</h4>
						<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
					</div>

					<!-- Modal body -->
					<div class="modal-body">Modal body..</div>

					<!-- Modal footer -->
					<div class="modal-footer">
						<button type="button" class="btn btn-danger"
							data-bs-dismiss="modal">Close</button>
					</div>

				</div>
			</div>
		</div>

	</section>
</body>
</html>