<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Register</title>
    </head>
    <body>
        <h1>Register</h1>
        <c:forEach items="${errors}" var="error">
            <h2><c:out value="${error.defaultMessage}" /></h2>
        </c:forEach>
        <form action="/register" method="post" >
            
            <label>Username:</label>
            <input type="text" name="username"><br><br>
            <label>Password:</label>
            <input type="password" name="password"><br><br>
            <label>Email:</label>
            <input type="email" name="email"><br><br>
            <hr>
            <label>Adresse:</label>
            <input type="text" name="adresse"><br><br>
            <label>Nom complet:</label>
            <input type="text" name="nomComplet"><br><br>
            <label>Pays:</label>
            <input type="text" name="pays"><br><br>
            <label>Province:</label>
            <input type="text" name="province"><br><br>
            <label>Tel:</label>
            <input type="text" name="tel"><br><br>
            <input type="submit" value="Register">
        </form>
    </body>
</html>