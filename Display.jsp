<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration form</title>
<link href="Display.css" rel="stylesheet" type="text/css">
</head>
<body>
<%@ include file="footer.jsp" %>  

<h2 align="center"><mark> Donor List</mark></h2>
<center><table border ="1" cellspacing = "7" width=100%>
    <tr>
    <th width="10%">FIRST NAME</th>
    <th width="10%">LAST NAME</th>
    <th width="3%">AGE</th>
    <th width="13%">EMAIL</th>
    <th width="10%">CITY</th>
    <th width="3%">RESTURANT NAME</th>
    <th width="10%">MOBILE NUMBER</th>
    <th width="15%">ADDRESS</th>
    </tr>

<%@ page import="java.sql.*" %>
<%
ResultSet rs = null;
Connection con = null;
PreparedStatement ps = null;

String query = "select * from registration";

try{

	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fwms","root","123456");
	ps=con.prepareStatement(query);
	rs = ps.executeQuery();	
	while(rs.next())
	{
	%>
<tr>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
<td><%=rs.getString(6)%></td>
<td><%=rs.getString(7)%></td>
<td><%=rs.getString(8)%></td>
	</tr>
	<% 
	}

}
catch(Exception e){
	out.print(e);
}
%>
</table>
</body>
</html>