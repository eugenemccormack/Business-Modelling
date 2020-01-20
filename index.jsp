<html>
<head>

<title>Register</title>
<style>

ul.topnav li {float: left;}

ul.topnav li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  
}

ul.topnav li a:hover:not(.active) {background-color: white; color: #00264d;}

ul.topnav li a.active {
background-color: #ff9999;
color: #00264d;


}

ul.topnav li.right {float: right;}

ul.topnav {
  list-style-type: none;
  margin: 0;
  padding-right: 20px;
  overflow: hidden;
  background-color: #00264d;
  border-radius: 12px;
   border: 2px solid white;
  
}

.center {
	text-align: center;
  margin: auto;
  width: 60%;
  border: 2px solid white;
  border-radius: 20px;
  padding: 10px;
  color: black;
 background-color: #b3d9ff;  
}

.button {
  background-color: #00264d;
  border: 2px solid white;
  color: white;
  padding: 12px 38px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 14px;
  margin: 2px 2px;
  cursor: pointer;
}

.button4 {border-radius: 12px;}

p.sansserif {
  font-family: Arial, Helvetica, sans-serif;
}

form { display: inline; }

</style>
</head>


 
  

    </br></br>
    <div class="center">
    <body bgcolor="  #00264d">
	
	<!-- Navigation bar  -->
<ul class="topnav" style='font-family:"Arial", Arial; font-size:100%'>

  <li><a class="active" href="#home">Home</a></li>
  <li><a href="/Assignment2/login.jsp">Login</a></li>
  <li><a href="/Assignment2/calculator.jsp">Calculator</a></li>
  <li><a href="/Assignment2/loanApplication.jsp">Loan Application</a></li>
  </ul>

  </br>

    <h1><p class="sansserif">Register</p></h1>
    
    <h3><p class="sansserif">Register by entering a username and password below</p></h3>
    </br>
  
    <form method="get">
    <b><p class="sansserif"> Enter Username &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="username" placeholder="              Username" style="border-color:#00264d" required>
    </br></br>
						  Enter Password &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="password" name="password" placeholder="               Password" style="border-color:#00264d" required>
    </br></br>
					      Confirm Password &nbsp;&nbsp; <input type="password" name="password2" placeholder="       Confirm Password" style="border-color:#00264d" required></p></b>
    </br></br>
   
    <input type="submit" class="button button4" value="Submit">     
    </form>
  
    <form method="get" action="login.jsp">
    <input type = "submit" class="button button4" value=" Login ">     
    </form>
 
    </div>
  
     
	 
 
<%@ page import = "java.sql.*" %>
  
<!--add mysql connectorJ jar file to tomcat/lib folder -->

 	
 
<%
	String username = request.getParameter("username");
    String password = request.getParameter("password");
	String password2 = request.getParameter("password2");
	session.setAttribute("sessname", username);
	 
	if (username != null && password != null && password2 != null) {
%>
<%
	if (!password.equals(password2)) {
		response.sendRedirect("passwordIncorrect.jsp");
	}
	else{
%>
	
<%
   
        Connection conn = DriverManager.getConnection(
         "jdbc:mysql://localhost:3306/register?serverTimezone=UTC","root", "root");
		 
		 
		 PreparedStatement createbook = conn.prepareStatement(
				"INSERT into users "
				+ "(username, password)" +" VALUES (?, ?)");
			
				createbook.setString(1, username);
				createbook.setString(2, password);

				int rowsUpdated = createbook.executeUpdate();
				createbook.close();
				response.sendRedirect("UserCreated.jsp");
		
%>    

<%
  
		
      conn.close();
    }
	}
	
%>

</body>
</html>