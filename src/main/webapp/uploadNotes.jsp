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

 <div class="col-sm-12 form_div">
 
    
<form name="frm" method="post" action="uploadNotes" enctype="multipart/form-data"><table>
	<tr><td>Title</td>
	<td><input type="text" name="title" class="form-control" required>
	<input type="hidden" name="userid" value="<%=session.getAttribute("userid").toString().trim() %>"/>
	<input type="hidden" name="usernm" value="<%=session.getAttribute("usernm").toString().trim() %>"/>
	<input type="hidden" name="branch" value="<%=session.getAttribute("branch").toString().trim() %>"/>
	</td>
	</tr>
	<tr><td>Details</td>
	<td><textarea name="details" class="form-control" required></textarea></td>
	</tr>
	<tr><td>Subject</td>
	<td><input type="text" name="subject" class="form-control" required></td>
	</tr>
	  <tr><td>Topic</td>
	<td><input type="text" name="topic" class="form-control" required></td>
	</tr>
	<tr>
	<td>Semester</td>
	<td>
	 <select name="sem" required class="form-control">
	 <option value=""><--Select--></option>
	 <option value="1">1</option>
	 <option value="2">2</option>
	 <option value="3">3</option>
	 <option value="4">4</option>
	 <option value="5">5</option>
	 <option value="6">6</option>
	 <option value="7">7</option>
	 <option value="8">8</option>
	 </select>
	</td>
	</tr>
      
      <tr><td>Price</td>
	<td><input type="number" name="price" class="form-control" required></td>
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