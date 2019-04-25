<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">
    <h1>Profile Configurations</h1>
    <h3>Please update your profile as you see fit</h3>

    <form action="/profile/configurations" method="post">
        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text" value="<c:out value ="${sessionScope.user.username}"/>">
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input id="email" name="email" class="form-control" type="text" value="<c:out value ="${sessionScope.user.email}"/>">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password">
        </div>
        <div class="form-group">
            <label for="id">Id</label>
            <input id="id" name="id" class="form-control" type="hidden" value="<c:out value="${sessionScope.user.id}"/>">
        </div>
        <input type="submit" class="btn btn-block btn-primary">
    </form>

</div>

</body>
</html>
