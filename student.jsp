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
		 
		   <a href="home.html" role="button" class=" btn btn-info pull-right" >Log Out</a>
		 
		 
		 </span>
		</h1>
		
		</div>
		

		<!---------------------------------tags------------------------------------>
      <div class="masthead" style="margin: -38px 0;">
        <div class="navbar">
          <div class="navbar-inner">
            <div class="container">
              <ul class="nav" >

                <li class="active"><a href="home.jsp">Home</a></li>
                <li ><a href="cult.jsp">Cultural</a></li>
                <li><a href="tech.jsp">Technical</a></li>
                <li><a href="sports.jsp">Sports</a></li>
                <li><a href="acad.jsp">Academics</a></li>
                <li id="extra"class="dropdown" >
						<a class="dropdown-toggle" data-toggle="dropdown" href="#" onclick="changeDisplay()">More<b class="caret"></b></a>
						<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
							<li style="display:table"><a href="#myModal7" data-toggle="modal">Student Details</a></li>
							<li style="display:table"><a href="#myModal6" data-toggle="modal">Hostel Details</a></li>
							<li style="display:table"><a href="#myModal5" data-toggle="modal">Assemble Teams</a></li>
						</ul>
				
				</li>
				
				
				
				
				<li class="dropdown" >
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">Interests<b class="caret"></b></a>
						<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
							<li style="display:table"><a href="#myModa211" data-toggle="modal">My Clubs & Activities</a></li>
							<li style="display:table"><a href="#myModal8" data-toggle="modal">Join Clubs</a></li>
							<li style="display:table"><a href="#myModal9" data-toggle="modal">Like Sports Activities</a></li>
							<li style="display:table"><a href="#myModal10" data-toggle="modal">Like Cult. Activities</a></li>
							<li style="display:table"><a href="#myModal11" data-toggle="modal">Like Tech. Activities</a></li>
						</ul>
				</li>				
				
              </ul>
            </div>
          </div>
        </div><!-- /.navbar -->
      </div>
	<br><br>
	
	
	
	
	
	
     <div> 
	  <table class="table table-bordered" height="385px">
	  <tr >
			<td width="30%" >
			
			
			<iframe src="https://www.google.com/calendar/embed?src=sr2prj58afuep9i5lgoh6253po%40group.calendar.google.com&ctz=Asia/Calcutta;title=Cultural&amp;showPrint=0&amp;showTabs=0&amp;showCalendars=0&amp;showTz=1&amp;&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;" style="border: 0;margin: 11% 3%;" width="94%" height="80%"  frameborder="0" scrolling="no"></iframe>
			
			</td>
			
			<td><h3 align="center">  Upcoming Cultural Events</h3>
			</td>
				
	<!---------------------------------------------Query-------------------------------------------------->			
			<td width="30%"><h3>Queries</h3>
			
			
			
				

			<div class="accordion" id="accordion2">
				<div class="accordion-group">
					<div class="accordion-heading">
						<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
							Search Upcoming Cultural Events by name
						</a>
					</div>
					<div id="collapseOne" class="accordion-body collapse in">
					  <div class="accordion-inner form-inline">	
						<select>
							<option>1</option>
							  <option>2</option>
							  <option>3</option>
							  <option>4</option>
							  <option>5</option>
						</select>
						<button type="submit" class="btn">Submit</button>
					  </div>
					</div>
				</div>
				
			  <div class="accordion-group">
				<div class="accordion-heading">
				  <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
					View results of Cultural Events
				  </a>
				</div>
				<div id="collapseTwo" class="accordion-body collapse">
				  <div class="accordion-inner form-inline">
					<select>
							<option>1</option>
							  <option>2</option>
							  <option>3</option>
							  <option>4</option>
							  <option>5</option>
						</select>
						<button type="submit" class="btn">Submit</button>
				  </div>
				</div>
			  </div>
			  
			  <div class="accordion-group">
				<div class="accordion-heading">
				  <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree">
					Search Upcoming Cultural Event by Genre 
				  </a>
				</div>
				<div id="collapseThree" class="accordion-body collapse">
				  <div class="accordion-inner form-inline">
					<select>
							<option>1</option>
							  <option>2</option>
							  <option>3</option>
							  <option>4</option>
							  <option>5</option>
						</select>
						<button type="submit" class="btn">Submit</button>
				  </div>
				</div>
			  </div>
			  
			  <div class="accordion-group">
				<div class="accordion-heading">
				  <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#tally">
					Current Hostel Standing in Cultural Events
				  </a>
				</div>
			  </div>
			  
			  <div class="accordion-group">
				<div class="accordion-heading">
				  <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse4">
					Venue details
				  </a>
				</div>
				<div id="collapse4" class="accordion-body collapse">
				  <div class="accordion-inner form-inline">
					<select>
							<option>1</option>
							  <option>2</option>
							  <option>3</option>
							  <option>4</option>
							  <option>5</option>
						</select>
						<button type="submit" class="btn">Submit</button>
				  </div>
				</div>
			  </div>
			  
			  
			  <div class="accordion-group">
				<div class="accordion-heading">
				  <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#council">
					Show Cultural Council
				  </a>
				</div>
			  </div>
			  
			  
			  
			  
			</div>	






			
			
			
			
			</td>
	  </tr>
	  
	  
	  </table>
	  
	  </div>
	  
	  
	  <!---- more - details -------------------------------------------------->
	  
	  
	  
	  <div id="myModal5" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display:none">  
	<div class="modal-dialog">	
	<div class="modal-content">
		<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		<h3>Query for Assembling Team</h3>
		</div>
		<div class="modal-body">
	 		<form class="form-horizontal" role="form">
	  			<div class="form-group">
	 				<label for="hostelNo5" class="col-lg-4 control-label">Hostel No &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
	 				<div class="col-lg-8">
	 					<select id="hostelNo5">
	 						<option>1</option>
	 						<option>2</option>
	 					</select>
	 				</div>
	 				</br> 
	 			</div>
	  			<div class="form-group">
	 				<label for="category5" class="col-lg-4 control-label">Category &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
	 				<div class="col-lg-8">
	 					<select id="category5">
	 						<option>1</option>
	 						<option>2</option>
	 					</select>
	 				</div>
	 				</br> 
	 			</div>  
 			</form>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn btn-primary">Submit</a>
		</div>
	</div>
	</div>
</div>	  
	  
<div id="myModal6" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display:none">  
	<div class="modal-dialog">	
	<div class="modal-content">
		<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		<h3>Hostel Details</h3>
		</div>
		<div class="modal-body">
	 		<form class="form-horizontal" role="form">
	  			<div class="form-group">
	 				<label for="hostelNo6" class="col-lg-4 control-label">Hostel No &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
	 				<div class="col-lg-8">
	 					<select id="hostelNo6">
	 						<option>1</option>
	 						<option>2</option>
	 					</select>
	 				</div>
	 				</br> 
	 			</div> 
 			</form>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn btn-primary">Submit</a>
		</div>
	</div>
	</div>
</div>		  
	  
<div id="myModal7" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display:none">  
	<div class="modal-dialog">	
	<div class="modal-content">
		<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		<h3>Student Details</h3>
		</div>
		<div class="modal-body">
	 		<form class="form-horizontal" role="form">
	  			<div class="form-group">
	 				<label for="studentDetails7" class="col-lg-4 control-label">Student Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
	 				<div class="col-lg-8">
 						<input class="form-control" id="studentDetails7" placeholder="Student Name">
	 				</div>
	 				</br> 
	 			</div> 
 			</form>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn btn-primary">Submit</a>
		</div>
	</div>
	</div>
</div>
	  
<!------------------------Interests--------------------------------------------->


<div id="myModa211" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display:none">  
	<div class="modal-dialog">	
	<div class="modal-content">
		<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		<h3>My Clubs</h3>
		</div>
		<div class="modal-body">
	 		<form class="form-horizontal" role="form">
	  			<div class="form-group">
	 				<label for="clubName8" class="col-lg-4 control-label">Club Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
	 				<div class="col-lg-8">
 						<select id="clubName8">
 							<option>1</option>
 							<option>2</option>
 						</select>
	 				</div>
	 				</br> 
	 			</div> 
 			</form>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn btn-primary">Join</a>
		</div>
	</div>
	</div>
</div>	  


<div id="myModal8" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display:none">  
	<div class="modal-dialog">	
	<div class="modal-content">
		<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		<h3>Join Clubs</h3>
		</div>
		<div class="modal-body">
	 		<form class="form-horizontal" role="form">
	  			<div class="form-group">
	 				<label for="clubName8" class="col-lg-4 control-label">Club Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
	 				<div class="col-lg-8">
 						<select id="clubName8">
 							<option>1</option>
 							<option>2</option>
 						</select>
	 				</div>
	 				</br> 
	 			</div> 
 			</form>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn btn-primary">Join</a>
		</div>
	</div>
	</div>
</div>	  


<div id="myModal9" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display:none">  
	<div class="modal-dialog">	
	<div class="modal-content">
		<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		<h3>Likes Sports Activities</h3>
		</div>
		<div class="modal-body">
	 		<form class="form-horizontal" role="form">
	  			<div class="form-group">
	 				<label for="sports9" class="col-lg-4 control-label">Game &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
	 				<div class="col-lg-8">
 						<select id="sports9">
 							<option>1</option>
 							<option>2</option>
 						</select>
	 				</div>
	 				</br> 
	 			</div> 
 			</form>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn btn-primary">Like</a>
		</div>
	</div>
	</div>
</div>
	  
<div id="myModal10" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display:none">  
	<div class="modal-dialog">	
	<div class="modal-content">
		<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		<h3>Likes Cultural Activities</h3>
		</div>
		<div class="modal-body">
	 		<form class="form-horizontal" role="form">
	  			<div class="form-group">
	 				<label for="cult10" class="col-lg-4 control-label">Cultural Activity &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
	 				<div class="col-lg-8">
 						<select id="cult10">
 							<option>1</option>
 							<option>2</option>
 						</select>
	 				</div>
	 				</br> 
	 			</div> 
 			</form>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn btn-primary">Like</a>
		</div>
	</div>
	</div>
</div>	  
	  
<div id="myModal11" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display:none">  
	<div class="modal-dialog">	
	<div class="modal-content">
		<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		<h3>Likes Technical Activities</h3>
		</div>
		<div class="modal-body">
	 		<form class="form-horizontal" role="form">
	  			<div class="form-group">
	 				<label for="tech10" class="col-lg-4 control-label">Technical Activity &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
	 				<div class="col-lg-8">
 						<select id="tech10">
 							<option>1</option>
 							<option>2</option>
 						</select>
	 				</div>
	 				</br> 
	 			</div> 
 			</form>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn btn-primary">Like</a>
		</div>
	</div>
	</div>
</div>	  
	  
	  
	  
      <div class="footer">
        <p>&copy;  SAD-BMS</p>
      </div>

    </div> <!-- /container -->

  </body>
</html>
