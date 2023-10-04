<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>

<!-- 모달 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

</head>
<body>
	<!-- Content wrapper -->
	<div class="content-wrapper">
		<!-- Content -->

		<div class="container-xxl flex-grow-1 container-p-y">
			<h4 class="fw-bold py-3 mb-4">
				<span class="text-muted fw-light">New Space</span> Register
			</h4>

			<!-- Basic Layout -->
			<form id="frm" method="post" action="AjaxHostSpaceRegiser.do"
				enctype="multipart/form-data">
				<div class="row">
					<div class="col-xl" style="border-radius:10px">
						<div class="card mb-4">
							<img src="image/space/숙소1.jpg" style="height: 200px; object-fit: cover; border-radius:10px 10px 0 0;">
							<div
								class="card-header d-flex justify-content-between align-items-center">
								<h5 class="mb-0">Input New Space Information</h5>
								<small class="text-muted float-end">space register</small>
							</div>
							<div class="card-body">
								<div class="mb-3" style="width: 50%">
									<label class="form-label" for="basic-default-fullname">Space
										Name</label> <input type="text" class="form-control"
										id="basic-default-fullname" name="name" placeholder="Studio"
										required />
								</div>
								<div class="mb-3" style="width: 50%">
									<label class="form-label" for="basic-default">Price</label> <input
										type="text" class="form-control" id="basic-default"
										name="price" placeholder="20000" required />
								</div>
								<div class="mb-3" style="width: 50%">

									<label class="form-label" for="city">City</label> <select
										id="city" name="city" class="select2 form-select" required>
										<option value="null">선택</option>
										<option value="제주">제주</option>
										<option value="서울">서울</option>
										<option value="경기">경기</option>
										<option value="인천">인천</option>
										<option value="강원">강원</option>
										<option value="충청">충청</option>
										<option value="대전">대전</option>
										<option value="경상">경상</option>
										<option value="대구">대구</option>
										<option value="울산">울산</option>
										<option value="부산">부산</option>
										<option value="전라">전라</option>
										<option value="광주">광주</option>
									</select>
								</div>
								<div class="mb-3" style="width: 80%">
									<label class="form-label" for="basic-default">Address</label> <input
										type="text" id="address" name="address" class="form-control"
										placeholder="주소를 입력하세요." required />
								</div>
								<div class="mb-3" style="width: 50%">
									<label class="form-label" for="type">Type</label> <select
										id="stype" name="stype" class="select2 form-select" required>
										<option value="null">선택</option>
										<option value="Commercial">Commercial</option>
										<option value="House">House</option>
										<option value="Studio">Studio</option>
									</select>
								</div>
								<div class="mb-3" style="width: 80%;">
									<label class="form-label" for="basic-default-message">Content</label>
									<textarea id="basic-default-message" name="content"
										class="form-control" placeholder="대여공간에 대한 설명을 입력하세요."
										style="height: 200px" required></textarea>
								</div>

								<!-- File input -->
								<div class="mb-3" style="width: 60%">
									<label for="formFile" class="form-label">메인 이미지 파일 선택</label> <input
										class="form-control" name="imgfile1" type="file" id="formFile1"
										multiple required /> <label for="formFile" class="form-label">서브1
										이미지 파일 선택</label> <input class="form-control" name="imgfile2"
										type="file" id="formFile2" multiple required /> <label
										for="formFile" class="form-label">서브2 이미지 파일 선택</label> <input
										class="form-control" name="imgfile3" type="file" id="formFile3"
										multiple required />
								</div>
								<br>
								<div align="center">
									<button type="submit" class="btn btn-secondary me-2 register">등록하기</button>
									<button type="reset" class="btn btn-outline-secondary">취소하기</button>
								</div>
							</div>
							<img src="image/space/숙소1.jpg" style="height: 200px; object-fit: cover; object-position: bottom; border-radius:0 0 10px 10px;">
						</div>
					</div>
				</div>
			</form>
		</div>
		<!-- / Content -->
	</div>
	<c:if test="${not empty retCode }">
		<div id="${retCode }"></div>
	</c:if>
	<script>
		//등록시 알람창
		if($('#Success').length){
			Swal.fire({
				  icon: 'success',
				  text: '등록되었습니다.',
				}).then(function () {
					location.href = 'registerspace.do';
				});
		}
		if($('#Fail').length){
			Swal.fire({
				  icon: 'error',
				  text: '처리 중 오류 발생',
				}).then(function () {
					location.href = 'registerspace.do';
				});
		}
		
	</script>
</body>
</html>