<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page"%> 
<decorator:usePage id="sidePage"></decorator:usePage>
<%
HttpServletRequest req = sidePage.getRequest();
String uri = req.getRequestURI();
%>          
 

    <!-- Sidebar user panel (optional) -->
    <div class="user-panel" style="text-align:center">
        <div style="color:white; ">
            iServiceTech 정보운영팀<br/>
            사원명  
        </div>      
    </div>
    <!-- Sidebar Menu -->
    <section class="sidebar">
      
        <ul class="sidebar-menu">
            <li class="header">MENU</li>       
            <li id="left1" class="active treeview" >
                <a href="index.php" >
                    <i class="fa fa-calendar-minus-o"></i><span>근태관리</span>
                </a>            
            </li>
            <li class="treeview">
                <a href="201.php" >
                    <i class="fa fa-black-tie"></i> <span>출퇴근 관리</span>
                </a>
            </li>
            <li class="treeview">
                <a href="301.php">
                    <i class="fa fa-automobile"></i> <span>교통비보조관리</span>             
                </a>
            </li>
            <li class="treeview">
                <a href="401.php">
                    <i class="fa fa-th-list"></i><span>연차관리</span>
                </a>                
            </li>               
        </ul>
        <ul class="sidebar-menu">
            <li class="header">ADMIN MENU</li>
            <!-- Optionally, you can add icons to the links -->
            <li id="left1" class="active treeview" >
                <a href="#" >
                <i class="fa fa-hourglass-half"></i><span>조정</span><i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu active">             
                    <li><a href="202.php"><i class="fa fa-genderless"></i>출퇴근 조정</a></li>
                    <li><a href="302.php"><i class="fa fa-genderless"></i>교통비조정</a></li>
                    <li><a href="402.php"><i class="fa fa-genderless"></i>연차조정</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#" >
                    <i class="fa fa-th"></i> <span>통계</span><i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu active">
                    <li><a href="102.php"><i class="fa fa-genderless"></i>근태통계</a></li>
                    <li><a href="203.php" ><i class="fa fa-genderless"></i>출퇴근통계</a></li>
                    <li><a href="303.php"><i class="fa fa-genderless"></i>교통비통계</a></li>
                    <li><a href="403.php"><i class="fa fa-genderless"></i>연차통계</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#"><i class="fa fa-plus-circle"></i> <span>등록</span> <i class="fa fa-angle-left pull-right"></i></a>
                <ul class="treeview-menu">
                    <li><a href="404.php"><i class="fa fa-genderless"></i>연차등록</a></li>
                    <li><a href="405.php"><i class="fa fa-genderless"></i>파견등록</a></li>
                </ul>
            </li>
        </ul>      
        <ul class="sidebar-menu">
            <li class="header">MY PAGE</li>
            <li id="left1" class="treeview">
                <a href="#" >
                    <i class="fa fa-user"></i><span>개인관리</span><i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="901.php" ><i class="fa fa-genderless"></i>개인정보수정</a></li>
                    <li><a href="902.php"><i class="fa fa-genderless"></i>전사원정보</a></li>
                </ul>
            </li>
        </ul>
        <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar --> 
<!-- ./wrapper -->
