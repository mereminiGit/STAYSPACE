<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vaso Ecommerce Template</title>
<style>
.star-ratings {
	color: #aaa9a9;
	position: relative;
	unicode-bidi: bidi-override;
	width: max-content;
	-webkit-text-fill-color: transparent;
	/* Will override color (regardless of order) */
	-webkit-text-stroke-width: 1.3px;
	-webkit-text-stroke-color: #2b2a29;
}

.star-ratings-fill {
	color: #fff58c;
	padding: 0;
	position: absolute;
	z-index: 1;
	display: flex;
	top: 0;
	left: 0;
	overflow: hidden;
	-webkit-text-fill-color: black;
}

.star-ratings-base {
	z-index: 0;
	padding: 0;
}
</style>
<script>
function numberWithCommas(x) {
	document.write(x.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ","));
	}
</script>
</head>
<body>
	<section
		class="hero-section jarallax d-flex align-items-center justify-content-center padding-medium pb-5"
		style="background: url(image/space/hero-img.jpg) no-repeat;">
		<div class="hero-content">
			<div class="container">
				<div class="row">
					<div class="text-center padding-large no-padding-bottom">
						<h1>Spaces</h1>
						<div class="breadcrumbs">
							<span class="item"> <a href="home.do">Home ></a>
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
							<p>Showing 1-${pages } of ${results } results</p>
						</div>
						<!-- <div class="sort-by">
							<select id="input-sort" class="form-control" data-filter-sort=""
								data-filter-order="" name="sorting">
								<option value="all">Default sorting</option>
								<option value="price">Price (Low-High)</option>
								<option value="ratinr">Rating (Highest)</option>
							</select>
						</div> -->
					</div>
					<div class="row product-content product-store">
						<c:forEach items="${spaces }" var="s">
							<div class="col-lg-4 col-md-6">
								<div class="product-card mb-3 position-relative">
									<div class="image-holder zoom-effect">
										<a href="#" onclick="selectSpace('${s.spaceId}')"><img src="image/space/${s.spaceImageMain}" alt="product-item"
											class="img-fluid zoom-in"></a>
									</div>
									<div class="card-detail text-center pt-3 pb-2">
										<h5 class="card-title fs-3 text-capitalize">
											<a href="#" onclick="selectSpace('${s.spaceId}')">${s.spaceName }</a>
										</h5>
										<span class="item-price text-primary fs-3 fw-light" id="price">${s.spaceCity }
											· &#x20a9;<script>numberWithCommas(${s.spacePrice })</script><small>/일</small>
										</span>
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
							<c:forEach var="page" begin="1" end="${pages}">
							<c:if test="${page eq currentPage}">
							<a class="page-numbers current pe-3" href="javascript:void(0);" onclick=url(${page})>${page }</a>
							</c:if>
							<c:if test="${page ne currentPage}">
							<a class="page-numbers pe-3" href="javascript:void(0);" onclick=url(${page})>${page }</a>
							</c:if>
							</c:forEach>	
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
							<h5 class="widget-title text-decoration-underline text-uppercase">Cities</h5>
							<ul class="product-categories sidebar-list list-unstyled">
								<li class="cat-item"><a href="shoplist.do">전체</a></li>
								<li class="cat-item"><a href="?spaceCity=제주">제주</a></li>
								<li class="cat-item"><a href="?spaceCity=서울">서울</a></li>
								<li class="cat-item"><a href="?spaceCity=경기">경기</a></li>
								<li class="cat-item"><a href="?spaceCity=인천">인천</a></li>
								<li class="cat-item"><a href="?spaceCity=강원">강원</a></li>
								<li class="cat-item"><a href="?spaceCity=충청">충청</a></li>
								<li class="cat-item"><a href="?spaceCity=대전">대전</a></li>
								<li class="cat-item"><a href="?spaceCity=경상">경상</a></li>
								<li class="cat-item"><a href="?spaceCity=대구">대구</a></li>
								<li class="cat-item"><a href="?spaceCity=울산">울산</a></li>
								<li class="cat-item"><a href="?spaceCity=부산">부산</a></li>
								<li class="cat-item"><a href="?spaceCity=전라">전라</a></li>
								<li class="cat-item"><a href="?spaceCity=광주">광주</a></li>
							</ul>
						</div>
						<h5 class="widget-title text-decoration-underline text-uppercase">
							Date <input type="text" id="datepicker" name="spaceStartDate">
						</h5>
						<div class="widget-product-tags pt-3">
							<h5 class="widget-title text-decoration-underline text-uppercase">Space
								for</h5>
							<ul class="product-tags sidebar-list list-unstyled">
								<li class="cat-item"><a href="shoplist.do">All</a></li>
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
				<input type="hidden" id="spaceId" name="spaceId">
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
		function selectSpace(id) {
			let form = document.getElementById("sform");
			form.spaceId.value = id;
			form.submit();
		}
		function url(page){
			var currentUrl = window.location.href;
			if(currentUrl.includes("?")){
				if(currentUrl.includes("page")){
					location.href=currentUrl.split('page')[0]+"page="+page
				}else{
					location.href=currentUrl+"&page="+page
				}
			} else{
				location.href=currentUrl+"?page="+page
			}
		}
		

		$('#datepicker').datepicker({
			dateFormat:'yy-mm-dd',
	        minDate:0,
	        onSelect : function(d) {
	        	var date=$("#datepicker").val();

	        	location.href="?spaceStartDate="+date;

			}
		}).on('hide', function(event) {
			event.preventDefault();
			event.stopPropagation();
		});
	</script>

</body>
</html>