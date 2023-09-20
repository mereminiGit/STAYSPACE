<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    
    <!-- img css -->
    <style>
    img#stayimg{
    	width: 200px;
    	height: 120px;
    	border-radius: 10px;
    }
   
   
    	.center {
		text-align: center;
	}

	.pagination {
		display: inline-block;
	}

	.pagination a {
		color: black;
		float: left;
		padding: 8px 16px;
		text-decoration: none;
		transition: background-color .3s;
		border: 1px solid #ddd;
		margin: 0 4px;
	}

	.pagination a.active {
		background-color: #4CAF50;
		color: white;
		border: 1px solid #4CAF50;
	}

	.pagination a:hover:not(.active) {
		background-color: #ddd;
	}
	
    </style>
    <!-- jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    
</head>
<body>
<!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Space </span> Management</h4>
              
              <!-- Hoverable Table rows -->
              <div class="card">
                <h5 class="card-header">대여공간 목록</h5>
                <div class="table-responsive text-nowrap">
                  <table class="table table-hover table table-striped">
                    <thead>
                      <tr>
                      	<th>Space Img</th>
                        <th>Name</th>
                        <th>Address</th>
                        <th>Price</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody class="table-border-bottom-0">
                    <!-- 1번 공간 -->
                      <tr>
                      	<td><img id="stayimg" src="sneat/assets/img/avatars/stayimg1.jpg" alt="space1"></td>
                        <td>촬영 스튜디오</td>
                        <td>서울특별시 강남구 테헤란로19</td>
                        <td><span>50000</span> 원</td>
                        <td>
                          <div class="dropdown">
                            <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                              <i class="bx bx-dots-vertical-rounded"></i>
                            </button>
                            <div class="dropdown-menu">
                              <button type="button" class="dropdown-item spaceedit"
                              data-bs-toggle="modal" data-bs-target="#modalCenter"
                                ><i class="bx bx-edit-alt me-1"></i> 수정</button
                              >
                              <button type="button" class="dropdown-item spacedelete"
                                ><i class="bx bx-trash me-1"></i> 삭제</button
                              >
                            </div>
                          </div>
                        </td>
                      </tr>
                      <!-- 2번 공간 -->
                      <tr>
                        <td><img id="stayimg" src="sneat/assets/img/avatars/stayimg1.jpg" alt="space1"></td>
                        <td>파티룸</td>
                        <td>서울특별시 강남구 테헤란로19</td>
                        <td><span>60000</span> 원</td>
                        <td>
                          <div class="dropdown">
                            <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                              <i class="bx bx-dots-vertical-rounded"></i>
                            </button>
                            <div class="dropdown-menu">
                              <button type="button" class="dropdown-item spaceedit"
                              data-bs-toggle="modal" data-bs-target="#modalCenter"
                                ><i class="bx bx-edit-alt me-1"></i> 수정</button
                              >
                              <button type="button" class="dropdown-item spacedelete"
                                ><i class="bx bx-trash me-1"></i> 삭제</button
                              >
                            </div>
                          </div>
                        </td>
                      </tr>
                      <!-- 3번 공간 -->
                      <tr>
                        <td><img id="stayimg" src="sneat/assets/img/avatars/stayimg1.jpg" alt="space1"></td>
                        <td>촬영 스튜디오</td>
                        <td>서울특별시 강남구 테헤란로19</td>
                        <td><span>50000</span> 원</td>
                        <td>
                          <div class="dropdown">
                            <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                              <i class="bx bx-dots-vertical-rounded"></i>
                            </button>
                            <div class="dropdown-menu">
                              <button type="button" class="dropdown-item spaceedit"
                              data-bs-toggle="modal" data-bs-target="#modalCenter"
                                ><i class="bx bx-edit-alt me-1"></i> 수정</button
                              >
                              <button type="button" class="dropdown-item spacedelete"
                                ><i class="bx bx-trash me-1"></i> 삭제</button
                              >
                            </div>
                          </div>
                        </td>
                      </tr>
                      <!-- 4번 공간 -->
                      <tr>
                        <td><img id="stayimg" src="sneat/assets/img/avatars/stayimg1.jpg" alt="space1"></td>
                        <td>파티룸</td>
                        <td>서울특별시 강남구 테헤란로19</td>
                        <td><span>60000</span> 원</td>
                        <td>
                          <div class="dropdown">
                            <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                              <i class="bx bx-dots-vertical-rounded"></i>
                            </button>
                            <div class="dropdown-menu">
                              <button type="button" class="dropdown-item spaceedit"
                              data-bs-toggle="modal" data-bs-target="#modalCenter"
                                ><i class="bx bx-edit-alt me-1"></i> 수정
                                </button
                              >
                              <button type="button" class="dropdown-item spacedelete"
                                ><i class="bx bx-trash me-1"></i> 삭제</button
                              >
                            </div>
                          </div>
                        </td>
                      </tr>
                    </tbody>
                    <caption style="padding-left: 20px"><b>Total: </b></caption>
                  </table>
                  
                  <!--/ Hoverable Table rows -->
               <nav aria-label="Page navigation">
                          <ul class="pagination justify-content-center">
                            <li class="page-item prev">
                              <a class="page-link" href="javascript:void(0);"
                                ><i class="tf-icon bx bx-chevrons-left"></i
                              ></a>
                            </li>
                            <li class="page-item">
                              <a class="page-link" href="javascript:void(0);">1</a>
                            </li>
                            <li class="page-item">
                              <a class="page-link" href="javascript:void(0);">2</a>
                            </li>
                            <li class="page-item active">
                              <a class="page-link" href="javascript:void(0);">3</a>
                            </li>
                            <li class="page-item">
                              <a class="page-link" href="javascript:void(0);">4</a>
                            </li>
                            <li class="page-item">
                              <a class="page-link" href="javascript:void(0);">5</a>
                            </li>
                            <li class="page-item next">
                              <a class="page-link" href="javascript:void(0);"
                                ><i class="tf-icon bx bx-chevrons-right"></i
                              ></a>
                            </li>
                          </ul>
                        </nav>
                        
                </div>
              </div>
              
              </div>
              </div>
              
						<!-- Modal -->
                        <div class="modal fade" id="modalCenter" tabindex="-1" aria-hidden="true">
                          <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
	                            
                              <div class="modal-header">
                                <h5 class="modal-title" id="modalCenterTitle">대여공간 수정항목</h5>
                                <button
                                  type="button"
                                  class="btn-close"
                                  data-bs-dismiss="modal"
                                  aria-label="Close"
                                ></button>
                              </div>
                              <div class="modal-body">
                               <div class="row">
                              <div class="mb-3">
									
										<label for="formFileMultiple" class="form-label">이미지 파일
											선택 (다중선택 가능)</label> <input class="form-control" type="file"
											id="formFileMultiple" multiple required/>
								</div>
								</div>  
                                <div class="row">
                                  <div class="col mb-3">
                                    <label for="nameWithTitle" class="form-label">Name</label>
                                    <input
                                      type="text"
                                      id="nameWithTitle"
                                      class="form-control"
                                      name = "modalName"
                                      placeholder="이름을 입력하세요."
                                    />
                                  </div>
                                </div>
                                 <div class="row">
                                  <div class="col mb-3">
                                    <label for="AddressWithTitle" class="form-label">Address</label>
                                    <input
                                      type="text"
                                      id="AddressWithTitle"
                                      class="form-control"
                                      name = "modalAddress"
                                      placeholder="주소를 입력하세요."
                                    />
                                  </div>
                                 </div>
                                 <div class="row">
                                  <div class="col mb-3">
                                    <label for="PriceWithTitle" class="form-label">Price</label>
                                    <input
                                      type="text"
                                      id="PriceWithTitle"
                                      class="form-control"
                                      name = "modalPrice"
                                      placeholder="가격을 입력하세요."
                                    />
                                  </div>
                                 </div>
                                </div>
                              <div class="modal-footer">
                                <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
                                  취소하기
                                </button>
                                <button type="button" class="btn btn-dark change" data-bs-dismiss="modal">변경하기</button>
                              </div>
                              </div>
                            </div>
                          </div>
                        
              <script>
              //삭제 이벤트 
              $('.spacedelete').on('click', function(e){
      			e.target.parentElement.parentElement.parentElement.parentElement.remove();
              })
              //수정 이벤트
              $('.spaceedit').on('click',function(e){
            	  console.log(e.target.parentElement.parentElement.parentElement.parentElement.children[0]);
            	  let name = e.target.parentElement.parentElement.parentElement.parentElement.children[1];
            	  let address = e.target.parentElement.parentElement.parentElement.parentElement.children[2];
            	  let price = e.target.parentElement.parentElement.parentElement.parentElement.children[3];
            	  $('input[name=modalName]').val(e.target.parentElement.parentElement.parentElement.parentElement.children[1].innerText);
            	  $('input[name=modalAddress]').val(e.target.parentElement.parentElement.parentElement.parentElement.children[2].innerText);
            	  $('input[name=modalPrice]').val(e.target.parentElement.parentElement.parentElement.parentElement.children[3].children[0].innerText);
	              $('.change').on('click', function(e){
		              name.innerText = $('input[name=modalName]').val();
	            	  address.innerText = $('input[name=modalAddress]').val();
	            	  price.children[0].innerText = $('input[name=modalPrice]').val();
	              })
              })
              
              
              //Page Navigation
              //tr 생성
		function makeTr(center) {
			let tr = document.createElement('tr');
			['id', 'centerName', 'phoneNumber', 'address'].forEach(prop => {
				let td = document.createElement('td');
				if (prop == 'centerName') {
					let atag = document.createElement('a');
					atag.innerText = center[prop];
					atag.setAttribute('href', 'map.jsp?lat=' + center.lat + '&lng=' + center.lng);
					atag.setAttribute('target', '_blank');
					td.appendChild(atag);
				} else {
					td.innerText = center[prop];
				}
				tr.appendChild(td);
			})
			// 삭제
			let td = document.createElement('td');
			let btn = document.createElement('button');
			btn.innerText = '삭제';
			td.appendChild(btn);
			btn.addEventListener('click',function(e){
				e.target.parentElement.parentElement.remove();
			})
			tr.appendChild(td);
			return tr;
		}

		//page 정보를 매개값으로 가지는 페이지, 목록 보여주는 함수
		function showPageList(page = 1, targetList = []) {
			let totalCount = targetList.length; //284
			// 페이지의 목록을 보여주기
			document.querySelector('#list').innerHTML = '';
			let start = (page - 1) * 10; //1페이지: 0
			let end = page * 10; //10
			end = end > totalCount ? totalCount : end;

			for (let i = start; i < end; i++) {
				let tr = makeTr(targetList[i]);
				document.querySelector('#list').appendChild(tr);
			}

			// 페이지의 링크 생성
			document.querySelector('.pagination').innerHTML = '';
			let endPage = Math.ceil(totalCount / 10); // 예를들어 29개 -> 29/10 => 3, 35/10 => 4
			endPage = Math.ceil(page / 10) * 10; //3page => 10
			let realEndPage = Math.ceil(totalCount / 10);
			let startPage = endPage - 9;
			endPage = endPage > realEndPage ? realEndPage : endPage;
			let next = endPage < Math.ceil(totalCount / 10); //29page
			let prev = startPage > 1;

			if (prev) {
				let atag = document.createElement('a');
				atag.addEventListener('click', function (e) {
					e.preventDefault(); //링크의 기능을 차단
					showPageList(startPage - 1, targetList);
				})
				atag.setAttribute('href', startPage - 1);
				atag.innerHTML = '&laquo;';
				document.querySelector('.pagination').appendChild(atag);
			}
			for (let i = startPage; i <= endPage; i++) {
				let atag = document.createElement('a');
				atag.addEventListener('click', function (e) {
					e.preventDefault(); //링크의 기능을 차단
					showPageList(i, targetList);
				})
				if (page == i) {
					atag.setAttribute('class', 'active');
				}
				atag.setAttribute('href', i);
				atag.innerHTML = i;
				document.querySelector('.pagination').appendChild(atag);
			}
			if (next) {
				let atag = document.createElement('a');
				atag.addEventListener('click', function (e) {
					e.preventDefault(); //링크의 기능을 차단
					showPageList(endPage + 1, targetList);
				})
				atag.setAttribute('href', endPage + 1);
				atag.innerHTML = '&raquo;';
				document.querySelector('.pagination').appendChild(atag);
			}
		}
              </script>
              
</body>
</html>