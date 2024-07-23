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
                                     

<li class="active"><a  href='home1'>Home</a></li>
					  <li><a href="uploadStudentMarks.jsp">College Recommendation</a></li>
               

                                </ul>
                                
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>
     
     
     
            <center>
     <img src="assets/images/inner1.jpg" class="img-thumbnail img-circle img-responsive"/>
     </center>
     <!--################### Key Features Starts Here #######################--->
       
        <div id="login" class="key-feature container-fluid ">
           <div class="container "> 
              <div class="session-title row">
                  <h2>Login</h2>
                   
              </div>
                <div class="row jumbotron form_div">
			
			<div class="col-sm-12">  
			  <form name="frm" method="post" action="check1">
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
			 
			</div>
           </div>
       </div>
       
        
        
<!--################### Footer Starts Here #######################--->
     
        
    </body>


    <script src="assets/js/jquery-3.2.1.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/plugins/scroll-fixed/jquery-scrolltofixed-min.js"></script>
    <script src="assets/plugins/slider/js/owl.carousel.min.js"></script>
    <script src="assets/js/script.js"></script>
</html>
