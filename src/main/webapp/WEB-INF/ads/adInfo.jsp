<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: erebustheprogrammer
  Date: 2019-04-25
  Time: 08:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach var="ad" items="${ads}">
    <div class="col-md-6">
        <c:if test="${ad.id == 1}">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
        </c:if>
    </div>
</c:forEach>
</body>
</html>
