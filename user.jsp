<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>user registration</title>
</head>
<link rel="stylesheet" types="text/css" href="style.css">
<body>
<%@ include file="footer.jsp" %>  

   <div class="container">
   <form action="donor.jsp" method="POST">
       <div class="title">
       user resigtration
</div>

<div class="form">
    <div class="input_field">
        <label>First Name</label>
        <input type="text" class="input" name="fname" required > 

    </div>
    <div class="input_field">
        <label>Last Name</label>
        <input type="text" class="input" name="lname" required> 

    </div>
    
    <div class="input_field">
        <label>Age</label>
        <input type="text" class="input" name="age" required> 

    </div>
    <div class="input_field">
        <label>Email</label>
        <input type="text" class="input" name="email"> 

    </div>
    <div class="input_field">
        <label>City</label>
        <input type="text" class="input" name="city" required> 

    </div>
    
    <div class="input_field">
        <label>Mobile number</label>
        <input type="text" class="input" name="mobilenumber" required> 

    </div> 
   
    <div class="input_field">
        <label>Enter Food</label>
        <input type="text" class="input" name="food" required> 
        </div>
    <div class="input_field">
        <label>Address</label>
        <textarea class="textarea" name="address" required></textarea>
    </div>
    <div class="input_field terms">
       <label class="check">
           <input type="checkbox" required>
           <span class="checkmark"></span>
       </label>
<p>Agree to terms and conditions</p>
    </div>
    <div class="input_field">
        <input type="submit" value="Register" class="btn" name="register">
    </div>
    
</div>
<form>
</div>
</body>
</html>