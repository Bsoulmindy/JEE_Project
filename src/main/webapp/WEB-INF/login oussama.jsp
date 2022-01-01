<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Login</h1>
        <c:forEach items="${errors}" var="error">
            <h2><c:out value="${error.defaultMessage}" /></h2>
        </c:forEach>
        <form action="/login" method="post" >
            <label>Username:</label>
            <input type="text" name="username"><br><br>
            <label>Password:</label>
            <input type="password" name="password"><br><br>
            <input type="submit" value="Register">
        </form>
    </body>
</html>