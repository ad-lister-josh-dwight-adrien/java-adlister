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
    <h1>Welcome, ${sessionScope.user.username}!</h1
    <h1>Here Are all your ads!</h1>
    <c:forEach var="ad" items="${ads}">


        <c:if test="${ad.userId == sessionScope.user.id}">
            <div class="col-md-6">
                <h2>${ad.id}</h2>
                <h2>${ad.title}</h2>
                <p>${ad.description}</p>
                <button><a href="/ads/update">Edit</a></button>
                <button><a href="/ads/delete">Delete</a></button>
            </div>
        </c:if>
    </c:forEach>

    <form action="/profile/configurations">
        <input type="submit" value="Configure Profile" />
    </form>
</div>

</body>
</html>
