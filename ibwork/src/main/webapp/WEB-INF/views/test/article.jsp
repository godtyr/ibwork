<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<table class="board_view">

    <caption>게시글 상세</caption>
    <tbody>
        <tr>
            <th scope="row">글 번호</th>
            <td>${article.idx }</td>
            <th scope="row">조회수</th>
            <td>없음<td>
        </tr>
        <tr>
            <th scope="row">작성자</th>
            <td>${article.user }</td>
            <th scope="row">작성시간</th>
            <td>${article.reg_date }</td>
        </tr>
        <tr>
            <th scope="row">제목</th>
            <td colspan="3">${article.title }</td>
        </tr>
        <tr>
            <td colspan="4">${article.content }</td>
        </tr>
    </tbody>
</table>


</body>
</html>