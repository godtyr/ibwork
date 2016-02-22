<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page"%>     
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!-- 프로퍼티 -->
<!-- spring:eval var="loginUrl" expression="@menu.MENU"/-->

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!-- Bootstrap 3.3.5 -->
	<link rel="stylesheet" href="_css/common/bootstrap.min.css">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<!-- Ionicons -->
	<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="_css/common/AdminLTE.css">
	<!-- AdminLTE Skins. We have chosen the skin-blue for this starter
	      page. However, you can choose any other skin. Make sure you
	      apply the skin class to the body tag so the changes take effect.
	-->
	<!-- Select2 -->
	<link rel="stylesheet" href="_plugins/select2/select2.min.css">
	<link rel="stylesheet" href="_plugins/iCheck/minimal/_all.css">
	<link rel="stylesheet" href="_css/common/skins/skin-blue.min.css">
	
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
  
    <decorator:head />
	<title>
	    <decorator:title default="인포뱅크 | 근태관리" />
	</title>
</head> 



<body class="hold-transition skin-blue sidebar-mini">

<div class="wrapper">
	<!-- 해더 -->
	<header class="main-header">	
	    <page:applyDecorator name="header" />
	</header> 
	  
	<!-- 사이드 -->
	<aside class="main-sidebar">
	   <page:applyDecorator name="side" />
	</aside>
	
	<!-- 바디 -->
	<div class="content-wrapper">
	    <decorator:body />
	</div>
	
	<!-- Main Footer -->
	<footer class="main-footer">
	   <page:applyDecorator name="footer" />
	</footer>
		
	<div class="control-sidebar-bg"></div>
</div>

 <!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 2.1.4 -->
<script src="_plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- Bootstrap 3.3.5 -->
<script src="_js/bootstrap.min.js"></script>
<!-- Select2 -->
<script src="_plugins/select2/select2.full.min.js"></script>
<!-- InputMask -->
<script src="_plugins/input-mask/jquery.inputmask.js"></script>
<script src="_plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="_plugins/input-mask/jquery.inputmask.extensions.js"></script>
<!-- date-range-picker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
<script src="_plugins/daterangepicker/daterangepicker.js"></script>
<!-- bootstrap color picker -->

<!-- bootstrap time picker -->
<script src="_plugins/timepicker/bootstrap-timepicker.min.js"></script>
<!-- SlimScroll 1.3.0 -->
<script src="_plugins/slimScroll/jquery.slimscroll.min.js"></script>

<!-- iCheck 1.0.1 -->
<script src="_plugins/iCheck/icheck.min.js"></script>
<!-- FastClick -->
<script src="_plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="_js/common/app.js"></script>

<!-- 페이지 개별 스크립트 -->
<decorator:getProperty property="page.local_script"></decorator:getProperty>


</body>
</html>