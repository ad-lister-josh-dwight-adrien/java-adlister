<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Update Your Ad" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container">
    <h1>Update Your Ad, ${sessionScope.user.username}</h1>
    <c:forEach var="ad" items="${ads}">
        <%--<c:if test="${ad.id} ">--%>
            <form action="/ads/update" method="post">
                <div class="form-group">
                    <input id="id" name="id" class="form-control" type="hidden" value="<c:out value="${ad.id}"/>">
                </div>
                <div class="form-group">
                    <label for="title">Title</label>
                    <input id="title" name="title" class="form-control" type="text" value="<c:out value="${ad.title}"/>">
                </div>
                <div class="form-group">
                    <label for="description">Description</label>
                    <input id="description" name="description" class="form-control" type="text" value="<c:out value="${ad.description}"/>">
                    <%--<textarea id="description" name="description" class="form-control" type="text" value="<c:out value="${ad.description}"/>"></textarea>--%>
                </div>
                <input type="submit" class="btn btn-block btn-primary">
            </form>
        <%--</c:if>--%>
    </c:forEach>

    <%--<h1>Here's a List of Your Current Ads:</h1>--%>
    <%--<c:forEach var="ad" items="${ads}">--%>
        <%--<c:if test="${ad.userId == sessionScope.user.id}">--%>
            <%--<div class="col-md-6">--%>
                <%--<c:out value="${ad.id}"></c:out>--%>
                <%--<h2>${ad.title}</h2>--%>
                <%--<p>${ad.description}</p>--%>
            <%--</div>--%>
        <%--</c:if>--%>
    <%--</c:forEach>--%>
</div>
</body>
</html>
