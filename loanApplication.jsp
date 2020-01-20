<html>
<head>
<title>Loan Application</title>
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

p.ex1 {
  
  text-align: center;
  padding-right: 20px;
  border: 2px solid #00264d;
  border-radius: 6px;
  font-size: 20px;
  background-color: #b3d9ff;
  color: #00264d;
  margin: 1px 1px;
 
}

input[type=text] {
  width: 20%;  
  text-align: center;  
  margin: 4px 4px;
  box-sizing: border-box;
  
}

input[type=date] {
  width: 20%;
  height: 3.4%;
  text-align: center;  
  margin: 4px 4px;
  box-sizing: border-box;
}

input[type=number] {
  width: 20%;
  text-align: center;  
  margin: 4px 4px;
  box-sizing: border-box;
}

select {
  width: 10%;
 text-align: center;
  border: 2px solid #00264d;
  background-color: white;
  margin: 4px 4px;
}

input[type=checkbox] {
  width: 4%;
  text-align: center;  
  margin: 4px 4px;
  box-sizing: border-box;
  background-color: white;
  border: 2px solid #00264d;
 
}

label {
    
    font-family: Arial, Helvetica, sans-serif;
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
  <li><a href="/Assignment2/calculator.jsp">Calculator</a></li>
  <li><a href="/Assignment2/calculatorResult.jsp">Calculator Result</a></li>
  <li><a class="active" href="#home">Loan Application</a></li>
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
    </br> 
    <h1><p class="sansserif"><%out.print("Welcome " +username + " to the Loan Application"); %></p></h1>
       
    <form method="get" action="applicationReply.jsp"> 
	
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<font face="Arial"><p class="ex1" ><b>Section 1 : Personal Details</b></p></font>
	</br>
	  <b><p class="sansserif">
	Title <select name="compound" style="border-color:#00264d" required>
    <option value="Daily" selected>Mr</option>
    <option value="Monthly">Mrs</option>
    <option value="Yearly">Miss</option>  </select>

	&nbsp;&nbsp;&nbsp;&nbsp;
	Name  &nbsp;&nbsp;
	<input type="text" name="firstName" placeholder="First Name" style="border-color:#00264d" required>
	
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="text" name="lastName" placeholder="Last Name" style="border-color:#00264d" required>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</br></br>
	
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	 
	Address    &nbsp;&nbsp;  
	<input type="text" name="address1" placeholder="Address Line 1" style="border-color:#00264d" required>
							
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
	<input type="text" name="address2" placeholder="Address Line 2" style="border-color:#00264d" required></br></br>
						
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
	<input type="text" name="county" placeholder="County" style="border-color:#00264d" required>
							
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
	<input type="text" name="eircode" placeholder="Eircode" style="border-color:#00264d" required></br></br>
	
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	 
	Contact     &nbsp;&nbsp;  
	<input type="number" name="phoneNumber" placeholder="Phone Number" style="border-color:#00264d" required>
							
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
	<input type="text" name="email" placeholder="Email" style="border-color:#00264d" required></br></br>
	
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		 
	Date of Birth     &nbsp;&nbsp;  
	<input type="date" name="bday" style="border-color:#00264d" required>
							
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
	<input type="number" name="age" maxlength="3" size="3"  placeholder="Age" style="border-color:#00264d" required></br></br>
	
	<font face="Arial"><p class="ex1" ><b> Section 2 : Employment Details</b></p></font>
	</br></br>
	<div class="container">
	 <label class="checkbox-inline" >
      <input type="checkbox" value="" style="border-color:#00264d">Employed
    </label>
    <label class="checkbox-inline">
      <input type="checkbox" value="">Unemployed
    </label>
    <label class="checkbox-inline">
      <input type="checkbox" value="">Self-Employed
    </label>
	</div>
	
	<b><p class="sansserif">
 
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	 
	Company     &nbsp;&nbsp;  
	<input type="text" name="cName" placeholder="Company Name" style="border-color:#00264d" required>
							
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
	<input type="text" name="cAddress" placeholder="Company Address" style="border-color:#00264d" required></br></br>
	
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;				
	Occupation &nbsp;&nbsp;
	<select name="compound" style="border-color:#00264d" required>
    <option value="Administrative">Administrative</option>
    <option value="Banking">Banking</option>
    <option value="Consulting">Consulting</option>
	<option value="Corporate">Corporate</option> 
	<option value="Education">Education</option> 
	<option value="Hr">Human Resources</option> 
	<option value="Insurance">Insurance</option> 
	<option value="iBanking">International Banking</option> 
	<option value="Legal">Legal</option> 
	<option value="PublicS">Public Sector</option>
	<option value="Purchasing">Purchasing</option> 
	<option value="Sales">Sales</option> 	
	<option value="Student"selected>Student</option> 	
    </select>
	
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;			 
	Other     &nbsp;&nbsp;  
	<input type="text" name="other" placeholder="Occupation" style="border-color:#00264d" required>
	</br></br>
	
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
	Service Length &nbsp;&nbsp;
	<select name="compound" style="border-color:#00264d" required>
    <option value="1year"selected>1 year</option>
    <option value="2years">2 years</option>
    <option value="3years">3 years</option>
	<option value="4years">4 years</option> 
	<option value="5years">5 years</option> 
	<option value="6years">6 years</option> 
	<option value="7years">7 years</option> 
	<option value="8years">8 years</option> 
	<option value="9years">9 years</option> 
	<option value="10years">10+ years</option> 	
    </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	
	&nbsp;&nbsp;&nbsp;		 
	Salary     &nbsp;&nbsp;  
	<input type="number" name="cName" placeholder="$ Salary" style="border-color:#00264d" required>
	</br></br>	
		
	
	
	<font face="Arial"><p class="ex1" ><b> Section 3 : Loan Details</b></p></font>
	</br>
	
	<b><p class="sansserif">
	
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
	Do you have any other loans &nbsp;&nbsp;
	<select name="compound" style="border-color:#00264d" required>
    <option value="no"selected>No</option>
    <option value="yes">Yes</option>    	
    </select>&nbsp;
	
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		 
	If Yes    &nbsp;&nbsp;  
	<input type="text" name="cName" placeholder="Loan Issuer" style="border-color:#00264d" required>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</br></br>	
	
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	 
	Loan Amount     &nbsp;&nbsp;  
	<input type="number" name="lAmount" placeholder="$ Amount" style="border-color:#00264d" required>
	
	
	Loan Length &nbsp;&nbsp;
	<select name="compound" style="border-color:#00264d" required>
    <option value="l1"selected>1 year</option>
    <option value="l2">2 years</option>
    <option value="l3">3 years</option>
	<option value="l4">4 years</option> 
	<option value="l5">5 years</option> 
	<option value="l6">6 years</option> 
	<option value="l7">7 years</option> 
	<option value="l8">8 years</option> 
	<option value="l9">9 years</option> 
	<option value="l10">10+ years</option> 	
    </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</br></br>
	
  </p>
    <input type="submit" class="button button4" value="Submit">     
    </form> 
	
	<form method="get" action = "logOut.jsp">
	<input type = "submit" class="button button4" value=" Logout ">	
	</form> 
 
    </div>

</body>
</html>