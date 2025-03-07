<%@ page contentType="text/html;charset=UTF-8" %>
<html>

<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
    <title>Login</title>

</head>
<body>

    <%@include file="/WEB-INF/partials/messages.jsp" %>

    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1>Please Log In</h1>
        <form action="${pageContext.request.contextPath}/login" method="POST">
            <input type="hidden" name="redirect" value="${param.redirect}">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text" value="peter">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password" value="password123">
            </div>



            <input type="submit" class="btn btn-primary btn-block" value="Log In">
        </form>
    </div>
</body>
</html>
