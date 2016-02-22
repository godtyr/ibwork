<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ page import="org.springframework.security.core.Authentication" %>
<%@ page import="net.infobank.ibwork.vo.MemberInfoVo" %>

<%

Authentication auth = SecurityContextHolder.getContext().getAuthentication();
Object principal = auth.getPrincipal(); 

String name = "";

if(principal != null && principal instanceof MemberInfoVo){
    name = ((MemberInfoVo)principal).getName();
}

%>


<html>
<head>
<title></title>

<script type="text/javascript">
/*
$(document).ready(function (){
 
	$("#loginbtn").click(function(){
		if($("#loginid").val() == ""){
			alert("로그인 아이디를 입력해주세요");
			$("#loginid").focus();
		}else if($("#loginpwd").val() == ""){
			alert("로그인 비밀번호를 입력해주세요");
			$("#loginpwd").focus();
		}else{
			$("#loginfrm").attr("action", "<c:url value='/j_spring_security_check'/>");
			$("#loginfrm").submit();
		}
	});
 
});
*/
</script>
</head>
<body>
<sec:authorize access="isAnonymous()"> <!-- 익명 사용자일 때.. -->
<div style="display:inline-block;">
로그인 화면
	<form id="loginfrm" name="loginfrm" action="j_spring_security_check" method="POST">
		<table>
			<tr>
			  <td>아이디</td>
			<td>
			    <input type="text" id="id" name="id" value="" />
			</td>
			<td rowspan="2">
                <input type="submit" id="submit" value="확인" />
            </td>
		    </tr>
			<tr>
			    <td>비밀번호</td>
			<td>
			     <input type="text" id="pwd" name="pwd" value="" />
			</td>
			</tr>
			<c:if test="${not empty param.fail}">
			<tr>
			<td colspan="2">
			<font color="red">
			<p>로그인 실패</p>
			<p>사유: ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</p>
			</font>
			<c:remove scope="session" var="SPRING_SECURITY_LAST_EXCEPTION"/>
			</td>
			</tr>
			</c:if>
		</table>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	</form>
</div>
</sec:authorize>



<sec:authorize access="isAuthenticated()"> <!-- 인증된 사용자일 때 -->
<%=name%>님 반갑습니다
<a href="logout.ib">로그아웃</a>
</sec:authorize>

<ul>

    <sec:authorize access="hasRole('ADMIN')">

    <li>관리자 메뉴</li>

    </sec:authorize>

    <sec:authorize access="permitAll">

    <li>전체 허용 메뉴</li>

    </sec:authorize>

    <sec:authorize access="isAuthenticated()">

    <li>인증(로그인) 메뉴</li>

    </sec:authorize>

    <sec:authorize access="hasAnyRole('MANAGER', 'CHIEF')">

    <li>승인자 메뉴</li>

    </sec:authorize>

</ul>
    
    
    
</body>
</html>