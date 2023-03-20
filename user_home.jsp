<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DashBoard</title>
</head>
    <style>
        a
        {
            color: white;
            text-decoration: none;
        }
    </style>
<body>
<%@ include file="footer.jsp" %>  

<table border="0" bgcolor="GRAY"width="100%" height="8%">
        <tr>
            <th><font color="white" size="4">GECA Food Waste Management</font></th>
        </tr>
    </table>
    <h1 align="center">Welcome Admin</h1><br>
<br>

<br>
<ul>
    <table align="left" border="0" width="15%" bgcolor="purple" height="8%">
      <tr>
      <th><li><font color="white" size="4"><a href="form.jsp">Donor Registration</a></font></li></th>
</tr>
    </table>
    <table align="right" border="0" width="15%" bgcolor="purple" height="8%">
      <tr>
      <th><li><font color="white" size="4"><a href="Display.jsp">Donor List</a></font></li></th>
</tr>
<table align="center" border="0" width="15%" bgcolor="purple" height="8%">
      <tr>
      <th><li><font color="white" size="4"><a href="user.jsp">User Registration</a></font></li></th>
</tr>
</body>
</html>