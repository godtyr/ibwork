<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="paginate">

    <a href="${parm.valueOfPageUrl}?${param.valueOfPageParamName}=${param.firstPageNo}">처음</a>
    <a href="${parm.valueOfPageUrl}?${param.valueOfPageParamName}=${param.prevPageNo}">이전</a>
    <span>
        <c:forEach var="i" begin="${param.startPageNo}" end="${param.endPageNo}" step="1">
            <c:choose>
                <c:when test="${i eq param.pageNo}"><strong>${i}</strong></c:when>
                <c:otherwise><a href="${parm.valueOfPageUrl}?${param.valueOfPageParamName}=${i}">${i}</a></c:otherwise>
            </c:choose>
        </c:forEach>
    </span>
    <a href="${parm.valueOfPageUrl}?${param.valueOfPageParamName}=${param.nextPageNo}">다음</a>
    <a href="${parm.valueOfPageUrl}?${param.valueOfPageParamName}=${param.finalPageNo}">마지막</a>

</div>