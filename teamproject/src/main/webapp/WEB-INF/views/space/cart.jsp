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
<!-- script ================================================== -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
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
      <symbol xmlns="http://www.w3.org/2000/svg" id="baseline-clear"
			viewBox="0 0 24 24">
        <path fill="currentColor"
			d="M19 6.41L17.59 5L12 10.59L6.41 5L5 6.41L10.59 12L5 17.59L6.41 19L12 13.41L17.59 19L19 17.59L13.41 12z" />
      </symbol>
    </svg>

	<section
		class="hero-section jarallax d-flex align-items-center justify-content-center padding-medium pb-5"
		style="background: url(vaso-html/images/hero-img.jpg) no-repeat;">
		<div class="hero-content">
			<div class="container">
				<div class="row">
					<div class="text-center padding-large no-padding-bottom">
						<h1>cart</h1>
						<div class="breadcrumbs">
							<span class="item"> <a href="index.html">Home ></a>
							</span> <span class="item">cart</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="shopify-cart padding-large">
		<div class="container">
			<div class="row">
				<div class="table-responsive">
					<table class="table">
						<thead class="text-uppercase">
							<tr>
								<th scope="col">Product</th>
								<th scope="col">Date</th>
								<th scope="col">Subtotal</th>
								<th scope="col"></th>
							</tr>
						</thead>
						<tbody>
							<!--카트 상품목록 -->
							<c:set var="total" value="0" />
							<c:forEach items="${cartList }" var="c">
								<tr class="border-bottom border-dark" id="cartid" style="font-family: 'Noto Sans KR', sans-serif; font-weight: 400;">
									<td class="align-middle border-0" scope="row">
										<div class="cart-product-detail align-items-center" style="text-align:center;">
											<div class="card-image">
												<img src="image/space/${c.spaceImageMain }" alt="cloth"
													class="img-fluid">
											</div>
											<div class="card-detail ps-3">
												<h5 class="card-title fs-3 text-capitalize" style="font-weight: 500; font-family: 'Noto Sans KR', sans-serif;">
													<a href="#">${c.spaceName }</a>
												</h5>
												<%-- <span class="item-price text-primary fs-3 fw-light">${c.spacePrice }</span> --%>
											</div>
										</div>
									</td>
									<td class="align-middle border-0"><span
										class="item-price text-primary fs-3 fw-medium">${c.spaceStartDate }<br>
									</span></td>
									<td class="align-middle border-0"><span
										class="item-price text-primary fs-3 fw-medium">&#x20a9;<script>numberWithCommas(${c.spacePrice })</script></span></td>
									<td class="align-middle border-0 cart-remove"><button type="button"
										onclick="remove('${c.reserveId}')" style="border: none; background: none;"> <svg width="32px" height="32px">
                        <use xlink:href="#baseline-clear"></use>
                      </svg>
									</button></td>
								</tr>
								<c:set var="total" value="${total+c.spacePrice }" />
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="cart-totals padding-medium">
					<h3 class="pb-4">Cart Total</h3>
					<div class="total-price pb-5">
						<table cellspacing="0" class="table text-uppercase">
							<tbody>
								<tr class="order-total pt-2 pb-2 border-bottom border-dark">
									<th>Total</th>
									<td class="align-middle border-0" data-title="Total"><span
										class="price-amount amount text-primary">&#x20a9;<script>numberWithCommas(${total })</script>
									</span></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="button-wrap">
						<button class="btn btn-dark me-2 mb-2"
							onclick="location.href='shoplist.do'">Continue Shopping</button>
						<button class="btn btn-primary me-2 mb-2"
							onclick="location.href='checkout.do'">Proceed To
							Checkout</button>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script>
	function remove(reserveId){
		
		Swal.fire({
			  title: '삭제',
			  text: "정말로 삭제하시겠습니까?",
			  icon: 'warning',
			  showCancelButton: true,
			  confirmButtonColor: '#3085d6',
			  cancelButtonColor: '#d33',
			  confirmButtonText: 'delete'
			}).then((result) => {
			  if (result.isConfirmed) {
				  console.log(reserveId)
				$.ajax({
					url:"cartdelete.do?reserveId=" + reserveId,
					type: "get",
					success: function(data){
						$('#cartid').detach();
						
					},
				})
					Swal.fire(
			      '삭제!',
			      '삭제가 완료되었습니다.',
			      'success'
			    ).then((result)=>{
			    	location.replace("cart.do");
			    })
			  }
			})
	}
	</script>
</body>
</html>