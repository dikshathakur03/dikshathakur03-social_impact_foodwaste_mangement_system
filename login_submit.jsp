<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration form</title>
<link href="Style.css" rel="stylesheet" type="text/css">
</head>
<body>

<%@ page import="java.sql.*" %>
<%
String Name = request.getParameter("username");
String pwd = request.getParameter("password");

ResultSet rs = null;
Connection con = null;
PreparedStatement ps = null;

String query = "select Email from form where Email=? and Password=?";

try{
	response.setContentType("text/html");
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fwms","root","123456");
	ps=con.prepareStatement(query);
	ps.setString(1,Name);
	ps.setString(2,pwd);
	rs = ps.executeQuery();	
	if(rs.next())
	{
		RequestDispatcher rd = request.getRequestDispatcher("user_home.jsp");
		rd.forward(request, response);
	}
	else
	{
		out.println("<font color = red size = 18>Login failed!!<br>");
		out.println("<a href = login.jsp>TRY AGAIN");
	}
}
catch(Exception e){
	out.print(e);
}
%>
</body>
</html>