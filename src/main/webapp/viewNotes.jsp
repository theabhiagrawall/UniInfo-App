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

<title> </title>
</head>
<body><jsp:include page="Top1.jsp"></jsp:include>
<%

String userid=String.valueOf(session.getAttribute("userid"));
String usertype=String.valueOf(session.getAttribute("usertype"));
if(!userid.equalsIgnoreCase("null")){	
	
session.setMaxInactiveInterval(10*60);
LoginTracker login=new LoginTracker();
%>
<h2>Available Notes</h2>
<hr>
<div class="row">




<soham:forEach items="${stf}" var="rec">
<div class="col-sm-12">
<table class="table table-bordered table-striped">
<tr> <td colspan="2"><h6>${rec.title}</h6></td>
</tr><tr>
</tr><tr><th>UserId</th><td>${rec.userid}</td>
</tr><tr><th>UserName</th><td>${rec.usernm}</td>
</tr><tr><th>Mobile Number</th><td>${rec.mobileno}</td>
</tr><tr><th>Email ID</th><td>${rec.emailid}</td>
</tr><tr><th>Subject</th><td>${rec.subject}</td>
 
</tr><tr><th>Topic</th><td>${rec.topic}</td>
</tr><tr><th>Details</th><td>${rec.details}</td>
</tr><tr><th>Price</th> <td>${rec.price}</td> 

 </tr>
</table></div> 
</soham:forEach>
</div>

<% 
	
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