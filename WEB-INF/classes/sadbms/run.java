package sadbms;

import java.io.*;
import java.util.*;
import java.sql.*;
import java.util.Date;
//import java.text.DateFormat;
//import java.text.SimpleDateFormat;
//import java.util.Calendar;
//import javax.servlet.http.*;
//import javax.servlet.*;

public class run
{
	public static boolean tester=false; 
    public static Connection conn = null;
    public static Statement ps=null;
    
    public run()
    {
	    int flag=0;
        try{
                Class.forName("org.postgresql.Driver");
            } catch (ClassNotFoundException cnfe){
                    System.out.println("Could not find the JDBC driver!");
                    System.exit(1);
             }
	        
		//Enter the connection details
        String hostname = "localhost";	// If PostgreSQL is running on some other machine enter the IP address of the machine here
		String username = "dhanesh"; // Enter your PostgreSQL username
		String password = "password"; // Enter your PostgreSQL password
		String dbName = "sadbms"; // Enter the name of the database that has the university tables.
		String connectionUrl = "jdbc:postgresql://" + hostname +  "/" + dbName;
		

		//Connect to the database
                try {
                    conn = DriverManager.getConnection(connectionUrl,username, password);
                 //   System.out.println("Connected successfullly");
                } catch (SQLException sqle) {
                       System.out.println("Connection failed");
		       System.out.println(sqle);
		       // Uncomment the below line for a more detailed stack trace
		       // sqle.printStackTrace();
                       System.exit(1);
                }   
    }
    
    //************< HOME 11> *****************search upcoming event by name **********************************************
    
    public String loadUpcomingEvent()
    {
		
		//DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		//Date date = new Date();
		//String current_date =dateFormat.format(date);
		
		
        String space="";
        String start = "SELECT * FROM events WHERE start_date>=current_date;"; 
        try
        {
            ps=conn.createStatement();		 
            ResultSet rs = ps.executeQuery(start);
           
           
            
             while(rs.next()){				
                  space += rs.getString("event_name") +",";
                 // System.out.println(rs.getString("event_name") +" ------ "+rs.getString("start_date"));
             }
             rs.close();
           
         }
         catch (SQLException sqle) {
                       System.out.println(sqle);
                       System.exit(1);
         } 
            
          return space; 
	}
	
	
	public String EventByName(String name)
	{
		System.out.println("name : " + name);
		
		String space="No Event selected";
        String start = "Select * FROM ((Select event_name, start_date, start_time, duration, end_date FROM events WHERE event_name = '" + name + "' ) AS A NATURAL JOIN ( (Select * FROM happens_at WHERE event_name = '" +name + "') AS B NATURAL JOIN (Select venue_name, location FROM venue) AS C) AS D NATURAL JOIN ( (Select * FROM organised_by WHERE event_name ='" + name + "') AS E NATURAL JOIN (Select club_name, manager_roll_no, convener_roll_no FROM club) AS F) AS G) AS H;"; 
        String manage="", convener="";
        try
        {
            ps=conn.createStatement();		 
            ResultSet rs = ps.executeQuery(start);
           
           
            
             while(rs.next()){				
				 
                  space = "<tr><td>Start date </td><td>";
                  space += rs.getString("start_date") +"</td></tr><tr><td>Start time</td><td>";
                  space += rs.getString("start_time") +"</td></tr><tr><td>Time duration</td><td>";
                  space += rs.getString("duration") +" minutes</td></tr><tr><td>End date</td><td>";
                  space += rs.getString("end_date") +"</td></tr><tr><td>venue</td><td>";
                  space += rs.getString("venue_name") +"</td></tr><tr><td>Location</td><td>";
                  space += rs.getString("location") +"</td></tr><tr><td>club</td><td>";
                  space += rs.getString("club_name") +"</td></tr><tr><td>Manager</td><td>";
                  manage = rs.getString("manager_roll_no");
                  convener = rs.getString("convener_roll_no"); 
                  
                 
             }
             
             
             String manager = "SELECT student_name, email_id, phone_no FROM student where roll_no ='" +  manage + "';" ;
             rs = ps.executeQuery(manager);
             while(rs.next()){	
				   space += rs.getString("student_name") +"<br>" + rs.getString("email_id") + "<br>" +rs.getString("phone_no");
			 }
			 
			space += "</td></tr><tr><td>Convener</td><td>";
                
            manager = "SELECT student_name, email_id, phone_no FROM student where roll_no ='" +  convener +"';";
            rs = ps.executeQuery(manager);
            while(rs.next()){	
				space += rs.getString("student_name") +"<br>" + rs.getString("email_id") + "<br>" +rs.getString("phone_no");
			}
			
			space += "</td></tr>";
			rs.close();
           
         }
         catch (SQLException sqle) {
                       System.out.println(sqle);
                       System.exit(1);
         } 
          
         space = "<table class=\"table table-striped\">" + space + "</table>" ;
            
          return space; 
	
		
	}
	
	 //************< HOME 12> ***************** View result of events **********************************************
	
	
	public String loadPastEvent()
    {
		
        String space="";
        String start = "Select * FROM events WHERE end_date < current_date AND start_date NOT IN (Select start_date FROM academic_events) AND event_name NOT IN (Select academic_event_name FROM academic_events);";
        try
        {
            ps=conn.createStatement();		 
            ResultSet rs = ps.executeQuery(start);
           
           
            
             while(rs.next()){				
                  space += rs.getString("event_name") +",";
                 // System.out.println(rs.getString("event_name") +" ------ "+rs.getString("start_date"));
             }
             rs.close();
           
         }
         catch (SQLException sqle) {
                       System.out.println(sqle);
                       System.exit(1);
         } 
            
          return space; 
	}
	
	//---------------------------------------------
	
	public String resultOfEvent(String name)
	{
		System.out.println("name : " + name);
		
		//name ="Crossy GC";
		String space=" No result for this event";
        String start = "Select * FROM (	(Select event_name, start_date, end_date FROM events WHERE event_name ='"+ name + "') AS A NATURAL JOIN    ( (Select * FROM organised_by WHERE event_name ='" + name + "') AS B NATURAL JOIN (Select club_name, manager_roll_no, convener_roll_no FROM club) AS C) NATURAL JOIN    ( Select event_name, start_date, winner, first_runner_up, second_runner_up from hostel_position WHERE event_name ='" + name + "') AS E) AS D;";

      System.out.println(start);
      
      
        String manage="", convener="", winner="", first="", second="", club="", start1="";
        try
        {
            ps=conn.createStatement();		 
            ResultSet rs = ps.executeQuery(start);
            
           
             while(rs.next()){				
				 if(rs.getString("winner")==""){break;}
				 
                  space = "<tr><td>Start date </td><td>";
                  space += rs.getString("start_date") +"</td></tr><tr><td>End date</td><td>";
                  start1=rs.getString("start_date");
                  space += rs.getString("end_date") +"</td></tr>";                  
                  winner= rs.getString("winner");  
                 
                 
                  first = rs.getString("first_runner_up");
                  second = rs.getString("second_runner_up");
                  club = rs.getString("club_name");
                  manage = rs.getString("manager_roll_no");
                  convener = rs.getString("convener_roll_no"); 
                  
                 
             }
          //   System.out.println("time  fdfd         -----------    "  +first);
           //  System.out.println("time  fdfd         -----------    "  +start1);
         
         String manager="";
         
         if(start1 != "")
         {
             space += "<tr><td>Winner</td><td>H" + winner + "<br>";
             
             manager = "SELECT * FROM winner WHERE winner.event_name ='" + name +"'AND winner.start_date = '" +start1+"';" ;
             rs = ps.executeQuery(manager);
             while(rs.next()){	
				   winner= rs.getString("roll_no");
			 }
             
             manager = "SELECT student_name, email_id, phone_no FROM student where roll_no ='" +  winner + "';" ;
             
             rs = ps.executeQuery(manager);
             while(rs.next()){	
				   space += rs.getString("student_name") +"<br>" + rs.getString("email_id") + "<br>" +rs.getString("phone_no");
			 }
			 
			 space += "</td></tr><tr><td>First runnerup</td><td>H" +first + "</td></tr><tr><td>Second runnerup</td><td>H" +second + "</td></tr>";
            
			 space += "<tr><td>Club</td><td>" + club + "</td></tr><tr><td>Manager</td><td>";
             
             manager = "SELECT student_name, email_id, phone_no FROM student where roll_no ='" +  manage + "';" ;
             rs = ps.executeQuery(manager);
             while(rs.next()){	
				   space += rs.getString("student_name") +"<br>" + rs.getString("email_id") + "<br>" +rs.getString("phone_no");
			 }
			 
			space += "</td></tr><tr><td>Convener</td><td>";
                
            manager = "SELECT student_name, email_id, phone_no FROM student where roll_no ='" +  convener +"';";
            rs = ps.executeQuery(manager);
            while(rs.next()){	
				space += rs.getString("student_name") +"<br>" + rs.getString("email_id") + "<br>" +rs.getString("phone_no");
			}
		
			space += "</td></tr>";
		}
			rs.close();
           
         }
         catch (SQLException sqle) {
                       System.out.println(sqle);
                       System.exit(1);
         } 
          
         space = "<table class=\"table table-striped\">" + space + "</table>" ;
            
          return space; 
	
		
	}
	
	 //************< HOME 13> ***************** Select Event by genre **********************************************
	
	
	public String loadEventByGenre()
    {
		
        String space="";
        String start = "(Select sports_activity_name AS activity_name FROM sports_activity) UNION (Select cultural_activity_name AS activity_name FROM cultural_activity) UNION (Select technical_activity_name AS activity_name FROM technical_activity);";
        try
        {
            ps=conn.createStatement();		 
            ResultSet rs = ps.executeQuery(start);
           
           
            
             while(rs.next()){				
                  space += rs.getString("activity_name") +",";
                 // System.out.println(rs.getString("event_name") +" ------ "+rs.getString("start_date"));
             }
             rs.close();
           
         }
         catch (SQLException sqle) {
                       System.out.println(sqle);
                       System.exit(1);
         } 
            
          return space; 
	}
	
	public String showEventByGenre(String name)
	{
		String space="No Event secheduled";
        String start = "Select * FROM (	(Select event_name, start_date, start_time, duration, end_date FROM events WHERE (event_name IN (Select sports_event_name FROM sports_type WHERE sports_activity_name = '" + name + "') AND start_date IN (Select start_date FROM sports_type WHERE sports_activity_name = '" + name + "')) OR (event_name IN (Select technical_event_name FROM technical_type WHERE technical_activity_name = '" + name + "') AND start_date IN (Select start_date FROM technical_type WHERE technical_activity_name = '" + name + "')) OR (event_name IN (Select cultural_event_name FROM cultural_type WHERE cultural_activity_name = '" + name + "') AND start_date IN (Select start_date FROM cultural_type WHERE cultural_activity_name = '" + name + "'))) as A   NATURAL JOIN	(( Select * FROM happens_at WHERE (event_name IN (Select sports_event_name FROM sports_type WHERE sports_activity_name = '" + name + "') AND start_date IN (Select start_date FROM sports_type WHERE sports_activity_name = '" + name + "')) OR 	(event_name IN (Select technical_event_name FROM technical_type WHERE technical_activity_name = '" + name + "') AND start_date IN (Select  start_date FROM technical_type WHERE technical_activity_name = '" + name + "')) OR 	(event_name IN (Select cultural_event_name  FROM cultural_type WHERE cultural_activity_name = '" + name + "') AND start_date IN (Select  start_date FROM cultural_type WHERE cultural_activity_name = '" + name + "'))) as dsds NATURAL JOIN (Select venue_name, location FROM venue)as ddwew ) as B	 NATURAL JOIN (( Select * FROM organised_by WHERE (event_name IN (Select sports_event_name FROM sports_type WHERE sports_activity_name = '" + name + "') and start_date IN (Select start_date FROM sports_type WHERE sports_activity_name = '" + name + "')) OR (event_name IN (Select technical_event_name FROM technical_type WHERE technical_activity_name = '" + name + "') and start_date IN (Select start_date FROM technical_type WHERE technical_activity_name = '" + name + "')) OR (event_name IN (Select cultural_event_name FROM cultural_type WHERE cultural_activity_name = '" + name + "') and start_date IN (Select start_date FROM cultural_type WHERE cultural_activity_name = '" + name + "'))) AS ereop NATURAL JOIN (Select club_name, manager_roll_no, convener_roll_no FROM club) AS rklkj) as C) AS E;";
        String manage="", convener="";
        try
        {
            ps=conn.createStatement();		 
            ResultSet rs = ps.executeQuery(start);
           
           while(rs.next()){				
				 
                  space = "<tr><td> <h4>Event Name </h4> </td><td><h4>";
                  space += rs.getString("event_name") +"</h4></td></tr><tr><td>Start date</td><td>";
                  space += rs.getString("start_date") +"</td></tr><tr><td>Start time</td><td>";
                  space += rs.getString("start_time") +"</td></tr><tr><td>Time duration</td><td>";
                  space += rs.getString("duration") +" minutes</td></tr><tr><td>End date</td><td>";
                  space += rs.getString("end_date") +"</td></tr><tr><td>venue</td><td>";
                  space += rs.getString("venue_name") +"</td></tr><tr><td>Location</td><td>";
                  space += rs.getString("location") +"</td></tr><tr><td>club</td><td>";
                  space += rs.getString("club_name") +"</td></tr><tr><td>Manager</td><td>";
                  manage = rs.getString("manager_roll_no");
                  convener = rs.getString("convener_roll_no"); 
                  
                 
             }
             
             
             String manager = "SELECT student_name, email_id, phone_no FROM student where roll_no ='" +  manage + "';" ;
             rs = ps.executeQuery(manager);
             while(rs.next()){	
				   space += rs.getString("student_name") +"<br>" + rs.getString("email_id") + "<br>" +rs.getString("phone_no");
				   space += "</td></tr><tr><td>Convener</td><td>";
			 }
			 
			
                
            manager = "SELECT student_name, email_id, phone_no FROM student where roll_no ='" +  convener +"';";
            rs = ps.executeQuery(manager);
            while(rs.next()){	
				space += rs.getString("student_name") +"<br>" + rs.getString("email_id") + "<br>" +rs.getString("phone_no");
			}
			
			space += "</td></tr>";
			rs.close();
           
         }
         catch (SQLException sqle) {
                       System.out.println(sqle);
                       System.exit(1);
         } 
          
         space = "<table class=\"table table-striped\">" + space + "</table>" ;
            
          return space;
	}
	
	
	//************< HOME 14> ***************** Hostel Position **********************************************
	
	
	
	public String hostelPosition()
	{
		
		String space="<tr><td><h4>Event Name </h4></td><td><h4>Winner</h4></td><td><h4>First Runnerup</h4></td><td><h4>Second Runnerup</h4></td></tr>";
        String start = "SELECT event_name, winner, first_runner_up, second_runner_up, first_point, second_point, third_point FROM hostel_position;";
        try
        {
            ps=conn.createStatement();		 
            ResultSet rs = ps.executeQuery(start);
       
            
             while(rs.next()){				
				 
                  space += "<tr><td>";
                  space += rs.getString("event_name") +"<br>(points)</td><td>H";
                  space += rs.getString("winner") +"<br>"+  rs.getString("first_point") +" </td><td>H";
                  space += rs.getString("first_runner_up") +"<br>"+  rs.getString("second_point") +" </td><td>H";
                  space += rs.getString("second_runner_up") +"<br>"+  rs.getString("third_point") +" </td></tr>";
             }
             
             
			rs.close();
           
         }
         catch (SQLException sqle) {
                       System.out.println(sqle);
                       System.exit(1);
         } 
          
         space = "<table class=\"table table-striped\">" + space + "</table>" ;
            
          return space; 
	}
		
	
	//************< HOME 15> ***************** Venue Details **********************************************
	
	
	public String loadVenue()
    {
		
        String space="";
        String start = "select * from venue;";
        try
        {
            ps=conn.createStatement();		 
            ResultSet rs = ps.executeQuery(start);
           
           
            
             while(rs.next()){				
                  space += rs.getString("venue_name") +",";
                 // System.out.println(rs.getString("event_name") +" ------ "+rs.getString("start_date"));
             }
             rs.close();
           
         }
         catch (SQLException sqle) {
                       System.out.println(sqle);
                       System.exit(1);
         } 
            
          return space; 
	}
	
	
	//--------venue details
	
	public String venueDetails(String name)
	{
		System.out.println("name : " + name);
		name = "'" + name + "'";
		String space="No Event selected";
        String start = "SELECT * FROM (	(SELECT venue_name, location, venue.phone_no AS ph1 FROM venue) AS A	NATURAL JOIN (SELECT venue_name, staff_name, staff.phone_no AS ph2, email_id FROM staff NATURAL JOIN manages) AS B) WHERE venue_name= " + name + ";";
        String manage="", convener="";
        try
        {
            ps=conn.createStatement();		 
            ResultSet rs = ps.executeQuery(start);
           
           
            
             while(rs.next()){				
				 
                  space = "<tr><td>Location </td><td>";
                  space += rs.getString("location") +"</td></tr><tr><td>Phone no</td><td>";
                  space += rs.getString("ph1") +"</td></tr><tr><td>Staff Details </td><td>";
                  space += rs.getString("staff_name") +"<br>";
                  space += rs.getString("email_id") +"<br>";
                  space += rs.getString("ph2") +"</td></tr>";
             }
             
             
			rs.close();
           
         }
         catch (SQLException sqle) {
                       System.out.println(sqle);
                       System.exit(1);
         } 
          
         space = "<table class=\"table table-striped\">" + space + "</table>" ;
            
          return space; 
	
		
	}
	
	
//************< HOME 16> ***************** Show Council **********************************************
		
	public String showCouncil()
	{
		String space="<tr><td><h4>Insti Secy</h4></td><td></td></tr>";
        String start = "SELECT * FROM ( 	select * from ((SELECT sports_activity_name AS activity_name, sports_institute_secretary_roll_no AS roll_no FROM sports_activity ) AS A 	NATURAL JOIN 	(SELECT roll_no, student_name, email_id, phone_no FROM student WHERE roll_no IN (SELECT sports_institute_secretary_roll_no FROM sports_activity)) AS C) AS rere 	UNION 	select * from ((SELECT cultural_activity_name AS activity_name, cultural_institute_secretary_roll_no AS roll_no FROM cultural_activity) AS Cwew 	NATURAL JOIN 	(SELECT roll_no, student_name, email_id, phone_no FROM student WHERE roll_no IN (SELECT cultural_institute_secretary_roll_no FROM cultural_activity)) AS D ) AS ytyt UNION 	select * from ((SELECT technical_activity_name AS activity_name, technical_institute_secretary_roll_no AS roll_no FROM technical_activity) AS E NATURAL JOIN 	(SELECT roll_no, student_name, email_id, phone_no FROM student WHERE roll_no IN (SELECT technical_institute_secretary_roll_no FROM technical_activity)) AS fdfds) AS Fop)As gfdgkl; ";
        
        
        String manage="", convener="";
        try
        {
            ps=conn.createStatement();		 
            ResultSet rs = ps.executeQuery(start);
           
             while(rs.next()){				
				 
                  space += "<tr><td>" + rs.getString("activity_name")+" </td><td>";
                  space += rs.getString("student_name") +"<br>";
                  space += rs.getString("email_id") +"<br>";
                  space += rs.getString("phone_no") +"</td></tr>";
             }
             
           manage=" SELECT student_name, phone_no, email_id FROM student where roll_no= manager_roll_no IN ( SELECT club_name, manager_roll_no, convener_roll_no FROM club) as fog;";
             
			rs.close();
           
         }
         catch (SQLException sqle) {
                       System.out.println(sqle);
                       System.exit(1);
         } 
          
         space = "<table class=\"table table-striped\">" + space + "</table>" ;
            
          return space; 
	
		
	}
	
	
	
//************< HOME 17> ***************** Show CluBs **********************************************
		
	public String showClub()
	{
		String space="<tr><td><h4>Clubs</h4></td><td><h4>Manager</h4></td><td><h4>Convener</h4></td></tr>";
        String start = "SELECT club_name, manager_roll_no, convener_roll_no FROM club;";
        String[ ][ ] clubs = new String[100][3];
        String manage="", convener="";
        int i=0,j=0;
        try
        {
            ps=conn.createStatement();		 
            ResultSet rs = ps.executeQuery(start);
           
             while(rs.next()){				
				 
                  clubs[i][0]= "<tr><td>" + rs.getString("club_name") + "</td><td>";
                  clubs[i][1]= rs.getString("manager_roll_no");
                  clubs[i][2]= rs.getString("convener_roll_no");
                  i++;
             }
             
          for(j=0;j<i;j++)
          {
			  start="SELECT student_name, phone_no, email_id FROM student WHERE roll_no = '" + clubs[j][1] + "';";
			  ps=conn.createStatement();		 
              rs = ps.executeQuery(start);
           
             while(rs.next()){				
				 
                  clubs[j][1]= rs.getString("student_name") + "<br>" + rs.getString("email_id") + "<br>"+ rs.getString("phone_no") + "</td><td>";
                  
             }
			  
		  }
		  
		  for(j=0;j<i;j++)
          {
			  start="SELECT student_name, phone_no, email_id FROM student WHERE roll_no = '" + clubs[j][2] + "';";
			  ps=conn.createStatement();		 
              rs = ps.executeQuery(start);
           
             while(rs.next()){				
				 
                  clubs[j][2]= rs.getString("student_name") + "<br>" + rs.getString("email_id") + "<br>"+ rs.getString("phone_no") + "</td></tr>";
                  
             }
			  
		  }
		  
          for(j=0;j<i;j++)
          {
			  space +=clubs[j][0]+ clubs[j][1]+clubs[j][2]; 
		  }
          
             
			rs.close();
           
         }
         catch (SQLException sqle) {
                       System.out.println(sqle);
                       System.exit(1);
         } 
          
         space = "<table class=\"table table-striped\">" + space + "</table>" ;
            
          return space; 
	
		
	}	

//#########################################################################################################	
    public void show()
    {
		System.out.println("exist ..232.........");
	}
}
    
