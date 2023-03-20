<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Donor registration</title>
<link href="Style.css" rel="stylesheet" type="text/css">
</head>
<body>

<%@ page import="java.sql.*" %>
<%
String Name = request.getParameter("fname");
String LName = request.getParameter("lname");
String Age = request.getParameter("age");
String Email = request.getParameter("email");
String City = request.getParameter("city");
String Resturant = request.getParameter("resturant");
String Number = request.getParameter("mobilenumber");
String Address = request.getParameter("address");



ResultSet rs = null;
Connection con = null;
PreparedStatement ps = null;

String query = "insert into registration values(?,?,?,?,?,?,?,?)";

try{
	
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fwms","root","123456");
	ps=con.prepareStatement(query);
	ps.setString(1,Name);
	ps.setString(2,LName);
	ps.setString(3,Age);
	ps.setString(4,Email);
	ps.setString(5,City);
	ps.setString(6,Resturant);
	ps.setString(7,Number);
	ps.setString(8,Address);

	
	int i = ps.executeUpdate();
	if(i>0){
		out.print("<h1>Data Successfully Updated</h1>");
		out.print("We Will Collect food From you within 1 hour <br><br><br>");
		out.print("<a href=user_home.jsp>Click here</a>");
	
	}
	else{
		out.print("<h1>Error Message</h1>");
	}
	
}
catch(Exception e){
	out.print(e);
}
%>
</body>
</html>