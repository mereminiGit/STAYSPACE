<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
			<div class="row">
				<div class="col-xl">
					<div class="card mb-4">
						<div
							class="card-header d-flex justify-content-between align-items-center">
							<h5 class="mb-0">새 대여공간 정보</h5>
							<small class="text-muted float-end">space register</small>
						</div>
						<div class="card-body">
							<form>
								<div class="mb-3">
									<label class="form-label" for="basic-default-fullname">Space Name</label> <input type="text" class="form-control"
										id="basic-default-fullname" placeholder="Studio" />
								</div>
								<div class="mb-3">
									<label class="form-label" for="basic-default">Price</label>
									<input type="text" class="form-control"
										id="basic-default" placeholder="20000" />
								</div>
								<div class="mb-3">
									
										<label class="form-label" for="country">Country</label> <select
											id="country" class="select2 form-select">
											<option value="">선택</option>
											<option value="Australia">서울</option>
											<option value="Bangladesh">부산</option>
											<option value="Belarus">대구</option>
											<option value="Brazil">울산</option>
											<option value="Canada">광주</option>
											<option value="China">대전</option>
											<option value="France">인천</option>
										</select>
								</div>
								<div class="mb-3">
									<label class="form-label" for="basic-default">Address</label> <input
										type="text" id="address" class="form-control"
										placeholder="주소를 입력하세요." />
								</div>
								<div class="mb-3">
									<label class="form-label" for="basic-default-message">Content</label>
									<textarea id="basic-default-message" class="form-control"
										placeholder="대여공간에 대한 설명을 입력하세요."></textarea>
								</div>

								<!-- File input -->
								<div class="mb-3">
									<label for="formFileMultiple" class="form-label">이미지 파일
										선택</label> <input class="form-control" type="file"
										id="formFileMultiple" multiple />
								</div>
								<button type="submit" class="btn btn-primary">등록</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- / Content -->
	</div>
</body>
</html>