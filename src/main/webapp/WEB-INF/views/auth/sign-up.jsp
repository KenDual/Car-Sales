<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Sign up</title>
        <link rel="stylesheet" href="<c:url value='/assets/css/styles.css'/>">
    </head>
    <body class="container">

        <h2>Create account</h2>

    <c:if test="${not empty error}">
        <div class="alert alert-danger">${error}</div>
    </c:if>

    <form action="<c:url value='/auth/sign-up'/>" method="post">
        <label>E-mail</label><br>
        <input type="email" name="email" required><br><br>

        <label>Password</label><br>
        <input type="password" name="password" required><br><br>

        <label>Confirm password</label><br>
        <input type="password" name="confirm" required><br><br>

        <input type="hidden" name="role" value="CUSTOMER">

        <button type="submit">Sign up</button>
    </form>

    <p>Already have an account?
        <a href="<c:url value='/auth/login'/>">Login</a>
    </p>

</body>
</html>
