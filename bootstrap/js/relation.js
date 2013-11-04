function callbackend(var1)
{			  
	 var elem = document.getElementById(var1),selectedNode = elem.options[elem.selectedIndex];
	 var v1 = selectedNode.value;
	 document.getElementById("resultHeader").innerHTML=v1;
       
	$.get( "backend.jsp", { type: var1, name: v1 }, function(result){
		$("#putResult").html(result);
	});
}

