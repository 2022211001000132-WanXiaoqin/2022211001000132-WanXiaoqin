<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>User Registration</title>
    <script>
        function validateForm() {
            var username = document.forms["registerForm"]["username"].value;
            var password = document.forms["registerForm"]["password"].value;
            var email = document.forms["registerForm"]["email"].value;
            var birthdate = document.forms["registerForm"]["birthdate"].value;

            if (username == "") {
                alert("Username is required");
                return false;
            }

            if (password == "" || password.length < 8) {
                alert("Password is required and must be at least 8 characters long");
                return false;
            }

            var emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
            if (!email.match(emailPattern)) {
                alert("Invalid email address");
                return false;
            }

            var datePattern = /^\d{4}-\d{2}-\d{2}$/;
            if (!birthdate.match(datePattern)) {
                alert("Birthdate must be in yyyy-dd-mm format");
                return false;
            }

            return true;
        }
    </script>
</head>
<body>
<h2>User Registration Form</h2>
<form name="registerForm" action="registrationServlet" method="post" onsubmit="return validateForm()">
    Username: <input type="text" name="username"><br>
    Password: <input type="password" name="password"><br>
    Email: <input type="text" name="email"><br>
    Birthdate: <input type="text" name="birthdate" placeholder="yyyy-dd-mm"><br>

    <input type="radio" name="gender" value="male"> Male
    <input type="radio" name="gender" value="female"> Female<br>

    <input type="submit" value="Register">
</form>
</body>
</html>