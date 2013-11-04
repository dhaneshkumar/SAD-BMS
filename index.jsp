<%-- 
    Document   : new
    Created on : Aug 29, 2013, 3:00:00 PM
    Author     : dhanesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<% String text = "some text";
response.getWriter().write(text); 
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>SO question</title>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
</script>
        
        <script>
          function test()
          {
			  var v1 = document.getElementById("var1").value;
			 
       
				$.get( "backend.jsp", { name: v1, time: "1" }, function(result){
							$("#result").html(result);
				});
		}
			  
			
		 
            
       
           
        </script>
    </head>
    <body>
    
    <input type="hidden" id="var1" name="var1" value="sas" /> 
     <button id="somebutton" onclick="test()">press here</button>
        <div id="somediv">change it dude on click</div>
        
        
        
    </body>
</html>

