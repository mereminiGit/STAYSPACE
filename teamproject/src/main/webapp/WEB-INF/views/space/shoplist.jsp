<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vaso Ecommerce Template</title>
</head>
<body>
	<section
		class="hero-section jarallax d-flex align-items-center justify-content-center padding-medium pb-5"
		style="background: url(vaso-html/images/hero-img.jpg) no-repeat;">
		<div class="hero-content">
			<div class="container">
				<div class="row">
					<div class="text-center padding-large no-padding-bottom">
						<h1>Spaces</h1>
						<div class="breadcrumbs">
							<span class="item"> <a href="index.html">Home ></a>
							</span> <span class="item">Spaces</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class="shopify-grid padding-large" style="padding-bottom: 0;">
		<div class="container">
			<div class="row">
				<main class="col-md-9">
					<div class="filter-shop d-flex flex-wrap justify-content-between">
						<div class="showing-product">
							<p>Showing 1-9 of 55 results</p>
						</div>
						<div class="sort-by">
							<select id="input-sort" class="form-control" data-filter-sort=""
								data-filter-order="">
								<option value="">Default sorting</option>
								<option value="">Price (Low-High)</option>
								<option value="">Price (High-Low)</option>
								<option value="">Rating (Highest)</option>
								<option value="">Rating (Lowest)</option>
							</select>
						</div>
					</div>
					<div class="row product-content product-store">
						<c:forEach items="${spaces }" var="s">
							<div class="col-lg-4 col-md-6">
								<div class="product-card mb-3 position-relative">
									<div class="image-holder zoom-effect">
										<img src="vaso-html/images/${s.spaceImageMain}"
											alt="product-item" class="img-fluid zoom-in">
									</div>
									<div class="card-detail text-center pt-3 pb-2">
										<h5 class="card-title fs-3 text-capitalize"><a href="#" onclick="selectSpace('${s.spaceName}')">${s.spaceName }</a></h5>
										<span class="item-price text-primary fs-3 fw-light">${s.spacePrice }원<small>/시간</small></span>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<nav
						class="navigation paging-navigation text-center padding-medium"
						role="navigation" style="padding-bottom: 0;">
						<div
							class="pagination loop-pagination d-flex justify-content-center align-items-center">
							<a href="#" class="d-flex pe-2"> <svg width="24" height="24">
										<use xlink:href="#angle-left"></use></svg>
							</a> <span aria-current="page" class="page-numbers current pe-3">1</span>
							<a class="page-numbers pe-3" href="#">2</a> <a
								class="page-numbers pe-3" href="#">3</a> <a
								class="page-numbers pe-3" href="#">4</a> <a class="page-numbers"
								href="#">5</a> <a href="#" class="d-flex ps-2"> <svg
									width="24" height="24">
										<use xlink:href="#angle-right"></use></svg>
							</a>
						</div>
					</nav>
				</main>
				<aside class="col-md-3">
					<div class="sidebar">
						<div class="widget-menu">
							<div class="widget-search-bar">
								<form role="search" method="get"
									class="position-relative d-flex justify-content-between align-items-center border-bottom border-dark py-1"
									action="shoplist.do">
									<input class="search-field" id="spaceName" name="spaceName"
										placeholder="Search" type="search">
									<div class="search-icon position-absolute end-0">
										<a href="#"> <svg width="26" height="26" class="search">
                          <use xlink:href="#search"></use>
                        </svg>
										</a>
									</div>
								</form>
							</div>
						</div>
							<div class="widget-product-categories pt-5">
								<h5
									class="widget-title text-decoration-underline text-uppercase">Cities</h5>
								<ul class="product-categories sidebar-list list-unstyled">
									<li class="cat-item"><a href="shoplist.do"
										>All</a></li>
									<li class="cat-item"><a href="?spaceCity=Seoul">Seoul</a></li>
									<li class="cat-item"><a href="?spaceCity=Busan">Busan</a></li>
									<li class="cat-item"><a href="?spaceCity=Daegu">Daegu</a></li>
									<li class="cat-item"><a href="?spaceCity=Gwangjoo">Gwangjoo</a></li>
								</ul>
							</div>
						<h5 class="widget-title text-decoration-underline text-uppercase">
							Date <input type="text" id="datepicker">
						</h5>
						<div class="widget-product-tags pt-3">
							<h5 class="widget-title text-decoration-underline text-uppercase">Space
								for</h5>
							<ul class="product-tags sidebar-list list-unstyled">
								<li class="cat-item"><a href="shoplist.do"
										>All</a></li>
								<li class="tags-item"><a href="?spaceType=Commercial">Commercial</a></li>
								<li class="tags-item"><a href="?spaceType=House">House</a></li>
								<li class="tags-item"><a href="?spaceType=Studio">Studio</a></li>
							</ul>
						</div>
					</div>
				</aside>
			</div>
		</div>
		<div>
			<form id="sform" action="shopdetail.do" method="post">
				<input type="hidden" id="spaceName" name="spaceName">
			</form>
		</div>
		
	</div>

	<!--   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script>
    $( function() {
      $( "#datepicker" ).datepicker({
        dateFormat:'yy-mm-dd',
        minDate:0
      });
    } );
    </script> -->
	<script type="text/javascript">
	function selectSpace(name){
		let form= document.getElementById("sform");
		form.spaceName.value = name;
		form.submit();
	}
	
		$('#datepicker').datepicker({
			format : 'yyyy-mm-dd'
		}).on('hide', function(event) {
			event.preventDefault();
			event.stopPropagation();
		});
	</script>

</body>
</html>