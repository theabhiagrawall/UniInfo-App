<%@page import="models.ViewColg"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
<body><jsp:include page="DefaultTop1.jsp"></jsp:include>
 <div class="container"><div class="row"><div class="col-sm-12">
<h2>Recommended Colleges</h2>
<hr>
<div class="row">


<div class="col-sm-3">
<%List<ViewColg> lst=(List<ViewColg>)request.getAttribute("std");
if(lst.size()==0){
%>
<h3>No Suitable College Found!!</h3>
<%} %>
<soham:forEach items="${std}" var="rec">
<table class="table table-bordered">
<tr>
  
<th>College Name</th><td>${rec.colgName}</td>
</tr><tr><th>Mobile Number</th><td>${rec.mobileno}</td>
</tr><tr><th>Email ID</th><td>${rec.emailid}</td>
</tr><tr><th></th><td><a href="viewColgDetails1?userid=${rec.userid}">View Details</a></td></tr>

</table>
</soham:forEach>

 </div></div>
</body>
</html>