<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Account</title>
<link rel="stylesheet"  href="useraccount.css" >
</head>
<body> 
<body style="background-color: black; background-size: cover; background-repeat: no-repeat; background-position: center;">

//header

<div class="voice">
<a href="#">
  <input type="image" src="logo.jpg" name="voice" width="100" height="100" alt="voice"/>
 </a>
</div>
<div class="log">
<a href="user.html">
  <input type="image" src="Log2.png" name="log" width="60" height="60" alt="log"/>

 
</a>
</div>

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="home.html">Home</a>
  <a href="vote.html">Booking</a>
  <a href="result.html">Payment</a>
  <a href="about us.php">About us</a>
  <a href="contact us.php">Contact us</a>
  
</div>

<span style="font-size:50px;cursor:pointer" onclick="openNav()">&#9776; </span>



<div class="btn-group">

  <button onclick="window.location.href='vote.html'">Booking</button>
  <button onclick="window.location.href='result.html'">Payment</button>
  <button onclick="window.location.href='about us.php'">About Us</button>
  <button onclick="window.location.href='contactus.php'">Contact Us</button>
  <button onclick="window.location.href='log.html'">LOG OUT</button>
</div>

//end of the header


	//User account page, user details table
	<table border=1>
	<c:forEach var="u1" items="${userDetails}">
	
	<c:set var="id" value="${u1.id}"/>
	<c:set var="name" value="${u1.name}"/>
	<c:set var="email" value="${u1.email}"/>
	<c:set var="phone" value="${u1.phone}"/>
	<c:set var="username" value="${u1.userName}"/>
	<c:set var="password" value="${u1.password}"/>
	
	<tr>
	<td>User ID</td>
	<td>${u1.id}</td>
	</tr>
	
	<tr>
	<td>Name</td>
	<td>${u1.name}</td>
	</tr>
	
	<tr>
	<td>Email</td>
	<td>${u1.email}</td>
	</tr>
	
	<tr>
	<td>Phone Number</td>
	<td>${u1.phone}</td>
	</tr>
	
	<tr>
	<td>User Name</td>
	<td>${u1.userName}</td>
	</tr>
	
	<tr>
	<td>Password</td>
	<td>${u1.password}</td>
	</tr>
	
	</c:forEach>
	</table>
	
	<c:url value="updateUser.jsp" var="userUpdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>
	
	
	//update button
	<div class="button" style="display:flex; justify-content:center; align-items:center; height:100px">
	<a href="${userUpdate}">
	<input type= "button" name="update" value="UPDATE">
	</a> 
	</div>
	
	
	
	<c:url value="deleteUser.jsp" var="userDelete">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>
	
	
	//delete button
	<div class="button" style="display:flex; justify-content:center; align-items:center; height:0px">
	<a href="${userDelete}">
	<input type="button" name="delete" value="DELETE">
	</a>
	</div>
	
</body>

<footer>
        <div class="footer-content">
            <h3>DREAM EVENTZ</h3>
            <p>"Welcome to the online event planning system! How can I assist you today? Whether you're organizing 
				a corporate conference, a wedding, a birthday party, or any other event, I'm here to help you with 
				the planning process. Just let me know what you need assistance with, and I'll provide guidance and 
				information to make your event a success."</p>
            <ul class="socials">
                <li><a href=><img src="images/face.png" height="30"><i class="fa fa-facebook"></i></a></li>
                <li><a href=><img src="images/twi.png" height="30"><i class="fa fa-twitter"></i></a></li>
                <li><a href=><img src="images/google.png" height="50"><i class="fa fa-google"></i></a></li>
                <li><a href=><img src="images/you.png" height="30"><i class="fa fa-youtube"></i></a></li>
                <li><a href=><img src="images/inster.png" height="30"><i class="fa fa-instergram"></i></a></li>
            </ul>
        </div>
        <div class="footer-bottom">
            <p>copyright &copy; <a href="#">HS</a>  </p>
                    <div class="footer-menu">
                      <ul class="f-menu">
                        <li><a href="privacy policy.html">Privacy policy</a></li>
                        <li><a href="about us.php">About</a></li>
                        <li><a href="contactus.php">Contact</a></li>
                        <li><a href="tc.html">Terms & Conditions</a></li>
                      </ul>
               </div>
        </div>

   </footer>

</html>