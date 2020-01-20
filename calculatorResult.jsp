<html>
<head>
<title>Calculator Result Table</title>
<style>

.center {
  text-align: center;
  margin: auto;
  width: 60%;
   border: 2px solid white;
  border-radius: 20px;
  padding: 7px;
  color: black;  
  background-color: #b3d9ff;
}

.center2 {
  text-align: center;
  margin: auto;
  width: 100%;  
  color: white;
  font-size: 20px;
  background-color: #00264d;  
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

table {
  width:100%;
}

table, th, td {
  border: 2px solid #00264d;
  border-collapse: collapse;
}

th, td {
  padding: 10px;
  text-align: center;
}

table#t01 tr:nth-child(even) {
  background-color: #b3d9ff;
}

table#t01 tr:nth-child(odd) {
 background-color: #cceeff;
}

table#t01 th {
  background-color: #00264d;
  color: white;  
}

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

	<font face="Arial">
	
			<!-- Navigation bar  -->
  <ul class="topnav" style='font-family:"Arial", Arial; font-size:100%'>
  <li><a href="/Assignment2/index.jsp">Home</a></li>
  <li><a href="/Assignment2/login.jsp">Login</a></li>
  <li><a href="/Assignment2/calculator.jsp">Calculator</a></li>
  <li><a class="active" href="#home">Calcualtor Result</a></li>
  <li><a href="/Assignment2/loanApplication.jsp">Loan Application</a></li>
  </ul>
 
<%@ page import = "java.sql.*" %>
<%  
  
	String username =(String)session.getAttribute("sessname");
	String compound = request.getParameter("compound");
	
	response.setHeader("Cache-Control", "no-store, must-revalidate");
	
		if(session.getAttribute("sessname")==null)
	{
		response.sendRedirect("login.jsp");
	}

%>
  
<%	 try{	
		
		double p=Integer.parseInt(request.getParameter("price"));
		double r=Double.parseDouble(request.getParameter("rate"));
		double t=Integer.parseInt(request.getParameter("time"));
	   
	    int year = 0;
	  	double number = 0;		
	  
	if(compound.equals("Monthly")){
		number = 12;
	}
	else if(compound.equals("Yearly")){
		number = 1;
	}
	else if(compound.equals("Daily")){
		number = 365;
	}
	
	   double rate = r/100;
	   double time = t * number;
	   double sumA = (1+ rate/number);
	   double sumB = Math.pow(sumA,time);
	   double sumC = p * sumB;	   
	  
	   double length = 1;
%>

	</font>

	<table id="t01" style='font-family:"Arial", Arial; font-size:110%'>
          <tr>
            <th>Base Amount</th>
            <th>Interest Rate</th>
            <th>Calculation Period</th>
            <th>Compound Intervals</th>        
          </tr>
	
	
	<tr>
		<td>$ <%out.println(request.getParameter("price"));%></td>
		<td><%out.println(request.getParameter("rate"));%>%</td>
		<td><%out.println(request.getParameter("time"));%> Year(s)</td>
		<td><%out.println(request.getParameter("compound"));%></td>

	</tr>

	</br>
	
	</table>
	
	</br>
    <table id="t01" style='font-family:"Arial", Arial; font-size:100%'>
          <tr>
            <th>Year</th>           
            <th>Total Interest</th>
            <th>Balance</th>
        
          </tr>
<%	   
	   
	   for(int i = 0; i <t; i++){		   
		  
		   time = length * number;
		   sumA = (1+ rate/number);
		   sumB = Math.pow(sumA,time);
		   sumC = p * sumB;
		   
	       double sumD = Math.round(sumC * 100)/100.0;
		   double interest = sumC - p;
		   double interestRound = Math.round(interest * 100)/100.0;
		 
		   length++;
		   year++;			
%>	
	      <tr>
           <td><%= year %></td>         
			<td><%= "$ "+interestRound %></td>
			<td><%= "$ "+sumD %></td>            
          </tr> 
		 
<%	
		  
	}
	   
	}
	  catch(Exception ex){}
%>
	</table>
	</br>

	<form method="get" action="calculator.jsp">
	<input type = "submit" class="button button4" value=" Back to Calculator ">     
	</form> 
	
	<form method="get" action = "logOut.jsp">
	<input type = "submit" class="button button4" value=" Logout ">	
	</form> 
  
	</div>
  
</body>
</html>