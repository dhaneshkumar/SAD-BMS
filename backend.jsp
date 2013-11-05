<%@ page import="sadbms.run" %>

<%
	
	run  node= new run();
	
	String type=request.getParameter("type");
	String name=request.getParameter("name");
	
	
	int flag=Integer.parseInt(type);
	//System.out.println("type : " + type);
	//System.out.println("flag : " + flag);
	String t="not edited";
	
	switch (flag) 
	{
		case 11: 
		System.out.println("calling........ 11");
		t= node.EventByName(name);
		break;
		
		case 12: 
		t= node.resultOfEvent(name);
		break;
		
		case 13: 
		t= node.showEventByGenre(name);
		break;
		
		case 14: 
		t= node.hostelPosition();
		break;
		
		case 15: 
		t= node.venueDetails(name);
		break;
		
		case 16: 
		t= node.showCouncil();
		break;
		
		case 17: 
		t= node.showClub();
		break;
		
		default: t="Welcome to SAD-BMS";
		break;
	}
	
%>


<%=t%>



