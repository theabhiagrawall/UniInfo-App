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
<body><jsp:include page="Top.jsp"></jsp:include>
<%

String userid=String.valueOf(session.getAttribute("userid"));
String usertype=String.valueOf(session.getAttribute("usertype"));
if(!userid.equalsIgnoreCase("null")){	
	
session.setMaxInactiveInterval(10*60);
LoginTracker login=new LoginTracker();
%>
<h2>College Cutoff Details</h2>
<hr>
<div class="row">

 <div class="col-md-12">
 <%
 Date dt=new Date();
int yr=dt.getYear()+1900;
BranchList bl = new BranchList();
List<BranchList> lst = bl.getBranchList();
 %>
    
<form name="frm" method="post" action="RegCutoff"  ><table>
	<tr><td>Academic Year</td>
	<td><input type="number" class="form-control" name="fromyr" min="1900" max="<%=yr %>" step="1" value="<%=yr-2%>"  required>
	-<input type="number" class="form-control" name="toyr" min="1900" max="<%=yr %>" step="1" value="<%=yr-1%>"  required>
	
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
	<input type="hidden" name="userid" value="<%=session.getAttribute("userid").toString().trim() %>"/>
	<input type="hidden" name="usernm" value="<%=session.getAttribute("usernm").toString().trim() %>"/>
	 
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