<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--<%@ page session="false" %>--%>
<!DOCTYPE html>
<html>
<head>
    <title>UserCRUD :: CRUD</title>
    <spring:url value="http://localhost:8080/resources/css/bootstrap.min.css" var="bootstrap"/>
    <spring:url value="http://localhost:8080/resources/css/bootstrap-theme.min.css" var="startertemplate"/>
    <link href="${bootstrap}" rel="stylesheet"/>
    <link href="${startertemplate}" rel="stylesheet"/>
</head>
<body style="padding-top: 5px">
<div class="container">
    <div class="alert alert-info">
        <h1>CRUD</h1>
    </div>
</div>
<div class="container">
    <c:import url="page_components/paging.jsp"></c:import>
    <div class="row">
        <div class="col-md-7">
            <%--table--%>
            <c:import url="page_components/users_table.jsp"></c:import>
        </div>
        <div class="col-md-5">
            <%--form--%>
            <c:import url="page_components/form.jsp"></c:import>
            <c:import url="page_components/search.jsp"></c:import>
        </div>
    </div>
    <%--paging--%>
    <c:import url="page_components/paging.jsp"></c:import>
</div>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
</body>
</html>
