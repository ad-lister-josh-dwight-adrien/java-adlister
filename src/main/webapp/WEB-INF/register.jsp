<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>

    <style>

        #registerCon {
            margin-top: 13rem;
        }

    </style>

</head>
<body>

    <!-- navbar -->
    <jsp:include page="partials/navbar.jsp" />

    <!-- container -->
    <div id="registerCon" class="container">
        <div class="row">
            <div class="mx-auto">
                <h1>Please fill in your information.</h1>
                <hr>
            </div>
        </div>
        <form action="/register" method="post">
            <div class="row">
                <div class="col-md-3 offset-md-3">
                    <div class="form-group">
                        <label for="username">Username</label>
                        <input id="username" name="username" class="form-control" type="text">
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input id="email" name="email" class="form-control" type="email">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input id="password" name="password" class="form-control" type="password">
                    </div>
                    <div class="form-group">
                        <label for="confirm_password">Confirm Password</label>
                        <input id="confirm_password" name="confirm_password" class="form-control" type="password">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 offset-md-5">
                    <input type="submit" style="width: 30%" class="btn btn-primary btn-block">
                </div>
            </div>
        </form>
    </div>
</body>
</html>
