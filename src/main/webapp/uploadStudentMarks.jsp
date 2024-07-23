<%@page import="java.util.List"%>
<%@page import="beans.BranchList"%>
<%@page import="java.util.Date"%>
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
<body><jsp:include page="DefaultTop1.jsp"></jsp:include>
<%


session.setMaxInactiveInterval(10*60); 
%>
<div class="container">
<div class="row">

 <div class="col-sm-12 jumbotron"><h2>Student Marks</h2>
<hr>
 <%
 Date dt=new Date();
int yr=dt.getYear()+1900;
BranchList bl = new BranchList();
List<BranchList> lst = bl.getBranchList();
 %>
    
<form name="frm" method="post" action="RegCutoffS"  ><table>
	<tr><td>Name</td>
	<td><input type="text" name="usernm" class="form-control"     required>
	 
	</td>
	</tr>
	<tr><td>Academic Year</td>
	<td>From <input type="number" name="fromyr" class="form-control"  min="1900" max="<%=yr %>" step="1" value="<%=yr-2%>"  required>
	- To <input type="number" name="toyr" class="form-control"  min="1900" max="<%=yr %>" step="1" value="<%=yr-1%>"  required>
	
	</td>
	</tr>
	<tr>
       	<td>Branch</td>
       	<td><select name="branch" required class="form-control" onchange="makeGetRequestInd(this.value)">
       	<option value=""><---Select---></option> 
		
       	<%for(int i=0 ;i<lst.size();i++) {%>
       			<option value=<%=lst.get(i).getBranchname()%>><%=lst.get(i).getBranchname() %></option>
		<%} %>
       	</select></td>
       	
       </tr>
	<tr><td>HSC Percentage</td>
	<td><input type="number" min=0 max=100 name="hsc" class="form-control"/>
	  
	</td>
	</tr>
	 
        <tr><td>PCM Percentage</td>
	<td><input type="number" min=0 max=100 name="pcm" class="form-control"/>
	</td>
	</tr>
	<tr><td>CET Score</td>
	<td><input type="number" min=0 max=100 name="cet" class="form-control"/>
	</td>
	</tr>
	<tr><td>CET Percentile</td>
	<td><input type="number" min=0 max=100 name="cet_per" class="form-control"/>
	</td>
	</tr>
	<tr><td>Merit Rank</td>
	<td><input type="number" min=0 max=100 name="merit_rank" class="form-control"/>
	</td>
	</tr>
	<tr><td><input type="submit" value="Submit" class="btn btn-primary" ></td>
	</tr>
	</table>
</form>
 </div>
</div>

<% 
	
 
%>
</body>
</html>