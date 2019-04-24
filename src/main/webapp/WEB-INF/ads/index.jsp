
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- bootstrap link -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title></title>
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
            <c:if test = "${search.charAt(0) == ad.title.charAt(0)}">
            <h2><c:out value = "${ad.title}"/></h2>
            <p><c:out value = "${ad.description}"/><p>
            </c:if>
        </div>
    </c:forEach>
</div>

</body>
</html>