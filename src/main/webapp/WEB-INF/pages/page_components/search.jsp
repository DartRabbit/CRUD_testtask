<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class=" alert alert-info">
    <form class="form-inline" method="get">
        <input id="page" name="page" type="hidden" value="${page}">
        <div class="form-group">
            <label for="inputName">Search:</label>
            <input type="text" name="search" class="form-control input-sm" id="inputName" placeholder="input username">
        </div>
        <button type="submit" class="btn btn-default btn-sm ">Find!</button>
    </form>

</div>
