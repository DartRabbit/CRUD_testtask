<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--<%@ page session="false" %>--%>

<div class=" alert alert-info">
    <c:if test="${empty user.name}">
        <h2>Add user</h2>
    </c:if>
    <c:if test="${!empty user.name}">
        <h2>Edit user</h2>
    </c:if>
    <form method="post" action="/users/update">
        <input id="id" name="id" type="hidden" value="${user.id}">
        <input id="page" name="page" type="hidden" value="${page}">
        <div class="row">
            <div class="col-xs-4">
                <input id="name" name="name" type="text" class="form-control input-sm" placeholder="name"
                       value="${user.name}">
            </div>
            <div class="col-xs-2">
                <input id="age" name="age" type="text" class="form-control input-sm" placeholder="age"
                <c:if test="${user.age!=0}"> value="${user.age}"</c:if>>
            </div>
            <div class="col-xs-3">
                <div class="checkbox">
                    <label>
                        <c:if test="${user.admin}">
                            <input type="checkbox" id="admin" name="admin" class="form-control input-sm" checked> is Admin?
                        </c:if>
                        <c:if test="${!user.admin}">
                            <input type="checkbox" id="admin" name="admin" class="form-control input-sm"> is Admin?
                        </c:if>
                    </label>
                </div>
            </div>
            <div class="col-xs-3">
                <c:if test="${empty user.name}">
                    <button type="submit" class="btn btn-default btn-sm">Add</button>
                </c:if>
                <c:if test="${!empty user.name}">
                    <button type="submit" class="btn btn-default btn-sm">Edit</button>
                </c:if>

            </div>
        </div>
    </form>
</div>
