<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class=" alert alert-info">
    <table class="table table-striped table-hover table-condensed">
        <thead>
        <tr class="row info">
            <th class="col-md-1 text-center">id</th>
            <th class="col-md-3 text-center">name</th>
            <th class="col-md-1 text-center">age</th>
            <th class="col-md-1 text-center">isAdmin</th>
            <th class="col-md-2 text-center">createdDate</th>
            <th class="col-md-2 text-center"></th>
            <th class="col-md-2 text-center"></th>
        </tr>
        </thead>
        <c:if test="${!empty listUsers}">
            <tbody>
            <c:forEach items="${listUsers}" var="user">
                <tr class="row">
                    <td class="col-md-1 text-center">${user.id}</td>
                    <td class="col-md-3 text-center">${user.name}</td>
                    <td class="col-md-1 text-center">${user.age}</td>
                    <td class="col-md-1 text-center">
                        <c:if test="${user.admin}">
                            <i class="glyphicon glyphicon-ok"> </i>
                        </c:if>
                    </td>
                    <td class="col-md-2 text-center">${user.createdDate}</td>
                    <td class="col-md-2 text-center">
                        <a href="<c:url value='/edit/${user.id}/?page=${page}'/>">
                            <i class="glyphicon glyphicon-edit"> </i> edit
                        </a>
                    </td>
                    <td class="col-md-2 text-center">
                        <a href="<c:url value='/remove/${user.id}/?page=${page}'/>">
                            <i class="glyphicon glyphicon-remove"> </i> delete
                        </a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </c:if>
    </table>
</div>
