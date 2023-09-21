<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <!-- jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <!-- 모달 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
<!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Member </span> management</h4>
              <!-- Hoverable Table rows -->
              <div class="card">
                <h5 class="card-header">Total </h5>
                <div class="table-responsive text-nowrap">
                
                  <table class="table table-hover">
                    <thead>
                      <tr>
                      	<th>Image
                        <th>Id</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Tel</th>
                        <th>Category</th>
                        <th>Actions</th>
                      </tr>
                    </thead>
                    <tbody class="table-border-bottom-0">
                    	<c:forEach items="${members }" var="m">
                    			<tr mid="${m.memberId }">
                    			<c:choose>
                    				<c:when test="${m.memberImage eq null}">
                    					<td><img src="sneat/assets/img/avatars/defaultimg.png" class="rounded-circle" alt="default" style="width: 30px"></td>
                    				</c:when>
                    				<c:otherwise>
                    				<td><img src="vaso-html/images/"${m.memberImage } class="rounded-circle" alt="default" style="width: 30px"></td>
                    				</c:otherwise>
                    			</c:choose>
                    				<td>${m.memberId }</td>
                    				<td>${m.memberName }</td>
                    				<td>${m.memberEmail }</td>
                    				<td>${m.memberTel }</td>
                    				<td>${m.memberCheck }</td>
                    				<td>
										<div class="dropdown">
				                            <button type="button" class="btn p-0 dropdown-toggle hide-arrow memberdelete">
				                              <i class="bx bx-trash me-1"></i> Delete
				                            </button>
                            			</div>
									</td>
                    			</tr>
                    	</c:forEach>
                    <!-- 1번 회원 
                      <tr>
                        <td>Angular Project</td>
                        <td>Albert Cook</td>
                        <td>albert@google.com
                        </td>
                        <td>010-****-****</td>
                        <td><span class="badge bg-label-warning me-1">Customer</span></td>
                        <td>
                          <div class="dropdown">
                            <button type="button" class="btn p-0 dropdown-toggle hide-arrow memberdelete">
                              <i class="bx bx-trash me-1"></i> Delete
                            </button>
                            </div>
                        </td>
                      </tr> -->
                      
                    </tbody>
                    <caption style="padding-left: 20px"><b>Total: </b>(Business: , Customer: )</caption>
                  </table>
                </div>
              </div>
              <!--/ Hoverable Table rows -->
              
              </div>
              </div>
              
                        
              <script>
              
              //삭제 이벤트 
              $('.memberdelete').on('click', function(e){
      			//e.target.parentElement.parentElement.parentElement.remove();
      			let mid = e.target.parentElement.parentElement.parentElement.getAttribute('mid');
      			memberRemove(mid,function(result){
      				if(result.retCode == 'Success'){
      					e.target.parentElement.parentElement.parentElement.remove();
      					Swal.fire({
							  icon: 'success',
							  text: '삭제 성공',
							})
      				}else if(result.retCode == 'Fail'){
   						Swal.fire({
						  icon: 'error',
						  text: '처리 중 에러 발생',
						})
      				}else{
      					Swal.fire({
  						  icon: 'error',
  						  text: '잘못된 코드 반환',
  						})
      				}
      			})
      			
              })
              function memberRemove(memberId, callback){
            	  fetch('AjaxMemberDelete.do?mid='+memberId)
            	  .then(resolve => resolve.json())
            	  .then(result => callback(result))
            	  .catch();
              }
              </script>
              
              <!-- build:js assets/vendor/js/core.js -->
    <script src="sneat/assets/vendor/libs/jquery/jquery.js"></script>
    <script src="sneat/assets/vendor/libs/popper/popper.js"></script>
    <script src="sneat/assets/vendor/js/bootstrap.js"></script>
    <script src="sneat/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="sneat/assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->

    <!-- Main JS -->
    <script src="sneat/assets/js/main.js"></script>

    <!-- Page JS -->

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
</body>
</html>