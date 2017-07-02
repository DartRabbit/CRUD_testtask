<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div>
    <ul class="pagination">
        <c:if test="${(page-1)<1}">
            <li class="disabled"><a href="#">Prev</a></li>
        </c:if>
        <c:if test="${(page-1)>0}">
            <li><a href="/users/?page=${page-1}">Prev</a></li>
        </c:if>
        <c:forEach items="${pages}" var="pageitem">
            <c:if test="${(pageitem>(page-3)) and (pageitem<(page+3))}">
                <c:if test="${page==pageitem}">
                    <li class="active"><a href="/users/?page=${pageitem}">${pageitem}</a></li>
                </c:if>
                <c:if test="${page!=pageitem}">
                    <li><a href="/users/?page=${pageitem}">${pageitem}</a></li>
                </c:if>
            </c:if>
        </c:forEach>

        <c:if test="${(page+1)>pages.size()}">
            <li class="disabled"><a href="#">Next</a></li>
        </c:if>
        <c:if test="${(page+1)<=pages.size()}">
            <li><a href="/users/?page=${page+1}">Next</a></li>
        </c:if>
    </ul>
</div>
