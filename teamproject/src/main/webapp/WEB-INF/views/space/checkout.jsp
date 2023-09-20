<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Vaso Ecommerce Template</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="format-detection" content="telephone=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="author" content="">
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="stylesheet" type="text/css"
	href="vaso-html/css/vendor.css">
<link rel="stylesheet" type="text/css"
	href="vaso-html/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="vaso-html/style.css">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Italiana&family=Mulish:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;0,1000;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900;1,1000&display=swap"
	rel="stylesheet">
<!-- script
    ================================================== -->
<script src="vaso-html/js/modernizr.js"></script>

</head>
<body>
	<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
      <symbol id="search" xmlns="http://www.w3.org/2000/svg"
			viewBox="0 0 32 32">
        <path fill="currentColor"
			d="M19 3C13.488 3 9 7.488 9 13c0 2.395.84 4.59 2.25 6.313L3.281 27.28l1.439 1.44l7.968-7.969A9.922 9.922 0 0 0 19 23c5.512 0 10-4.488 10-10S24.512 3 19 3zm0 2c4.43 0 8 3.57 8 8s-3.57 8-8 8s-8-3.57-8-8s3.57-8 8-8z" />
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" id="angle-right"
			viewBox="0 0 32 32">
        <path fill="currentColor"
			d="M12.969 4.281L11.53 5.72L21.812 16l-10.28 10.281l1.437 1.438l11-11l.687-.719l-.687-.719z" />
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" id="angle-left"
			viewBox="0 0 32 32">
        <path fill="currentColor"
			d="m19.031 4.281l-11 11l-.687.719l.687.719l11 11l1.438-1.438L10.187 16L20.47 5.719z" />
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" id="chevron-down"
			viewBox="0 0 24 24">
        <path fill="currentColor"
			d="M7.41 8.58L12 13.17l4.59-4.59L18 10l-6 6l-6-6l1.41-1.42Z" />
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" id="arrow-right"
			viewBox="0 0 32 32">
        <path fill="currentColor"
			d="M18.719 6.781L17.28 8.22L24.063 15H4v2h20.063l-6.782 6.781l1.438 1.438l8.5-8.5l.687-.719l-.687-.719z" />
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" id="arrow-left"
			viewBox="0 0 32 32">
        <path fill="currentColor"
			d="m13.281 6.781l-8.5 8.5l-.687.719l.687.719l8.5 8.5l1.438-1.438L7.938 17H28v-2H7.937l6.782-6.781z" />
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" id="play"
			viewBox="0 0 24 24">
        <path fill="currentColor" d="M8 5.14v14l11-7l-11-7Z" />
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" id="facebook"
			viewBox="0 0 24 24">
        <path fill="currentColor"
			d="M9.198 21.5h4v-8.01h3.604l.396-3.98h-4V7.5a1 1 0 0 1 1-1h3v-4h-3a5 5 0 0 0-5 5v2.01h-2l-.396 3.98h2.396v8.01Z" />
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" id="youtube"
			viewBox="0 0 32 32">
        <path fill="currentColor"
			d="M29.41 9.26a3.5 3.5 0 0 0-2.47-2.47C24.76 6.2 16 6.2 16 6.2s-8.76 0-10.94.59a3.5 3.5 0 0 0-2.47 2.47A36.13 36.13 0 0 0 2 16a36.13 36.13 0 0 0 .59 6.74a3.5 3.5 0 0 0 2.47 2.47c2.18.59 10.94.59 10.94.59s8.76 0 10.94-.59a3.5 3.5 0 0 0 2.47-2.47A36.13 36.13 0 0 0 30 16a36.13 36.13 0 0 0-.59-6.74ZM13.2 20.2v-8.4l7.27 4.2Z" />
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" id="twitter"
			viewBox="0 0 256 256">
        <path fill="currentColor"
			d="m245.66 77.66l-29.9 29.9C209.72 177.58 150.67 232 80 232c-14.52 0-26.49-2.3-35.58-6.84c-7.33-3.67-10.33-7.6-11.08-8.72a8 8 0 0 1 3.85-11.93c.26-.1 24.24-9.31 39.47-26.84a110.93 110.93 0 0 1-21.88-24.2c-12.4-18.41-26.28-50.39-22-98.18a8 8 0 0 1 13.65-4.92c.35.35 33.28 33.1 73.54 43.72V88a47.87 47.87 0 0 1 14.36-34.3A46.87 46.87 0 0 1 168.1 40a48.66 48.66 0 0 1 41.47 24H240a8 8 0 0 1 5.66 13.66Z" />
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" id="instagram"
			viewBox="0 0 256 256">
        <path fill="currentColor"
			d="M128 80a48 48 0 1 0 48 48a48.05 48.05 0 0 0-48-48Zm0 80a32 32 0 1 1 32-32a32 32 0 0 1-32 32Zm48-136H80a56.06 56.06 0 0 0-56 56v96a56.06 56.06 0 0 0 56 56h96a56.06 56.06 0 0 0 56-56V80a56.06 56.06 0 0 0-56-56Zm40 152a40 40 0 0 1-40 40H80a40 40 0 0 1-40-40V80a40 40 0 0 1 40-40h96a40 40 0 0 1 40 40ZM192 76a12 12 0 1 1-12-12a12 12 0 0 1 12 12Z" />
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" id="linkedin"
			viewBox="0 0 24 24">
        <path fill="currentColor"
			d="M6.94 5a2 2 0 1 1-4-.002a2 2 0 0 1 4 .002zM7 8.48H3V21h4V8.48zm6.32 0H9.34V21h3.94v-6.57c0-3.66 4.77-4 4.77 0V21H22v-7.93c0-6.17-7.06-5.94-8.72-2.91l.04-1.68z" />
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" id="cart-outline"
			viewBox="0 0 16 16">
        <path fill="currentColor"
			d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .49.598l-1 5a.5.5 0 0 1-.465.401l-9.397.472L4.415 11H13a.5.5 0 0 1 0 1H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l.84 4.479 9.144-.459L13.89 4H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" id="quality"
			viewBox="0 0 16 16">
        <path fill="currentColor"
			d="M9.669.864 8 0 6.331.864l-1.858.282-.842 1.68-1.337 1.32L2.6 6l-.306 1.854 1.337 1.32.842 1.68 1.858.282L8 12l1.669-.864 1.858-.282.842-1.68 1.337-1.32L13.4 6l.306-1.854-1.337-1.32-.842-1.68L9.669.864zm1.196 1.193.684 1.365 1.086 1.072L12.387 6l.248 1.506-1.086 1.072-.684 1.365-1.51.229L8 10.874l-1.355-.702-1.51-.229-.684-1.365-1.086-1.072L3.614 6l-.25-1.506 1.087-1.072.684-1.365 1.51-.229L8 1.126l1.356.702 1.509.229z" />
        <path fill="currentColor"
			d="M4 11.794V16l4-1 4 1v-4.206l-2.018.306L8 13.126 6.018 12.1 4 11.794z" />
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" id="price-tag"
			viewBox="0 0 16 16">
        <path fill="currentColor"
			d="M6 4.5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm-1 0a.5.5 0 1 0-1 0 .5.5 0 0 0 1 0z" />
        <path fill="currentColor"
			d="M2 1h4.586a1 1 0 0 1 .707.293l7 7a1 1 0 0 1 0 1.414l-4.586 4.586a1 1 0 0 1-1.414 0l-7-7A1 1 0 0 1 1 6.586V2a1 1 0 0 1 1-1zm0 5.586 7 7L13.586 9l-7-7H2v4.586z" />
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" id="shield-plus"
			viewBox="0 0 16 16">
        <path fill="currentColor"
			d="M5.338 1.59a61.44 61.44 0 0 0-2.837.856.481.481 0 0 0-.328.39c-.554 4.157.726 7.19 2.253 9.188a10.725 10.725 0 0 0 2.287 2.233c.346.244.652.42.893.533.12.057.218.095.293.118a.55.55 0 0 0 .101.025.615.615 0 0 0 .1-.025c.076-.023.174-.061.294-.118.24-.113.547-.29.893-.533a10.726 10.726 0 0 0 2.287-2.233c1.527-1.997 2.807-5.031 2.253-9.188a.48.48 0 0 0-.328-.39c-.651-.213-1.75-.56-2.837-.855C9.552 1.29 8.531 1.067 8 1.067c-.53 0-1.552.223-2.662.524zM5.072.56C6.157.265 7.31 0 8 0s1.843.265 2.928.56c1.11.3 2.229.655 2.887.87a1.54 1.54 0 0 1 1.044 1.262c.596 4.477-.787 7.795-2.465 9.99a11.775 11.775 0 0 1-2.517 2.453 7.159 7.159 0 0 1-1.048.625c-.28.132-.581.24-.829.24s-.548-.108-.829-.24a7.158 7.158 0 0 1-1.048-.625 11.777 11.777 0 0 1-2.517-2.453C1.928 10.487.545 7.169 1.141 2.692A1.54 1.54 0 0 1 2.185 1.43 62.456 62.456 0 0 1 5.072.56z" />
        <path fill="currentColor"
			d="M8 4.5a.5.5 0 0 1 .5.5v1.5H10a.5.5 0 0 1 0 1H8.5V9a.5.5 0 0 1-1 0V7.5H6a.5.5 0 0 1 0-1h1.5V5a.5.5 0 0 1 .5-.5z" />
      </symbol>
      <symbol id="star-fill" xmlns="http://www.w3.org/2000/svg"
			viewBox="0 0 16 16">
        <path fill="currentColor"
			d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
      </symbol>
      <symbol id="star-empty" xmlns="http://www.w3.org/2000/svg"
			viewBox="0 0 16 16">
        <path fill="currentColor"
			d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z" />
      </symbol>
      <symbol id="star-half" xmlns="http://www.w3.org/2000/svg"
			viewBox="0 0 16 16">
        <path fill="currentColor"
			d="M5.354 5.119 7.538.792A.516.516 0 0 1 8 .5c.183 0 .366.097.465.292l2.184 4.327 4.898.696A.537.537 0 0 1 16 6.32a.548.548 0 0 1-.17.445l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256a.52.52 0 0 1-.146.05c-.342.06-.668-.254-.6-.642l.83-4.73L.173 6.765a.55.55 0 0 1-.172-.403.58.58 0 0 1 .085-.302.513.513 0 0 1 .37-.245l4.898-.696zM8 12.027a.5.5 0 0 1 .232.056l3.686 1.894-.694-3.957a.565.565 0 0 1 .162-.505l2.907-2.77-4.052-.576a.525.525 0 0 1-.393-.288L8.001 2.223 8 2.226v9.8z" />
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" id="plus"
			viewBox="0 0 24 24">
        <path fill="currentColor"
			d="M19 11h-6V5a1 1 0 0 0-2 0v6H5a1 1 0 0 0 0 2h6v6a1 1 0 0 0 2 0v-6h6a1 1 0 0 0 0-2Z" />
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" id="minus"
			viewBox="0 0 24 24">
        <path fill="currentColor"
			d="M19 11H5a1 1 0 0 0 0 2h14a1 1 0 0 0 0-2Z" />
      </symbol>
    </svg>

	<section
		class="hero-section jarallax d-flex align-items-center justify-content-center padding-medium pb-5"
		style="background: url(vaso-html/images/hero-img.jpg) no-repeat;">
		<div class="hero-content">
			<div class="container">
				<div class="row">
					<div class="text-center padding-large no-padding-bottom">
						<h1>Checkout</h1>
						<div class="breadcrumbs">
							<span class="item"> <a href="index.html">Home ></a>
							</span> <span class="item">Checkout</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="shopify-cart checkout-wrap padding-large">
		<div class="container">
			<form class="form-group">
				<div class="col-lg-6" style="margin: 0 auto">
					<h3 class="pb-4">Billing Details</h3>
					<div class="billing-details">
						<div class="py-3">
							<label for="lname">Name*</label> <input type="text" id="lname"
								name="lastname" class="w-100">
						</div>
						<div class="py-3">
							<label for="email">Phone *</label> <input type="text" id="phone"
								name="phone" class="w-100">
						</div>

						<div class="py-3">
							<label for="email">Email address *</label> <input type="text"
								id="email" name="email" class="w-100">
						</div>
					</div>
					<h3 class="pb-4">Reservation Information</h3>
					<div class="billing-details">
					<a href="detail.do">
					<img src="vaso-html/images/StaySpace_commercial_1(1).jpg" style="width:648px">
						<label for="fname">[분당/판교] 미드센츄리모던 빈티지 가구들로 꾸며진 카페</label>
					</a></div>
					<div class="your-order mt-5">
						<h3 class="pb-4">Cart Totals</h3>
						<div class="total-price">
							<table cellspacing="0" class="table">
								<tbody>
									<tr
										class="subtotal border-top border-bottom border-dark pt-2 pb-2 text-uppercase">
										<th>Subtotal</th>
										<td data-title="Subtotal"><span
											class="price-amount amount text-primary ps-5"> <bdi>
												<span class="price-currency-symbol">$</span>2,370.00 </bdi>
										</span></td>
									</tr>
									<tr
										class="order-total border-bottom border-dark pt-2 pb-2 text-uppercase">
										<th>Total</th>
										<td data-title="Total"><span
											class="price-amount amount text-primary ps-5"> <bdi>
												<span class="price-currency-symbol">$</span>2,370.00 </bdi>
										</span></td>
									</tr>
								</tbody>
							</table>
							<div class="list-group mt-5 mb-3">
								<label
									class="list-group-item p-0 bg-transparent d-flex gap-2 border-0">
									<input class="form-check-input p-0 flex-shrink-0" type="radio"
									name="listGroupRadios" id="listGroupRadios1" value="" checked>
									<span>
										<div class="fw-300 text-uppercase">Direct bank transfer</div>
										<p class="d-block">Make your payment directly into our
											bank account. Please use your Order ID. Your order will
											shipped after funds have cleared in our account.</p>
								</span>
								</label> <label
									class="list-group-item p-0 bg-transparent d-flex gap-2 border-0">
									<input class="form-check-input p-0 flex-shrink-0" type="radio"
									name="listGroupRadios" id="listGroupRadios2" value="">
									<span>
										<div class="fw-300 text-uppercase">Check payments</div>
										<p class="d-block">Please send a check to Store Name,
											Store Street, Store Town, Store State / County, Store
											Postcode.</p>
								</span>
								</label> <label
									class="list-group-item p-0 bg-transparent d-flex gap-2 border-0">
									<input class="form-check-input p-0 flex-shrink-0" type="radio"
									name="listGroupRadios" id="listGroupRadios3" value="">
									<span>
										<div class="fw-300 text-uppercase">Cash on delivery</div>
										<p class="d-block">Pay with cash upon delivery.</p>
								</span>
								</label> <label
									class="list-group-item p-0 bg-transparent d-flex gap-2 border-0">
									<input class="form-check-input p-0 flex-shrink-0" type="radio"
									name="listGroupRadios" id="listGroupRadios3" value="">
									<span>
										<div class="fw-300 text-uppercase">Paypal</div>
										<p class="d-block">Pay via PayPal; you can pay with your
											credit card if you don’t have a PayPal account.</p>
								</span>
								</label>
							</div>
							<button type="button" name="submit" class="btn btn-dark w-100"
								onclick="check()">Place an order</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</section>

	<script src="vaso-html/js/jquery-1.11.0.min.js"></script>
	<script type="text/javascript"
		src="vaso-html/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="vaso-html/js/plugins.js"></script>
	<script type="text/javascript" src="vaso-html/js/script.js"></script>
	<script type="text/javascript" src="vaso-html/js/checkout.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script>
		function check() {
			console.log('a');
			if (document.getElementById("lname").value == "") {
				Swal.fire({
					text : '이름을 입력하세요',
					icon : 'warning'
				})
			} else if (document.getElementById("phone").value == "") {
				Swal.fire({
					text : '전화번호를 입력하세요',
					icon : 'warning'
				})
			} else if (document.getElementById("email").value == "") {
				Swal.fire({
					text : '이메일을 입력하세요',
					icon : 'warning'
				})
			} else{
				Swal.fire({
					title: '결제완료',
					text : '결제가 완료되었습니다.',
					icon : 'success'
				})
			}
		}
	</script>
</body>
</html>