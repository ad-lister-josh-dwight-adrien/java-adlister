<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
    <div class="container">
        <h4>Category</h4>
        <form action="/ads/category" method="post">
            <div class="form-group">
                <label for="personal">Personal</label><br>
                <input id="personal" name="personal" value="1" type="checkbox"><br><br>
            </div>
        </form>
    </div>
</body>
</html>