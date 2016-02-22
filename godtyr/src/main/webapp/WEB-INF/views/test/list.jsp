<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>

<title>게시판목록</title>
<content tag="local_script">  
    <script>  
       //이 부분의 스크립트가 decorator의 local_script 프로퍼티 영역에 들어간다.
    </script> 

</content>
<script>  
    //local_script태그로 감싸지 않으면 head 위치에 삽입
</script> 
</head>
<body>

<table style="border:1px solid #ccc">
    <colgroup>
        <col width="10%"/>
        <col width="*"/>
        <col width="15%"/>
        <col width="20%"/>
    </colgroup>
    <thead>
        <tr>
            <th scope="col">글번호</th>
            <th scope="col">제목</th>
            <th scope="col">이름</th>
            <th scope="col">작성일</th>
            <th scope="col">삭제</th>
        </tr>
    </thead>
    <tbody>
        <c:choose>
            <c:when test="${fn:length(testList) > 0}">
                <c:forEach var="row" items="${testList }" varStatus="status">
                    <tr>
                        <td>${row.idx }</td>
                        <td><a href="article.ib?idx=${row.idx }">${row.title }</a></td>
                        <td>${row.user }</td>
                        <td><fmt:formatDate value="${row.reg_date }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                        <td><a href="delete.ib?idx=${row.idx }">삭제</a></td>
                    </tr>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <tr>
                    <td colspan="5">조회된 결과가 없습니다.</td>
                </tr>
            </c:otherwise>
        </c:choose>
         
    </tbody>
</table>

<!-- 페이징 -->
<jsp:include page="/include/pagenation.jsp" flush="true">
    <jsp:param name="firstPageNo" value="${pagenation.firstPageNo}" />
    <jsp:param name="prevPageNo" value="${pagenation.prevPageNo}" />
    <jsp:param name="startPageNo" value="${pagenation.startPageNo}" />
    <jsp:param name="pageNo" value="${pagenation.pageNo}" />
    <jsp:param name="endPageNo" value="${pagenation.endPageNo}" />
    <jsp:param name="nextPageNo" value="${pagenation.nextPageNo}" />
    <jsp:param name="finalPageNo" value="${pagenation.finalPageNo}" />
    <jsp:param name="pageBtnSize" value="${pagenation.pageBtnSize}" />
    
    <jsp:param name="valueOfPageUrl" value="list.ib" />
    <jsp:param name="valueOfPageParamName" value="page" />
    
</jsp:include>
<br />
<a href="write.ib" >글등록</a>



<form action="logout.ib" method="post" id="logoutForm">
    <input type="submit" value="로그아웃" />
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>
</body>
</html>