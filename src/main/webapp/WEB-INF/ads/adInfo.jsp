<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<%

    request.setAttribute("adId", request.getParameter("adId"));
    
%>
<h2><c:out value="${userId.username}" /></h2>
<h2><c:out value="${userId.email}" /></h2>
<c:forEach var="ad" items="${ads}">
    <div class="col-md-12">
        <c:if test="${ad.id == adId}">
            <h2><c:out value="${ad.title}" /></h2>
            <p>${ad.description}</p>
        </c:if>
    </div>
</c:forEach>

</body>
</html>
