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
<h2>College Details Report</h2>
<hr>


 

<div class="row">
<soham:forEach items="${stf}" var="rec">
<div class="col-sm-3">
<table class="table table-bordered">
<tr><th>Title</th>
<td>${rec.title}</td>
</tr><tr><th>Details</th>
<td>${rec.details}</td>
</tr><tr><tr><th>Date</th>
<td>${rec.dt}</td></tr><tr><th></th>
<td><a class="btn btn-primary" href="CollegeDetails/${rec.path}" target="_blank">View Document</a></td> 
</tr>
</table></div>
</soham:forEach>
</div></div>
 </div>
</body>
</html>