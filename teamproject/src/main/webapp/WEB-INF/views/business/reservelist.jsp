<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8' />
<script src='fullcalendar/dist/index.global.js'></script>
<script>

  document.addEventListener('DOMContentLoaded', function() {
	  var allEvents =[];
	
			allEvents.push({
				title: event.title,
				start: event.startDate,
				end: event.endDate
			})
		
		callFull(); //allEvent에 데이터를 넣어준 후에 fullcalendar 호출해야함.

  
	//fullcalendar 기능 호출
	function callFull(){
		
	    var calendarEl = document.getElementById('calendar');
	    var calendar = new FullCalendar.Calendar(calendarEl, {
	      headerToolbar: {
	        left: 'prev,next today',
	        center: 'title',
	        right: 'dayGridMonth,timeGridWeek,timeGridDay'
	      },
	      initialDate: '2023-09-08',
	      navLinks: true, // can click day/week names to navigate views
	      selectable: true,
	      selectMirror: true,
	      select: function(arg) {
	        var title = prompt('Event Title:');
	        if (title) {
				
					
			          calendar.addEvent({
			            title: title,
			            start: arg.start,
			            end: arg.end,
			            allDay: arg.allDay
			          })
	        }
	        calendar.unselect()
	      },
	      eventClick: function(arg) {
	        if (confirm('Are you sure you want to delete this event?')) {
	          arg.event.remove()
	        }
	      },
	      editable: true,
	      dayMaxEvents: true, // allow "more" link when too many events
	      events: allEvents
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

</style>
</head>
<body>

  <div id='calendar'></div>

</body>
</html>