<html>
<head>
<meta http-equiv="Refresh" content="120; url=http://localhost:8080/Assignment2/calculator.jsp">

<title>Login Incorrect Details</title>
<style>

.center {
	text-align: center;
  margin: auto;
  width: 40%;
  border: 2px solid white;
  border-radius: 15px;
  padding: 5px;
  color: #00264d;
  background-color: #b3d9ff;  
}

.button {
  background-color: #00264d;
  border: 2px solid white;
  color: white;
  padding: 12px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 12px;
  margin: 2px 2px;
  cursor: pointer;
}

.button4 {border-radius: 12px;}

p.sansserif {
  font-family: Arial, Helvetica, sans-serif;
}

</style>
</head>
	</br></br></br></br></br></br>
	<div class="center">
	<body bgcolor="#00264d">

<% 
	String username =(String)session.getAttribute("sessname");

%>
	<br>
	<h3><p class="sansserif">Your Loan Application has been Sucessfully Submitted</br></br>
					 We will Contact you in 5 Working Days</br></br>
					 Thank You</p></h3>
	</br>
  
	<form method="get" action="login.jsp">
	<input type="submit" class="button button4" value="Back">     
	</form> 
 
	</div>

</body>
</html>