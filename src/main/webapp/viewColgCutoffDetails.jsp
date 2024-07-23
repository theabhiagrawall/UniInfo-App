<%@page import="java.util.Vector"%>
<%@page import="models.JavaFuns"%>
<%@page import="models.LoginTracker"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="soham"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css">
 <link rel="stylesheet" href="css/cust.css">

<title>AI Forum</title>
</head>
<body><jsp:include page="Top.jsp"></jsp:include>
<%

String userid=String.valueOf(session.getAttribute("userid"));
String usertype=String.valueOf(session.getAttribute("usertype"));
if(!userid.equalsIgnoreCase("null")){	
JavaFuns jf=new JavaFuns();
Vector v=jf.getValue("select * from college_admission_cutoff where collegeid='"+userid.trim()+"' ", 9);

session.setMaxInactiveInterval(10*60);
LoginTracker login=new LoginTracker();
%>
<h2>College Cutoff Details </h2>
<hr>

<table class="table table-bordered">
<tr style="background-color:seashell">
<th>HSC</th>
<th>PCM</th>
<th>CET</th>
<th>CET Percentile</th>
<th>Academic Year </th>
<th>Branch</th>
<th>Merit Rank</th>  
</tr>


<%for(int i=0;i<v.size();i=i+9){ %>

<tr>
<td><%=v.elementAt(i+2) %></td>
<td><%=v.elementAt(i+3) %></td>
<td><%=v.elementAt(i+4) %></td>
  <td><%=v.elementAt(i+5) %></td>
  <td><%=v.elementAt(i+6) %></td>
  <td><%=v.elementAt(i+7) %></td>
  <td><%=v.elementAt(i+8) %></td>
</tr>
<%} %> 
</table>

<%
if(usertype.equals("admin")){
%> 
<%
}
else{	%>
	 
<%
	}
	
}
else{
	%>
	<h2>Invalid Session...Login again</h2>
	<br>
	<a href="index.jsp">Login</a>
	
	<%
}

%>
</body>
</html>