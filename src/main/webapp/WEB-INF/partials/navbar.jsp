<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-expand-sm navbar-default bg-default">
    <a style="padding-bottom: 0; padding-top: 1.7rem;" class="navbar-brand" href="/ads">adlister</a>
    <button style="background-color: black;" class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarColor01">
        <ul class="navbar-nav ml-auto">
            <c:if test="${sessionScope.user.username == null}">
                <li class="nav-item">
                    <a class="nav-link" href="/login">Login</a>
                </li>
            </c:if>
            <c:if test="${sessionScope.user.username == null}">
                <li class="nav-item">
                    <a class="nav-link" href="/register">Register</a>
                </li>
            </c:if>
            <c:if test="${sessionScope.user.username != null}">
                <li class="nav-item">
                    <a class="nav-link" href="/profile">profile</a>
                </li>
            </c:if>
            <c:if test="${sessionScope.user.username != null}">
                <li class="nav-item">
                    <a class="nav-link" href="/logout">Logout</a>
                </li>
            </c:if>
            <li class="nav-item">
                <a class="nav-link" href="/ads">ads</a>
            </li>
        </ul>
    </div>
</nav>

