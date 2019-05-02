<%--
  Created by IntelliJ IDEA.
  User: krzysztof
  Date: 02.05.19
  Time: 18:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>mainPage</title>
</head>
<body>
<form:form method="post" modelAttribute="tweet">
    <form:errors path="text"/><br>
    firstName: <form:input path="text"/><br>
    <form:errors path="user" /><br>
    publisher: <form:select path="user.id" items="${allUsers}" itemLabel="lastName" itemValue="id"/><br>
    <input type="submit" value="Save"/>
</form:form>

<div>
    <c:forEach items="${allTweets}" var="tweet">
        <div>
            <a>${tweet.user.firstName} ${tweet.user.lastName}</a><br>
            <a>${tweet.created}</a><br>
            <a>${tweet.text}</a>
        </div>
    </c:forEach>
</div>
</body>
</html>