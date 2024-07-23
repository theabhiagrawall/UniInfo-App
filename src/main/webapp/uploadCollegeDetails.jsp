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
<body><jsp:include page="Top.jsp"></jsp:include>
<%

String userid=String.valueOf(session.getAttribute("userid"));
String usertype=String.valueOf(session.getAttribute("usertype"));
if(!userid.equalsIgnoreCase("null")){	
	
session.setMaxInactiveInterval(10*60);
LoginTracker login=new LoginTracker();
%>
<h2>College Details</h2>
<hr>
<div class="row">

 <div class="col-sm-12">
 
    
<form name="frm" method="post" action="uploadColgDetails11" enctype="multipart/form-data"><table>
	<tr><td>Title</td>
	<td><input type="text" name="title" class="form-control" required>
	<input type="hidden" name="userid" value="<%=session.getAttribute("userid").toString().trim() %>"/>
	<input type="hidden" name="usernm" value="<%=session.getAttribute("usernm").toString().trim() %>"/>
	 
	</td>
	</tr>
	<tr><td>Details</td>
	<td><textarea name="details" class="form-control" required></textarea></td>
	</tr>
	  
       <tr><td>Document</td>
       <td>
       <input type="file" name="file" class="form-control"/>
       </td>
	<tr>
	<td><input type="submit" value="Submit" class="btn btn-primary" ></td>
	</tr>
	</table>
</form>
 </div>
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