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
							<h5 class="mb-0">새 대여공간 등록</h5>
							<small class="text-muted float-end">space register</small>
						</div>
						<div class="card-body">
							<form>
								<div class="mb-3" style="width: 50%">
									<label class="form-label" for="basic-default-fullname">Space Name</label> <input type="text" class="form-control"
										id="basic-default-fullname" placeholder="Studio" required/>
								</div>
								<div class="mb-3" style="width: 50%">
									<label class="form-label" for="basic-default">Price</label>
									<input type="text" class="form-control"
										id="basic-default" placeholder="20000" required/>
								</div>
								<div class="mb-3" style="width: 50%">
									
										<label class="form-label" for="country">Country</label> <select
											id="country" class="select2 form-select" required>
											<option value="">선택</option>
											<option value="Australia">서울특별시</option>
											<option value="Bangladesh">부산광역시</option>
											<option value="Belarus">대구광역시</option>
											<option value="Brazil">울산광역시</option>
											<option value="Canada">광주광역시</option>
											<option value="China">대전광역시</option>
											<option value="France">인천광역시</option>
											<option value="France">경상남도</option>
											<option value="France">경상북도</option>
											<option value="France">충청남도</option>
											<option value="France">충청북도</option>
											<option value="France">전라남도</option>
											<option value="France">전라북도</option>
											<option value="France">경기도</option>
											<option value="France">강원도</option>
											<option value="France">제주도</option>
										</select>
								</div>
								<div class="mb-3" style="width: 80%">
									<label class="form-label" for="basic-default">Address</label> <input
										type="text" id="address" class="form-control"
										placeholder="주소를 입력하세요." required/>
								</div>
								<div class="mb-3" style="width: 80%;">
									<label class="form-label" for="basic-default-message">Content</label>
									<textarea id="basic-default-message" class="form-control"
										placeholder="대여공간에 대한 설명을 입력하세요." style="height: 200px" required></textarea>
								</div>

								<!-- File input -->
								<div class="mb-3" style="width: 60%">
								
									<label for="formFileMultiple" class="form-label">이미지 파일
										선택 (다중선택 가능)</label> <input class="form-control" type="file"
										id="formFileMultiple" multiple required/>
								</div>
								<br>
								<div align="center">
								<button type="submit" class="btn btn-secondary me-2">등록하기</button>
								<button type="reset" class="btn btn-outline-secondary">취소하기</button>
								</div>
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