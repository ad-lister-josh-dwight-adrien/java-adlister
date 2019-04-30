
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>

    <style>

        #creatCon {
            margin-top: 14rem;
        }

        #creatCon textarea {
            resize: none;;
        }

    </style>

</head>
<body>

<%

    String title = request.getParameter("title");
    String description = request.getParameter("description");
    String createAdFailure = request.getParameter("createAdFailure");


%>

    <div class="container">
        <h1>Create a new Ad</h1>
        <form action="/ads/create" method="post">
            <h2 style="color: red;"><C:out value="${createAdFailure}"></C:out></h2>
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text">

            </div>
        </div>
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <form action="/ads/create" method="post">
                    <div class="form-group">
                        <label for="title">Title</label>
                        <input id="title" name="title" class="form-control" type="text">
                    </div>
                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea id="description" name="description" class="form-control" type="text"></textarea>
                    </div>
                    <input type="submit" class="btn btn-block btn-primary">
                </form>
            </div>
        </div>
    </div>
</body>
</html>
