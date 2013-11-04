package sadbms;

import java.io.*;
import java.util.*;
import java.sql.*;


public class connect
{	
	public static boolean tester=false; 
    public static Connection conn = null;
    public static Statement ps=null;
    
    public connect()
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
    
   
		
	
	
	
	public String EventByName(String movieName){
		String t1="";
       
        String start = "SELECT * FROM movie WHERE  movieName= '" + movieName +"';"; 
        try
        {
            ps=conn.createStatement();		 
            ResultSet rs = ps.executeQuery(start);
            String space=null;
            String rol=null;
            String dir=null;
             
             if(rs.next()){				
                  space = rs.getString("year_of_release");
                  rol=rs.getString("producer");
                  dir=rs.getString("director");
                  t1=movieName+","+space+","+rol+","+dir+",";
             }
             
             
            start = "SELECT * FROM castings WHERE  movieName= '" + movieName +"';";
            ps=conn.createStatement();		 
            rs = ps.executeQuery(start);
            space ="";
            while(rs.next()){				
                  space += rs.getString("actor")+":";
                  
             }
            t1 +=space;
           rs.close();
        }
         catch (SQLException sqle) {
                       System.out.println(sqle);
                       System.exit(1);
         } 
                    
          return t1;

	}
}
