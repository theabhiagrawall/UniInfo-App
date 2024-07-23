<%@page import="java.util.Date"%> 
<%@page import="java.util.List"%>
<%@page import="models.LoginTracker"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
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
                           <h1>Uni-info Application</h1>
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
                                     

<li class="active"><a class="nav-link" href='<%=session.getAttribute("usertype").toString().trim() %>'>Home</a></li>
					 
					<li><a class="nav-link" href="ChangePass">Change Password</a></li>
					 <li><a class="nav-link" href="logout">Logout</a>
					 
					 </li>

                                </ul>
                                
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>
     <div class="innerbanner">
     </div>
     
     
      
    <div class="container-fluid">
    <div class="row">
    <div class="col-md-3  gback">
    <ul class="sidebar gback ">
        <li class="active"><a href="/<%=session.getAttribute("usertype").toString().trim()%>">Home</a></li>
        <%if(session.getAttribute("usertype").toString().trim().equals("college"))
                                	{
                                	%>
                                	 
        <li><a href="approvestudentlist" > Pending students</a></li>
		<li><a href="viewstudent" >View Student</a></li>
		 <li><a href="uploadCollegeDetails.jsp" >Register College Details</a></li>
		<li><a href="viewColgDetails" >view College Details</a></li>
		 <li><a href="uploadCollegeCutoff.jsp" >Register College Cutoff</a></li>
		<li><a href="viewColgCutoffDetails.jsp" >view College CutOff Details</a></li>
		  
		
								 <%}
        else if(session.getAttribute("usertype").toString().trim().equals("admin"))
    	{
    	%>
    	<li><a href="approveColglist" > Pending Colleges</a></li>
		<li><a href="viewColg" >View Colleges</a></li>   
					
  
        <%}   else if(session.getAttribute("usertype").toString().trim().equals("student"))
                            	{
                            	%>
                             
                            	<li class="nav-item"><a  class="nav-link" href="editProfile" >Edit Profile</a></li>
                             <li><a href="#">Upload New Documents</a></li>
              <li><a href="#">My Documents</a></li>
              
                             <%} %> 
                            	<li class="nav-item"><a  class="nav-link" href="ChangePass">Change Password</a></li>
								<li class="nav-item"><a  class="nav-link" href="logout">Logout</a></li>
        <!--<li><a class="drop" href="#">Pages</a>
          <ul>
            <li><a href="pages/gallery.html">Gallery</a></li>
            <li><a href="pages/full-width.html">Full Width</a></li>
            <li><a href="pages/sidebar-left.html">Sidebar Left</a></li>
            <li><a href="pages/sidebar-right.html">Sidebar Right</a></li>
            <li><a href="pages/basic-grid.html">Basic Grid</a></li>
            <li><a href="pages/font-icons.html">Font Icons</a></li>
          </ul>
        </li>-->
        <!--<li><a class="drop" href="#">Dropdown</a>
          <ul>
            <li><a href="#">Level 2</a></li>
            <li><a class="drop" href="#">Level 2 + Drop</a>
              <ul>
                <li><a href="#">Level 3</a></li>
                <li><a href="#">Level 3</a></li>
                <li><a href="#">Level 3</a></li>
              </ul>
            </li>
            <li><a href="#">Level 2</a></li>
          </ul>
        </li>-->
       
         
      </ul>
    </div>
    <div class="col-md-9">    <!--start-image-slider---->
		<div class="image-slider">
		<!-- Slid                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   eshow 1 -->
		  <ul class="rslides" id="slider1">
		    <li><img src="images/banner2.jpg" alt=""></li>
			 
		  </ul>
	    <!-- Slideshow 2 -->
	   </div> 
     <h6 class="heading"> Logged in as <%=session.getAttribute("userid").toString() %> (<%=session.getAttribute("usertype").toString() %>)
	</h6>
		 
			 <div class="jumbotron">  