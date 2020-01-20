<html>
<head>
<meta http-equiv="Refresh" content="10; url=http://localhost:8080/Assignment2/login.jsp?">

<title>Logout User</title>

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
	<%
	session.removeAttribute("username");
	session.invalidate();
	
%>
	<br>
	<h3><p class="sansserif">  User is Sucessfully Logged Out</p></h3>
	</br>
  
	
	<form method="get" action = "login.jsp">
	

	<input type = "submit" class="button button4" value=" Login Page ">

	
	</form> 
 
	</div>

</body>
</html>