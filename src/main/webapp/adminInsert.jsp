<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin insert</title>
<link rel = "stylesheet" href="userInsert.css">
</head>
<body>

<body style="background-color: black; background-size: cover; background-repeat: no-repeat; background-position: center;">

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


<div class= "title">
	<p>Dream Eventz</p>
</div>

<div class="container">
<form action = "admininsert" method = "post">
		
			<h1>Sign up</h1><br>
			<div class = "userDetails">
				<input type = "text" name = "name" placeholder = "Name" required>
				<br><br>
			
				<input type = "email" name = "email" id = "myEmail" placeholder = "Email" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+.[a-z]{2,3}$">			
				<br><br>

				<input type = "tel" name = "phone" placeholder = "Phone Number" required pattern = "[0-9]{10}" maxlength="10">
				<br><br>

				<input type = "text" name = "userName" placeholder = "Username" required>
				<br><br>

				<input type = "password" name = "password" placeholder = "Password" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
				<br>
			</div>
			<div class = "button">
				<input type = "submit" name = "Sign up" value = "Sign up">
			</div>
		
</form>
</div>


<div class= "para">
	<p>Welcome to the online event planning system! How can I assist you today? , <p/>
	<p>opens doors for creative people,<p/>
	<p>encourages viewers to push themselves,<p/> 
	<p>and has the capacity to inform and educate.<p/> 
	<p>While reality programs may have their detractors,<p/>
	<p>they continue to attract audiences and</p> 
	<p>influence popular culture.<p/>
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