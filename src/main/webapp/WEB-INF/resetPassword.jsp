<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Reset Password</title>
    </head>
    <body>
        <h1>Reset Password</h1>
        <c:forEach items="${errors}" var="error">
            <h2><c:out value="${error.defaultMessage}" /></h2>
        </c:forEach>
        <form action="/reset_password" method="post" >
            <input type="hidden" name="token" value="${token}" />
            <label>New password:</label>
            <input type="password" name="password"><br><br>
            <input type="submit" value="Changer">
        </form>
    </body>
</html>