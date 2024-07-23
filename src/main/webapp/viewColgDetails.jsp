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
	
session.setMaxInactiveInterval(10*60);
LoginTracker login=new LoginTracker();
%>
<h2>College Details Report</h2>
<hr>

<table class="table table-bordered">
<tr style="background-color:seashell">
<th>Title</th>
<th>Details</th>
<th>Date</th>
<th> </th>  
</tr>


<soham:forEach items="${stf}" var="rec">

<tr>
<td>${rec.title}</td>
<td>${rec.details}</td>
<td>${rec.dt}</td>
<td><a class="btn btn-primary" href="CollegeDetails/${rec.path}" target="_blank">View Document</a></td> 
</tr>

</soham:forEach>
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