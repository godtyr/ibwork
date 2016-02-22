<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page"%> 
<decorator:usePage id="headerPage"></decorator:usePage>

<!-- Logo -->
<a href="index.php" class="logo" style="background-color:#367fa9">      
    <!-- logo for regular state and mobile devices -->
    <span class="logo-lg"><b>infobank</b>work</span>
</a>

<!-- Header Navbar -->
<nav class="navbar navbar-static-top" role="navigation" style="background-color:#3c8dbc">

    <!-- Navbar Right Menu -->
    <div class="navbar-custom-menu" style="margin-right:30px;">
        <ul class="nav navbar-nav">     
    
            <!-- User Account Menu -->
            <li class="dropdown user user-menu">
            <!-- Menu Toggle Button -->
          
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <span class="hidden-xs"><i class="fa fa-street-view"></i> 사원명 님&nbsp; <i class="fa fa-angle-down"></i></span>
                </a>
                <ul class="dropdown-menu">
                    <!-- The user image in the menu -->
                    <li class="user-header" style="background-color:#367fa9; height:80px;" >             
                        <p>
                            iServiceTech > 정보운영팀
                            <small>사원명</small>
                        </p>
                    </li>
                    <!-- Menu Body -->              
                    <!-- Menu Footer-->
                    <li class="user-footer">                
                        <div class="pull-right">
                            <a href="#" class="btn btn-default btn-flat">Sign out</a>
                        </div>
                    </li>
                </ul>
            </li>
            <!-- Control Sidebar Toggle Button -->
       
        </ul>
    </div>
</nav>