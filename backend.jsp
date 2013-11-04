<%@ page import="sadbms.run" %>

<%
	
	run  node= new run();
	
	String type=request.getParameter("type");
	String name=request.getParameter("name");
	
	
	int flag=Integer.parseInt(type);
	System.out.println("type : " + type);
	System.out.println("flag : " + flag);
	String t="not edited";
	
	switch (flag) 
	{
		case 11: 
		t= node.EventByName(name);
		break;
		/*
		case 12: 
		System.out.println("calling........"+ name);
		t= node.resultOfEvent(name);
		System.out.println("finshed........"+ t);
		break;
		*/
		
		
		
		
		
		default: t="Welcome to SAD-BMS";
		break;
	}
	
%>


<%=t%>



