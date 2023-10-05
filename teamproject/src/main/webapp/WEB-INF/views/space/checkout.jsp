<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Vaso Ecommerce Template</title>
<link
	href="https://fonts.googleapis.com/css2?family=Italiana&family=Mulish:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;0,1000;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900;1,1000&display=swap"
	rel="stylesheet">
<!-- script
    ================================================== -->
<script src="vaso-html/js/modernizr.js"></script>
<script>
function numberWithCommas(x) {
	document.write(x.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ","));
	}
</script>
</head>
<body>
	<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
      <symbol id="search" xmlns="http://www.w3.org/2000/svg"
			viewBox="0 0 32 32">
        <path fill="currentColor"
			d="M19 3C13.488 3 9 7.488 9 13c0 2.395.84 4.59 2.25 6.313L3.281 27.28l1.439 1.44l7.968-7.969A9.922 9.922 0 0 0 19 23c5.512 0 10-4.488 10-10S24.512 3 19 3zm0 2c4.43 0 8 3.57 8 8s-3.57 8-8 8s-8-3.57-8-8s3.57-8 8-8z" />
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
	<section class="shopify-cart checkout-wrap">
		<div class="container">
				<div class="col-lg-6" style="margin: 0 auto; padding-top: 126px;">
					<h3 class="pb-4">Billing Details</h3>
					<div class="billing-details">
			<form action="memberreservationhome.do" id="frm">
						<div class="py-3">
							<label for="lname">Name*</label> <input type="text" id="name"
								name="name" class="w-100" value="${member.memberName }" readonly>
						</div>
						<div class="py-3">
							<label for="Phone">Phone *</label> <input type="text" id="phone"
								name="phone" class="w-100" value="${member.memberTel }" readonly>
						</div>

						<div class="py-3">
							<label for="email">Email address *</label> <input type="text"
								id="email" name="email" class="w-100"
								value="${member.memberEmail }" readonly>
						</div>
					</form>
					</div>
					<h3 class="pb-4" style="padding-top: 63px;">Reservation Information</h3>
					<div class="billing-details">
						<c:set var="total" value="0" />
						<c:forEach items="${cart }" var="c">
							<img src="image/space/${c.spaceImageMain }" style="width: 648px">
							<label for="fname">${c.spaceName } · ${c.spaceStartDate }</label>
							
							<c:set var="total" value="${total+c.spacePrice }" />
						</c:forEach>
					</div>
					<div class="your-order mt-5">
						<h3 class="pb-4">Cart Totals</h3>
						<div class="total-price">
							<table cellspacing="0" class="table">
								<tbody>

									<tr
										class="order-total border-bottom border-dark pt-2 pb-2 text-uppercase">
										<th>Total</th>
										<td data-title="Total"><span
											class="price-amount amount text-primary ps-5"> <bdi>
												<span class="price-currency-symbol">&#8361;</span><script>numberWithCommas(${total })</script> </bdi>
										</span></td>
									</tr>
								</tbody>
							</table>
							<!-- <div class="list-group mt-5 mb-3">
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
							</div> -->
							<button type="button" class="btn btn-dark w-100" id="check_module">Place an order</button>
						</div>
					</div>
				</div>
		</div>
		
	</section>

	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script>
		/* function check() {
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
			} else {
				Swal.fire({
					title : '결제완료',
					text : '결제가 완료되었습니다.',
					icon : 'success'
				})
			}
		} */
	</script>
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script>
  

    $("#check_module").click(function () {
		var IMP = window.IMP; // 생략가능
		IMP.init('imp46405872'); 
		// i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
		// ''안에 띄어쓰기 없이 가맹점 식별코드를 붙여넣어주세요. 안그러면 결제창이 안뜹니다.
		IMP.request_pay({
			pg: 'kakaopay',
			pay_method: 'card',
			merchant_uid: 'merchant_' + new Date().getTime(),
			/* 
			 *  merchant_uid에 경우 
			 *  https://docs.iamport.kr/implementation/payment
			 *  위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
			 */
			name: '테스트 결제',
			// 결제창에서 보여질 이름
			// name: '주문명 : ${auction.a_title}',
			// 위와같이 model에 담은 정보를 넣어 쓸수도 있습니다.
			amount: ${total},
			// amount: ${bid.b_bid},
			// 가격 
			buyer_name: '{member.memberName}',
			// 구매자 이름, 구매자 정보도 model값으로 바꿀 수 있습니다.
			// 구매자 정보에 여러가지도 있으므로, 자세한 내용은 맨 위 링크를 참고해주세요.
			buyer_postcode: '123-456',
			}, function (rsp) {
				console.log(rsp);
			if (rsp.success) {
				Swal.fire({
					title : '결제완료',
					text : '결제가 완료되었습니다.',
					icon : 'success',
					confirmButtonText:'OK'
				}).then((result)=>{
					if(result.isConfirmed){
						location.href="memberreservationhome.do?name=${cart.size()}&Id=${cart[0].spaceId}&spaceStartDate=${cart[0].spaceStartDate}"
					}
				})
			} else {
				Swal.fire({
					title : '결제실패',
					text : '결제가 실패하였습니다.',
					icon : 'error',
					confirmButtonText:'OK'
				}).then((result)=>{
				})
			}
		});
	});
		/* const userCode = "imp14397622";
		IMP.init(userCode);

		function requestPay() {
			IMP.request_pay({
				pg : "html5_inicis.INIpayTest",
				pay_method : "card",
				merchant_uid : "${member.memberName}",
				name : "테스트 결제",
				amount : ${total},
				buyer_tel : "${member.memberTel}",
			});
			Swal.fire({
				title : '결제완료',
				text : '결제가 완료되었습니다.',
				icon : 'success',
				confirmButtonText:'OK'
			}).then((result)=>{
				if(result.isConfirmed){
					location.href="memberreservationhome.do?name=1"
				}
			})
		} */
	</script>
</body>
</html>