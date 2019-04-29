<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>

    <jsp:include page="/WEB-INF/css/loginCss.jsp" />
    <!-- navbar -->
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <%
        request.setAttribute("url", request.getParameter("url"));
        String username2 = request.getParameter("username2");
        String password2 = request.getParameter("password2");

        if(username2 == null){
            username2 = username2;
        }

        if(password2 == null){
            password2 = password2;
        }

    %>

    <!-- login form -->
    <div id="loginContainer" class="container">
        <div class="row">
            <div class="col-md-4 offset-sm-4 text-center">
                <C:out value="${username}"></C:out>
                <h1>Adlister!!!!!!</h1>
                <h1>Log In right now!!!!</h1>
                <form action="/login" method="POST">
                    <div class="form-group">
                        <label for="username">Username</label>
                        <input id="username" value="${username2}" name="username" class="form-control" type="text">
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input id="password" value="${password2}" name="password" class="form-control" type="password">
                    </div>
                    <input type="hidden" id="url" name="url" class="btn btn-primary btn-block" value=${url}"">
                    <input type="submit" class="btn btn-primary btn-block" value="Log In">
                </form>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>
