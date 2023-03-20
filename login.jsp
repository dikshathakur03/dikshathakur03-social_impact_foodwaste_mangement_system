<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Register.css">
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="login_style.css">
 <style>
        a
        {
            color: white;
            text-decoration: none;
        }
        </style>
</head>

<body>
<%@ include file="footer.jsp" %>  

<%@ include file="header.jsp" %>  


<div class="center">

<h1>Login</h1>
<form action="login_submit.jsp" method="POST" autocomplete="off">
<div class="form">
    <input type="text" name="username" class="textfield" placeholder="username@gmail.com">
    <input type="password" name="password" class="textfield" placeholder="password">
        <input type="submit" name="login" value="Login" class="btn">
</div>
</form>
</div>

</body>
</html>