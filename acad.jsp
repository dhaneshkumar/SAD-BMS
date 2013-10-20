<%@include
	file="common.jsp" %>
                <li><a href="home.jsp">Home</a></li>
                <li><a href="cult.jsp">Cultural</a></li>
                <li><a href="tech.jsp">Technical</a></li>
                <li><a href="sports.jsp">Sports</a></li>
                <li class="active"><a href="acad.jsp">Academics</a></li>
                
				<li id="extra"class="dropdown" >
						<a class="dropdown-toggle" data-toggle="dropdown" href="#" onclick="changeDisplay()">More<b class="caret"></b></a>
						<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
							<li style="display:table"><a href="#myModal7" data-toggle="modal">Student Details</a></li>
							<li style="display:table"><a href="#myModal6" data-toggle="modal">Hostel Details</a></li>
							<li style="display:table"><a href="#myModal5" data-toggle="modal">Assemble Teams</a></li>
						</ul>
				
				</li>
				
              </ul>
            </div>
          </div>
        </div><!-- /.navbar -->
      </div>
	<br><br>
	
	
	
	
	
	
     <div> 
	  <table class="table table-bordered"  height= "385px";>
	  <tr >
			<td width="30%" >
			
			
			<iframe src="https://www.google.com/calendar/embed?src=sr2prj58afuep9i5lgoh6253po%40group.calendar.google.com&ctz=Asia/Calcutta;title=Cultural&amp;showPrint=0&amp;showTabs=0&amp;showCalendars=0&amp;showTz=1&amp;&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;" style="border: 0;margin: 11% 3%;" width="94%" height="80%"  frameborder="0" scrolling="no"></iframe>
			
			</td>
			
			<td><h3 align="center">  Upcoming Academic Events</h3>
			</td>
				
	<!---------------------------------------------Query-------------------------------------------------->			
			<td width="30%"><h3>Queries</h3>
			
			<div class="accordion" id="accordion2">
				<div class="accordion-group">
					<div class="accordion-heading">
						<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseO">
							Search Upcoming Academic Events by name
						</a>
					</div>
					<div id="collapseO" class="accordion-body collapse in">
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
						<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
							Search Academic Talks by Speaker 
						</a>
					</div>
					<div id="collapseOne" class="accordion-body collapse">
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
					Show Academic Council
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
	  
	  
	  
      <div class="footer">
        <p>&copy;  SAD-BMS</p>
      </div>

    </div> <!-- /container -->

  </body>
</html>
