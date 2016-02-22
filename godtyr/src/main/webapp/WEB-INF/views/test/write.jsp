<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value='/js/common.js'/>" charset="utf-8"></script>
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="write.ib">
		<table>
		<tr>
		    <td>제목</td>
		    <td><input type="text" name="subject"/></td>
		</tr>
		<tr>
		    <td>작성자</td>
		    <td><input type="text" name="user"/></td>
		</tr>
		<tr>
		    <td>내용</td>
		    <td><textarea name="contents" rows="5"></textarea></td>
		</tr>
		</table>
		
		<input type="submit" value="글등록" />
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	</form>
	
</body>
</html>