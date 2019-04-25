<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Delete Your Ad" />
    </jsp:include>
</head>
<body>
<% request.setAttribute("idAd", request.getParameter("idAd"));%>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container">

    ${sessionScope.user.id}
    <h1>${sessionScope.user.username}, are you sure you want to delete this ad?</h1>
    <c:forEach var="ad" items="${ads}">
        ${ad.userId}
        <c:if test="${ad.id == idAd}">
        <form action="/ads/delete" method="post">
            <div class="form-group">
                <input id="userid" name="userid" class="form-control" type="hidden" value="<c:out value="${ad.userId}"/>">
            </div>
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
            <%--<input type="submit" class="btn btn-block btn-primary">--%>
            <button>Confirm Deletion</button>
        </form>
        </c:if>
    </c:forEach>

</div>
</body>
</html>
