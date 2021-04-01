<!DOCTYPE html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet" >
</head>
<body>
<div class="container">
    <form:form method="post" action="${contextPath}/login" cssClass="form-signin">
        <h2 class="form-heading">Вход</h2>

        <div class="form-group ${error != null ? 'has-error' : ''}">
            <span>${message}</span>

            <input name="username" type="text" class="form-control" placeholder="имя пользователя">
            <input name="password" type="password" class="form-control" placeholder="пароль">

            <span>${error}</span>

            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Вход</button>
            <h4 class="text-center">
                <a href="${contextPath}/registration">Создать аккаунт</a>
            </h4>
        </div>
    </form:form>

</div>

<script src="${contextPath}/resources/js/jquery-1.12.4.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>

</body>
</html>
