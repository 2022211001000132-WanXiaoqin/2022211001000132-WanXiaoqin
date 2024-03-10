<%--
  Created by IntelliJ IDEA.
  User: 由由
  Date: 2024/3/10
  Time: 12:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Rejistration</title>
</head>
<body>
<h2>New User Rejistration!</h2>
<form action="register" method="post">
    <label for="username">Username:</label>
    <input type="text" id="username" name="username" placeholder="username" required><br><br>

    <label for="password">Password:</label>
    <input type="password" id="password" name="password" placeholder="password" required><br><br>

    <label for="birthdate">Birthdate:</label>
    <input type="text" id="birthdate" name="birthdate" placeholder="yyyy-dd-mm" required><br><br>

    <label for="Email">Email:</label>
    <input type="email" id="email" name="email" placeholder="email" required><br><br>

    <label for="gender">Gender:</label>
    <input type="radio" id="gender" name="gender" value="male">Boy
    <input type="radio" id="gender" name="gender" value="female">Girl<br><br>

    <input type="submit" value="Send data to server"/>
</form>
</body>
</html>