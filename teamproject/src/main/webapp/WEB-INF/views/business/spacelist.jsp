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
              </script>
              
</body>
</html>