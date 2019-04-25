<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
    <h1>Here Are all the ads!</h1>
    <form method="get" action="">
        <div class="form-group">
            <label for="title">search ad</label>
            <input type="text" class="form-control" id="title" name="title" aria-describedby="title" placeholder="search">
            <input type="submit" >
        </div>
    </form>
    <c:forEach var="ad" items="${ads}">
        <div class="col-md-12">
            <%
                String query = request.getParameter("title");
                request.setAttribute("search", request.getParameter("title"));
            %>
            <c:if test = "${search == null}">
            <h2><c:out value = "${ad.title}"/></h2>
            <p><c:out value = "${ad.description}"/><p>
            </c:if>
            <c:if test = "${search.toString() == ''}">
            <h2><c:out value = "${ad.title}"/></h2>
            <p><c:out value = "${ad.description}"/><p>
            </c:if>
            <c:if test="${search.length() != 0}">
            <c:if test = "${search != null}">
            <c:if test = "${ad.title.toLowerCase().contains(search.toLowerCase())}">
            <h2><c:out value = "${ad.title}"/></h2>
            <p><c:out value = "${ad.description}"/><p>
            </c:if>
            </c:if>
            </c:if>
        </div>
    </c:forEach>
</div>
</body>
</html>