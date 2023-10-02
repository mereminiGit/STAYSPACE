<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8' />

<script src='fullcalendar/dist/index.global.js'></script>
<!-- 모달 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
	document.addEventListener('DOMContentLoaded', function() {
		var allEvents = [];
		
		fetch('AjaxHostReserveList.do')
		.then(resolve => resolve.json())
		.then(json => {
			console.log(json);
			json.forEach(event => {
				allEvents.push({
					title : event.spaceName,
					start : event.reserveStartDate,
					groupId : event.reserveId,
					writer : event.memberId,
					content : event.reserveImg,
					id : event.reservePrice,
					allDay: true
				})
			})
			callFull();
		})

		//fullcalendar 기능 호출
		function callFull() {

			var calendarEl = document.getElementById('calendar');
			var calendar = new FullCalendar.Calendar(calendarEl, {
				headerToolbar : {
					left : 'prev,next today',
					center : 'title',
					right : 'dayGridMonth,timeGridWeek,timeGridDay'
				},
				initialDate : new Date(),
				navLinks : true, // can click day/week names to navigate views
				selectable : false,
				selectMirror : true,
				eventClick : function(arg) {
					//console.log(arg);
					Swal.fire({
						title: "Reservation Information",
						imageUrl: "image/space/"+arg.event.extendedProps.content,
						imageWidth: 200,
						imageHeight: 298,
						html: "<br><div><strong>Space Name:&nbsp;&nbsp;&nbsp;</strong>"+arg.event.title+"</div><br>"
							+"<div><strong>Reserved Date:&nbsp;&nbsp;&nbsp;</strong>"+dateToFormat(arg.event.start)+"</div><br>"
							+"<div><strong>Member Id:&nbsp;&nbsp;&nbsp;</strong>"+arg.event.extendedProps.writer+"</div><br>"
							+"<div><strong>Price:&nbsp;&nbsp;&nbsp;</strong>"+arg.event.id+"</div><br>",
	      	            showCancelButton: true,
	      	            confirmButtonColor: '#3085d6',
	      	            cancelButtonColor: '#d33',
	      	            confirmButtonText: 'Delete'
					}).then((result)=>{
						if (result.isConfirmed) {
					Swal.fire({
	      	            text: "해당 예약을 정말 삭제하시겠습니까?",
	      	            icon: 'warning',
	      	            showCancelButton: true,
	      	            confirmButtonColor: '#3085d6',
	      	            cancelButtonColor: '#d33',
	      	            confirmButtonText: 'Yes'
	      	          }).then((result) => {
						if (result.isConfirmed) {
							console.log(arg.event);
							fetch('AjaxReserveDelete.do',{
								method: "POST",
								headers: {"Content-Type": "application/x-www-form-urlencoded"},
								body: 'reserveId='+arg.event.groupId
							})
							.then(resolve => resolve.json())
							.then(json => {
								if(json.retCode == "Success"){
									arg.event.remove()
									Swal.fire({
					 					  icon: 'success',
					 					  text: '삭제 성공',
					 					})
								}else{
									Swal.fire({
					 					  icon: 'error',
					 					  text: '처리 중 오류 발생',
					 					})
								}
							})
							.catch();
	      	        	  
	      	          }
	      	          })
						}
					})
					},
					eventBorderColor: '#343a40',
					eventBackgroundColor : '#343a40',
					editable : true,
					dayMaxEvents : true, // allow "more" link when too many events
					events : allEvents
				})
				calendar.render();
			}

		});

		function dateToFormat(date) {
		    var year = date.getFullYear();
	
		    var month = date.getMonth() + 1;
		    if (month < 10)  {
		        month = '0' + month;
		    }
	
		    var date = date.getDate();
		    if (date < 10) {
		        date = '0' + date;
		    }
		    
		    return year + '/' + month + '/' + date;
		}
</script>
<style>
body {
	margin: 40px 10px;
	padding: 0;
	font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
	font-size: 14px;
}

#calendar {
	max-width: 1100px;
	margin: 0 auto;
}

/*요일*/
.fc-col-header-cell-cushion {
	color: #000;
}

.fc-col-header-cell-cushion:hover {
	text-decoration: none;
	color: #000;
}
/*일자*/
.fc-daygrid-day-number {
	color: #000;
	font-size: 1em;
}

/*more버튼*/
.fc-daygrid-more-link.fc-more-link {
	color: #000;
}
/*일정시간*/
.fc-daygrid-event>.fc-event-time {
	color: #000;
}
/*시간제목*/
.fc-daygrid-dot-event>.fc-event-title {
	color: #000 !important;
}
/*month/week/day*/
.fc-button-active {
	border-color: #ffc107 !important;
	background-color: #ffc107 !important;
	color: #000 !important;
	font-weight: bold !important;
}
/*노란버튼*/
.btn-warning {
	font-weight: bold;
}
/*모달 푸터*/
.modal-footer {
	display: inline-block;
}
</style>

<!-- Favicon -->
<link rel="icon" type="image/x-icon"
	href="sneat/assets/img/favicon/favicon.ico" />

<!-- Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
	rel="stylesheet" />

<!-- Icons. Uncomment required icon fonts -->
<link rel="stylesheet" href="sneat/assets/vendor/fonts/boxicons.css" />

<!-- Core CSS -->
<link rel="stylesheet" href="sneat/assets/vendor/css/core.css"
	class="template-customizer-core-css" />
<link rel="stylesheet" href="sneat/assets/vendor/css/theme-default.css"
	class="template-customizer-theme-css" />
<link rel="stylesheet" href="sneat/assets/css/demo.css" />

<!-- Vendors CSS -->
<link rel="stylesheet"
	href="sneat/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

<!-- Page CSS -->

<!-- Helpers -->
<script src="sneat/assets/vendor/js/helpers.js"></script>

<!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
<!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
<script src="sneat/assets/js/config.js"></script>
</head>
<body>
	<!-- Content wrapper -->
	<div class="content-wrapper">
		<!-- Content -->

		<div class="container-xxl flex-grow-1 container-p-y">
			<h4 class="fw-bold py-3 mb-4">
				<span class="text-muted fw-light">Reservation </span> management
			</h4>
			<div id='calendar'></div>
		</div>
	</div>
</body>
</html>