<!DOCTYPE html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <form:form method="post" modelAttribute="userForm" cssClass="form-signin">
        <h2 class="form-signin-heading">Создание аккаунта</h2>
        <spring:bind path="username">
            <div class="form-group" ${status.error ? 'has-error' : ''}>
                <form:input path="username" type="text" cssClass="form-control" placeholder="USername">
                </form:input>
                <form:errors path="username"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="password">
            <div class="form-group" ${status.error ? 'has-error' : ''}>
                <form:input path="password" type="text" cssClass="form-control" placeholder="PAssword">
                </form:input>
                <form:errors path="password"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="confirmPassword">
            <div class="form-group" ${status.error ? 'has-error' : ''}>
                <form:input path="confirmPassword" type="text" cssClass="form-control" placeholder="COnfirmPAssword">
                </form:input>
                <form:errors path="confirmPassword"></form:errors>
            </div>
        </spring:bind>

        <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
    </form:form>

</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>

</body>
</html>
