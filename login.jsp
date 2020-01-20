<html>
<head>
<title>Login</title>
  
 <style>

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


</style>
</head>

    </br></br>
    <div class="center">
    <body bgcolor="  #00264d">
	
		<!-- Navigation bar  -->
  <ul class="topnav" style='font-family:"Arial", Arial; font-size:100%'>
  <li><a href="/Assignment2/index.jsp">Home</a></li>
  <li><a class="active" href="#home">Login</a></li>
  <li><a href="/Assignment2/calculator.jsp">Calculator</a></li>
  <li><a href="/Assignment2/loanApplication.jsp">Loan Application</a></li>
  </ul>

    <h1><p class="sansserif">Login</p></h1>
    </br>
    <h3><p class="sansserif">Login with Username and Password below to access the Interest Calculator</p></h3>
    </br>
  

    <form method="get">
    <b><p class="sansserif"> Username &nbsp;&nbsp;&nbsp; <input type="text" name="username" placeholder="             Username" style="border-color:#00264d" required>
    </br></br>
							Password &nbsp;&nbsp;&nbsp; <input type="password" name="password" placeholder="              Password" style="border-color:#00264d" required></p></b>
    </br></br></br></br>
    
    <input type="submit" class="button button4" value="  Login  ">
    </form>
 
  
  
    <form method="get" action="index.jsp">
    <input type = "submit" class="button button4" value="Register">     
    </form>  
    </br>
  
    </div>
  
<%
    String username = request.getParameter("username");
	String password = request.getParameter("password");
	session.setAttribute("sessname", username);
	boolean changePage = false;
    
	   if (username != null) {
%>
<%@ page import = "java.sql.*" %>
<%
      Connection conn = DriverManager.getConnection(
         "jdbc:mysql://localhost:3306/register?serverTimezone=UTC","root", "root");
     
      
	    String sql = "SELECT * FROM users";
		PreparedStatement stmt = conn.prepareStatement(sql); 
 
		
		
      
      // for debugging
     
      ResultSet rset = stmt.executeQuery();
%>
   
<%
      while (rset.next()) {

		if (username.equals(rset.getString(1)) && password.equals(rset.getString(2))){
%>
          
<%			
			changePage = true;
		}
		
			}
		if(changePage){
			response.sendRedirect("calculator.jsp");
		}
		
		else{
			response.sendRedirect("loginIncorrect.jsp");
		}	
  %>
     
  <%
      rset.close();
      stmt.close();
      conn.close();
    }
  %>    
  
</body>
</html>