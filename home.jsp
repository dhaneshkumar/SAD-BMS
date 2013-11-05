<%@include
	file="common.jsp" %>


                <li id="1" class="active"><a href="home.jsp">Home</a></li>
                <li><a href="cult.jsp">Cultural</a></li>
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
				
              </ul>
            </div>
          </div>
        </div><!-- /.navbar -->
      </div>
	<br><br>
	
	
	
	
	
	
     <div>  
	  <table class="table table-bordered"  height= "385px">
	  <tr >
			<td width="30%" >
			
			
			<iframe src="https://www.google.com/calendar/embed?src=sr2prj58afuep9i5lgoh6253po%40group.calendar.google.com&ctz=Asia/Calcutta;title=Cultural&amp;showPrint=0&amp;showTabs=0&amp;showCalendars=0&amp;showTz=1&amp;&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;" style="border: 0;margin: 11% 3%;" width="94%" height="80%" frameborder="0" scrolling="no"></iframe>
			
			</td>
			
			<td id="result"> <h3 align="center">  All Upcoming Events</h3>
			</td>
				
	<!---------------------------------------------Query-------------------------------------------------->			
			<td width="30%"><h3>Queries</h3>
			
			
			
				
	<!-----Query 11 ----------< SEARCH UPCOMING EVENTS BY NAME >-------------->
	
			<div class="accordion" id="accordion2">
				<div class="accordion-group">
					<div class="accordion-heading">
						<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
							Search Upcoming Events by name
						</a>
					</div>
					<div id="collapseOne" class="accordion-body collapse in">
					  <div class="accordion-inner form-inline">	
						<select id="11">
					
					
					<%
					//dropdown for UpcoMing events
					String[] result=node.loadUpcomingEvent().split(",");
					for(int i=0;i<result.length;i++)
					{
						out.println("<option>" + result[i] +"</option>");
					}
					
					%>	
						
							
						</select>
						<a  href="#showResult"  role="button " class=" btn btn-success pull-right" data-toggle="modal"  type="submit" onclick="callbackend(11)">Submit</a>
					  </div>
					</div>
				</div>
			
	<!-----Query 12 ----------< VIEW RESULT OF EVENTS >--------------------------------------->		
				
			  <div class="accordion-group">
				<div class="accordion-heading">
				  <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
					View results of Events
				  </a>
				</div>
				<div id="collapseTwo" class="accordion-body collapse">
				  <div class="accordion-inner form-inline">
					<select id="12">
		<%
					//dropdown for UpcoMing events
					String[] result1=node.loadPastEvent().split(",");
					for(int i=0;i<result1.length;i++)
					{
						out.println("<option>" + result1[i] +"</option>");
					}
					
		%>	
						</select>
						<a  href="#showResult"  role="button " class=" btn btn-success pull-right" data-toggle="modal"  type="submit" onclick="callbackend(12)">Submit</a>
					  </div>
				</div>
			  </div>
			  
	<!-----Query 13 ----------< VIEW  EVENTS BY GENRE>--------------------------------------->				  
			  <div class="accordion-group">
				<div class="accordion-heading">
				  <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree">
					Search Upcoming Event by Genre 
				  </a>
				</div>
				<div id="collapseThree" class="accordion-body collapse">
				  <div class="accordion-inner form-inline">
					<select id="13">
		<%
				 result1=node.loadEventByGenre().split(",");
					for(int i=0;i<result1.length;i++)
					{
						out.println("<option>" + result1[i] +"</option>");
					}
		%>					
						</select>
						<a  href="#showResult"  role="button " class=" btn btn-success pull-right" data-toggle="modal"  type="submit" onclick="callbackend(13)">Submit</a>
					  </div>
				</div>
			  </div>
			  
			  
	<!-----Query 14 ----------< CURRENT HOSTEL STANDING >--------------------------------------->			
			  <div class="accordion-group">
				<div class="accordion-heading">
				  <a id="14" href="#showResult" class="accordion-toggle" data-toggle="modal"  type="submit" onclick="callNoSelection(14)" data-parent="#accordion2" >
					Current Hostel Standing</a>
				</div>
			  </div>
			  
			  
	<!-----Query 15 ----------< VENUE DETAILS >--------------------------------------->			
			  <div class="accordion-group">
				<div class="accordion-heading">
				  <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse4">
					Venue details
				  </a>
				</div>
				<div id="collapse4" class="accordion-body collapse">
				  <div class="accordion-inner form-inline">
					<select id="15">
		<%
				 result1=node.loadVenue().split(",");
					for(int i=0;i<result1.length;i++)
					{
						out.println("<option>" + result1[i] +"</option>");
					}
		%>
						</select>
						<a  href="#showResult"  role="button " class=" btn btn-success pull-right" data-toggle="modal"  type="submit" onclick="callbackend(15)">Submit</a>
					  </div>
				</div>
			  </div>
			  
	<!-----Query 16 ----------< SHOW COUNCIL >--------------------------------------->			
			  <div class="accordion-group">
				<div class="accordion-heading">
				  <a id="16" href="#showResult" class="accordion-toggle" data-toggle="modal"  type="submit" onclick="callNoSelection(16)" data-parent="#accordion2" >
					Show Council
				  </a>
				</div>
			  </div>
			  
	<!-----Query 17----------< SHOW CLUBS >--------------------------------------->			
			  <div class="accordion-group">
				<div class="accordion-heading">
				  <a id="17" href="#showResult" class="accordion-toggle" data-toggle="modal"  type="submit" onclick="callNoSelection(17)" data-parent="#accordion2" >
					Show Clubs
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
