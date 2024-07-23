<%@page import="models.ViewColg"%>
<%@page import="java.util.List"%>
<%@page import="beans.BranchList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title> </title>
    <link rel="shortcut icon" href="assets/images/fav.png" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="assets/images/fav.jpg">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/all.min.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
</head>

    <body>
        
         <!-- ################# Header Starts Here#######################--->

    <header class="continer-fluid ">
        <div  class="header-top">
            <div class="container">
                <div class="row col-det">
                    <div class="col-lg-6 d-none d-lg-block">
                        <ul class="ulleft">
                                </ul>
                    </div>
                    <div class="col-lg-6 col-md-12">
                        <ul class="ulright">
                           
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div id="menu-jk" class="header-bottom">
            <div class="container">
                <div class="row nav-row">
                    <div class="col-lg-3 col-md-12 logo">
                        <a href="home">
                           <h1>Uni-info Application </h1>
                        </a>

                    </div>
                    <div class="col-lg-9 col-md-12 nav-col">
                        <nav class="navbar navbar-expand-lg navbar-light">

                            <button
                                    class="navbar-toggler"
                                    type="button"
                                    data-toggle="collapse"
                                    data-target="#navbarNav"
                                    aria-controls="navbarNav"
                                    aria-expanded="false"
                                    aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarNav">
                                <ul class="navbar-nav">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="home">Home
                                        </a>
                                    </li>
                                   
                                    <li class="nav-item">
                                        <a class="nav-link" href="#colg">College Registration</a>
                                    </li>

                                    <li class="nav-item">
                                        <a class="nav-link" href="#student">Student Registration</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#login">Login</a>
                                    </li>
 <!-- <li class="nav-item">
                                        <a class="nav-link" href="uploadStudentMarks.jsp">College Recommendation</a>
                                    </li>-->



                                </ul>
                                
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>
        
        <!--################### Slider Starts Here #######################--->

    <div class="slider-detail">

        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item ">
                    <img class="d-block w-100" src="assets/images/slider/slid_1.jpg" alt="First slide">
                    <div class="carousel-caption fvgb d-none d-md-block">
                        <h5 class="animated bounceInDown"> </h5>
                         
                    </div>
                </div>

                <div class="carousel-item active">
                    <img class="d-block w-100" src="assets/images/slider/slid_2.jpg" alt="Third slide">
                    <div class="carousel-caption vdg-cur d-none d-md-block">
                        <h5 class="animated bounceInDown"> </h5>
                       
                    </div>
                </div>

            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>


    </div>
        
        

     <!--################### Key Features Starts Here #######################--->
       
        <div id="login" class="key-feature container-fluid">
           <div class="container">
              <div class="session-title row">
                  <h2>Login</h2>
                   
              </div>
                <div class="row jumbotron">
			
			<div class="col-md-6">  
			  <form name="frm" method="post" action="check">
         <table class="tblform"> 
         <tr><td>Userid</td>
         <td>
          <input type="text" class="form-control" name="userid" required>
          </td>
          </tr>
          <tr><td>Password</td>
          <td> <input type="password"  class="form-control" name="pswd" required>
          </td>
          </tr>
          <tr><td colspan="2"><input type="submit" class="btn btn-primary" value="Submit"></td></tr>
          <tr><td colspan="2"><a href="forgetpassword">Forget Password?</a></td></tr>
         </table>
				<br/><br/>			 
							 
							 
						</form>
			</div>
			<div class="col-md-6">
			   <img src="images/login.jpg" width="80%"/>
			</div>
			</div>
           </div>
       </div>
       
       
    <!--################### Cources Starts Here #######################--->
       
     <div  id="student" class="cources container-fluid gback">
           <div class="container">
              <div class="session-title row">
                   <h2>Student Registration</h2>
                 </div>
              	     
<%
	BranchList bl = new BranchList();
	List<BranchList> lst = bl.getBranchList();
    ViewColg vc=new ViewColg();
    List<ViewColg>lst1=vc.getColgReport();
    System.out.println("lst="+lst1.size());
%>
  <div class="row">
  <div class="col-md-6">
  <div class="jumbotron">
   
<form name="frm" method="post" action="registeruser" enctype="multipart/form-data"><table>
	<tr><td>Userid</td>
	<td><input type="text" name="userid" class="form-control" required></td>
	</tr>
	<tr><td>User Name</td>
	<td><input type="text" name="usernm" class="form-control" required></td>
	</tr>
	<tr><td>Password</td>
	<td><input type="password" name="pswd" class="form-control" required></td>
	</tr>
	 <tr>
                    <td>Usertype</td>
                    <td><select name="usertype" required class="form-control">                   
                    <option value="student">Student</option>
                    <option value="exstudent">Ex-student</option>

                        </select>          </td>
                </tr>
       <tr><td>Mobile Number</td>
       	<td><input type="text" name="mobileno"  pattern="^\d{10}$" class="form-control" required></td></tr>
       <tr>
		<td>Email Address</td>       
       <td><input type="text" name="emailid" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"  class="form-control" required></td>
       </tr>
     
       <tr>
<td>Gender</td>
<td>
  <input type="hidden" name="userstatus" value="deactive"/>
<input type="radio" name="gender" value="Male"   checked="checked" required >Male 
<input type="radio" name="gender" value="Female"  required>Female 
</td>
</tr>
       <tr>
       	<td>College</td>
       	<td><select name="college" required class="form-control" onchange="makeGetRequestInd(this.value)">
       	<option value=""><---Select---></option> 
		
       	<% for(int i=0 ;i<lst1.size();i++) {%>
       			<option value=<%=lst1.get(i).getUserid() %>><%=lst1.get(i).getColgName() %></option>
		<%} %>
       	</select></td>
       	
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
       <tr>
	<td>Course</td>
	<td>
	BE
	</td>
	</tr>
	<tr>
	<td>Semester</td>
	<td>
	 <select name="semester" required class="form-control">
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
      
       <tr>
       	<td>Date Of Birth</td>
       	<td><input type="date" name="dob" class="form-control"></td>
       </tr>
       <tr><td>Photo</td>
       <td>
       <input type="file" name="file" class="form-control"/>
       </td>
	<tr>
	<td><input type="submit" value="Submit" class="btn btn-primary" ></td>
	</tr>
	</table>
</form></div>
         </div>
         
    </div>   
    </div></div> 
    
    <!--################### Team Starts Here #######################--->
    <section id="colg" class="our-team team-11">
        <div class="container">
            <div class="session-title row">
                  <h2>College Registration</h2>
                   
            </div>
             <div class="row">
  <div class="col-md-6">
  <div class="jumbotron">
   
<form name="frm" method="post" action="registercolg" enctype="multipart/form-data"><table>
	<tr><td>Userid</td>
	<td><input type="text" name="userid" class="form-control" required></td>
	</tr>
	<tr><td>User Name</td>
	<td><input type="text" name="usernm" class="form-control" required></td>
	</tr>
	<tr><td>College Name</td>
	<td><input type="text" name="colgName" class="form-control" required></td>
	</tr>
	<tr><td>Password</td>
	<td><input type="password" name="pswd" class="form-control" required></td>
	</tr>
	 
       <tr><td>Mobile Number</td>
       	<td><input type="hidden" name="usertype" value="college"/>
       	<input type="text" name="mobileno"  pattern="^\d{10}$" class="form-control" required></td></tr>
       <tr>
		<td>Email Address</td>       
       <td><input type="text" name="emailid" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"  class="form-control" required></td>
       </tr>
     
       <tr>
<td>Gender</td>
<td>
  <input type="hidden" name="userstatus" value="deactive"/>
<input type="radio" name="gender" value="Male"   checked="checked" required >Male 
<input type="radio" name="gender" value="Female"  required>Female 
</td>
</tr> 
       <tr>
       	<td>Date Of Birth</td>
       	<td><input type="date" name="dob" class="form-control"></td>
       </tr>
       <tr><td>College Proof Document</td>
       <td>
       <input type="file" name="file" class="form-control"/>
       </td>
	<tr>
	<td><input type="submit" value="Submit" class="btn btn-primary" ></td>
	</tr>
	</table>
</form></div>
         </div>
         
        </div>


    </section>    
    
        
<!--################### Footer Starts Here #######################--->
    <footer id="contact">
    <div class="container">
        <div class="row">
              
    </div>
</footer>
<div class="copy">
            <div class="container">
                <p>Colleges Recommender System using machine learning techniques</p>
            </div>

        </div>
        
        
    </body>


    <script src="assets/js/jquery-3.2.1.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/plugins/scroll-fixed/jquery-scrolltofixed-min.js"></script>
    <script src="assets/plugins/slider/js/owl.carousel.min.js"></script>
    <script src="assets/js/script.js"></script>
</html>
