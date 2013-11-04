package sadbms;

import java.io.*;
import java.util.*;
import java.sql.*;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
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
    
    //************< HOME > *****************search upcoming event by name **********************************************
    
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
	
	 //************< HOME > ***************** View result of events **********************************************
	
	
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
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
    
    public void show()
    {
		System.out.println("exist ..232.........");
	}
}
    
