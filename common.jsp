<%@ page import="sadbms.run" %>
<% 
		run node=new run();
%>
<!DOCTYPE html>



<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>SAD-BMS</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
	<script src="bootstrap/js/jquery.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="bootstrap/js/relation.js"></script>
	
	
	
    <style type="text/css">
     

      /* Custom container */
      .container {
        margin: 0 auto;
       // max-width: 1000px;
      }
      .container > hr {
        margin: 60px 0;
      }

      /* Main marketing message and sign up button */
      .jumbotron {
        margin: 70px 0;
        text-align: center;
      }
      .jumbotron h1 {
     font-size: 52.5px;
	margin-top: -3%;
	font-family: TeXGyreHerosCnBold;
	color:green;
      }
      .jumbotron .lead {
        font-size: 24px;
        line-height: 1.25;
      }
      .jumbotron .btn {
        font-size: 21px;
      //  padding: 14px 24px;
      }
	


      /* Customize the navbar links to be fill the entire space of the .navbar */
      .navbar .navbar-inner {
        padding: 0;
      }
      .navbar .nav {
        margin: 0;
        display: table;
        width: 100%;
      }
      .navbar .nav li {
        display: table-cell;
        width: 1%;
        float: none;
      }
      .navbar .nav li a {
        font-weight: bold;
        text-align: center;
        border-left: 1px solid rgba(255,255,255,.75);
        border-right: 1px solid rgba(0,0,0,.1);
      }
      .navbar .nav li:first-child a {
        border-left: 0;
        
      }
      .navbar .nav li:last-child a {
        border-right: 0;
       
      }
    </style>
    <link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet">

  </head>


<!--------------------------------Body-------------------------------------------->





  <body>            
    <div class="container">
	<!-------------------Header------->
	<div class="jumbotron">
	
		
        <h1>Student Activity 
        <span style="color: #971F1F;" >Database</span>
		
		<!-------------------------------- sign in button -->
		<span >
		 
		  <a href="#myModal" role="button " class=" btn btn-info pull-right" data-toggle="modal">Sign In</a> 
        <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">  
    
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <h3>Login</h3>
    </div>
     <div class="modal-body">
     		<form class="navbar-form navbar-right">	
	        <div class="form-group">
              <input type="text" placeholder="Roll No" class="form-control">
            </div>
            <div class="form-group">
              <input type="password" placeholder="Password" class="form-control">
            </div>
          </form>
	</div>
    <div class="modal-footer">
    <a href="#" class="btn btn-primary">Sign in</a>
    </div>
    </div>
		 
		 
		 </span>
		</h1>
		
		</div>
		
		<!----------------------------------displaying query result ------------------->
		
		
		
		<div id="showResult" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width: 609px;">  
    
    <div  class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <h3 id ="resultHeader">Query Result</h3>
    </div>
     <div id="putResult" class="modal-body">
     		
	</div>
    <div class="modal-footer">
    
    </div>
    </div>
		
		

		<!---------------------------------tags------------------------------------>
      <div class="masthead" style="margin: -38px 0;">
        <div class="navbar">
          <div class="navbar-inner">
            <div class="container">
              <ul class="nav" >
