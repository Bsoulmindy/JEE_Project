<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Forgot Password</title>
    </head>
    <body>
        <h1>Forgot Password</h1>
        <c:forEach items="${errors}" var="error">
            <h2><c:out value="${error.defaultMessage}" /></h2>
        </c:forEach>
        <c:if test="${not empty account}">
            <h2>${account}</h2>
        </c:if>
        <form action="/forgot_password" method="post" >
            <label>Email:</label>
            <input type="email" name="email"><br><br>
            <input type="submit" value="envoyer">
        </form>
    </body>
</html>