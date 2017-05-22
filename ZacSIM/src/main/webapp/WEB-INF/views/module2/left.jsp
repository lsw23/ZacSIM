<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left info">
              <p>${sessionScope.branchOwner.branch_nm} <a href="#"><i class="fa fa-circle text-success"></i> Online</a></p>
            </div>
          </div> 
          <!-- search form -->
          <!-- <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
              <input type="text" name="q" class="form-control" placeholder="Search..."/>
              <span class="input-group-btn">
                <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
              </span>
            </div>
          </form> -->
          <!-- /.search form -->
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <!-- active -->
          <ul class="sidebar-menu">
            <li class="header">Main Menu</li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-dashboard"></i> <span>Dashboard</span> <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="${pageContext.request.contextPath}/dashboard/today_status"><i class="fa fa-circle-o"></i> 오늘의 현황</a></li>
                <li><a href="${pageContext.request.contextPath}/dashboard/all_status"><i class="fa fa-circle-o"></i> 통계</a></li>
              </ul>
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-laptop"></i>
                <span>직원</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="${pageContext.request.contextPath}/staff/staff_form"><i class="fa fa-circle-o"></i> 직원 등록</a></li>
                <li><a href="${pageContext.request.contextPath}/staff/staff_list"><i class="fa fa-circle-o"></i> 직원 목록</a></li>
              </ul>
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-edit"></i> <span>회원</span>
                <i class="fa fa-angle-left pull-right"></i>
                <small class="label pull-right bg-red">new</small>
              </a>
              <ul class="treeview-menu">
                <li><a href="${pageContext.request.contextPath}/member/member_form"><i class="fa fa-circle-o"></i> 회원 등록</a></li>
                <li><a href="${pageContext.request.contextPath}/member/member_list"><i class="fa fa-circle-o"></i> 회원 목록</a></li>
              </ul>
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-table"></i> <span>열람실</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="${pageContext.request.contextPath}/room/room_form"><i class="fa fa-circle-o"></i>열람실 등록</a></li>
                <li><a href="${pageContext.request.contextPath}/room/room_main"><i class="fa fa-circle-o"></i>열람실 관리</a></li>
                <li><a href="${pageContext.request.contextPath}/room/room_dashboard"><i class="fa fa-circle-o"></i>열람실 현황</a></li>
              </ul>
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-credit-card"></i> <span>회계</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="${pageContext.request.contextPath}/room/room_form"><i class="fa fa-circle-o"></i>수입</a></li>
                <li><a href="${pageContext.request.contextPath}/room/room_main"><i class="fa fa-circle-o"></i>지출</a></li>
              </ul>
            </li>

            
            <li id="attendance">
              <a href="${pageContext.request.contextPath}/attendance/attendance_form">
                <i class="fa fa-bell-o"></i> <span>출결번호</span>
              </a>
            </li>
            
            
            <li class="header">Sub Menu</li>
            <li>
              <a href="${pageContext.request.contextPath}/staffboard/staffboard_list">
                <i class="fa fa-envelope"></i> <span>공지사항</span>
                <small class="label pull-right bg-yellow">12</small>
              </a>
            </li>
            <li><a href="${pageContext.request.contextPath}/charges/charges_form"><i class="fa fa-book"></i> 요금제 설정</a></li>
       
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>