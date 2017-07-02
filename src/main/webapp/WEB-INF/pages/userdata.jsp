<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>

<!DOCTYPE html>
<html>
<head>

  <title>UserCRUD :: CRUD</title>
  <link href="../resources/css/bootstrap.min.css" rel="stylesheet"/>
  <link href="../resources/css/bootstrap-theme.min.css" rel="stylesheet"/>

</head>
<body>
<h1>Book Details</h1>

<table class="tg">
  <tr>
    <th width="80">ID</th>
    <th width="120">Title</th>
    <th width="120">Author</th>
    <th width="120">Price</th>
  </tr>
  <tr>
    <td>${user.id}</td>
    <td>${user.name}</td>
    <td>${user.admin}</td>
    <td>${user.createdDate}</td>
  </tr>
</table>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
</body>
</html>