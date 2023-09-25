<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
  </head>

  <body>
    <!-- Menu -->

    <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
      <div class="app-brand demo">
  <!-- 로고있던자리 -->

        <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
          <i class="bx bx-chevron-left bx-sm align-middle"></i>
        </a>
      </div>

      <div class="menu-inner-shadow"></div>

      <ul class="menu-inner py-1">
        <!-- Forms & Tables -->
        <li class="menu-header small text-uppercase"><span class="menu-header-text">My Page</span></li>
        <!-- Forms 시작점!! -->
        <li class="menu-item" >
          <a href="#" class="menu-link menu-toggle" onclick="listClick('jiwon');">
            <i class="menu-icon tf-icons bx bx-detail"></i>
            <div data-i18n="Form Elements">Reservation Details</div>
          </a>
        </li>
        <br>
        <li class="menu-item">
          <a href="#" class="menu-link menu-toggle" onclick="cartClick('jiwon');">
            <i class="menu-icon tf-icons bx bx-detail"></i>
            <div data-i18n="Form Elements">Wish List</div>
          </a>
        </li>
        <br>
        <li class="menu-item">
          <a href="#" class="menu-link menu-toggle" onclick="memberClick('jiwon');">
            <i class="menu-icon tf-icons bx bx-detail"></i>
            <div data-i18n="Form Elements">Profile</div>
          </a>
        </li>

        <!-- 여기까지!! 지우면 안됨  -->

      </ul>
    </aside>
    <form id="sform" action="memberreservelist.do" method="post">
    <input type= "hidden" id="memberId" name="memberId">
    </form>
    <form id="aform" action="membercartlist.do" method="post">
    <input type= "hidden" id="memberId" name="memberId">
    </form>
     <form id="mform" action="memberedit.do" method="post">
    <input type= "hidden" id="memberId" name="memberId">
    </form>
    <script>
    function listClick(id){
        console.log(id);
    	let form = document.getElementById("sform");
    	form.memberId.value=id;
    	form.submit();
    }
    function cartClick(id){
        console.log(id);
    	let form = document.getElementById("aform");
    	form.memberId.value=id;
    	form.submit();
    }
    function memberClick(id){
        console.log(id);
    	let form = document.getElementById("mform");
    	form.memberId.value=id;
    	form.submit();
    }
    </script>
    <!-- / Menu -->
  </body>

  </html>