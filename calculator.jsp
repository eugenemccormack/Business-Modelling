<html>
<head>
<title>Calculator</title>
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
  <li><a href="/Assignment2/login.jsp">Login</a></li>
  <li><a class="active" href="#home">Calculator</a></li>
  <li><a href="/Assignment2/calculatorResult.jsp">Calculator Result</a></li>
  <li><a href="/Assignment2/loanApplication.jsp">Loan Application</a></li>
  </ul>


<% 
	String username =(String)session.getAttribute("sessname");
	

%>

<%
	response.setHeader("Cache-Control", "no-store, must-revalidate");
	
	if(session.getAttribute("sessname")==null)
	{
		response.sendRedirect("login.jsp");
	}
%>
    <h1><p class="sansserif"><%out.print("Welcome " +username + " to the Interest Calculator"); %></p></h1>
    </br></br>
    
    <form method="get" action="calculatorResult.jsp">
    <b><p class="sansserif"> Base   Amount  </br>    <input type="number" name="price" placeholder="            Base Amount" style="border-color:#00264d" required>
    </br></br>
						  Annual Interest Rate </br>  <input type="number" step="0.1" min="0" name="rate" placeholder="            Percentage %" style="border-color:#00264d" required>
    </br></br>
					      Calculation   Period </br>  <input type="number" name="time" placeholder="       Calculation Period" style="border-color:#00264d" required>
    </br></br>
   
    Compound Interval </br> <select name="compound" style="border-color:#00264d" required>
    <option value="Daily">Daily</option>
    <option value="Monthly" selected>Monthly</option>
    <option value="Yearly">Yearly</option>  
    </select></p></b>
    </br></br>   

    <input type="submit" class="button button4" value="Calculate">     
    </form> 
	
	<form method="get" action = "logOut.jsp">
	<input type = "submit" class="button button4" value=" Logout ">	
	</form> 
 
    </div>

</body>
</html>