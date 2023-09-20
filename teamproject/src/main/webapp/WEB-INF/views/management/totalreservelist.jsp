<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8' />
<script src='fullcalendar/dist/index.global.js'></script>
<script>
	document.addEventListener('DOMContentLoaded', function() {
		var allEvents = [];

		allEvents.push({
			title : event.title,
			start : event.startDate,
			end : event.endDate
		})

		callFull(); //allEvent에 데이터를 넣어준 후에 fullcalendar 호출해야함.

		//fullcalendar 기능 호출
		function callFull() {

			var calendarEl = document.getElementById('calendar');
			var calendar = new FullCalendar.Calendar(calendarEl, {
				headerToolbar : {
					left : 'prev,next today',
					center : 'title',
					right : 'dayGridMonth,timeGridWeek,timeGridDay'
				},
				initialDate : '2023-09-08',
				navLinks : true, // can click day/week names to navigate views
				selectable : true,
				selectMirror : true,
				select : function(arg) {
					var title = prompt('새 예약을 등록하세요.');
					if (title) {

						calendar.addEvent({
							title : title,
							start : arg.start,
							end : arg.end,
							allDay : arg.allDay,
						})
					}
					calendar.unselect()
				},
				eventClick : function(arg) {
					if (confirm('해당 예약을 정말 삭제하시겠습니까?')) {
						arg.event.remove()
					}
				},
				eventBorderColor: '#343a40',
				eventBackgroundColor : '#343a40',
				editable : true,
				dayMaxEvents : true, // allow "more" link when too many events
				events : allEvents
			});

			calendar.render();
		}
	});
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
