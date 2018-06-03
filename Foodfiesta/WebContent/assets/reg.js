$(document).ready(
 function(){	 
	 
$('#login').click(function(){
	
	$.getJSON('CheckClientLogin',{ajax:true,cid:$('#cid').val(),pwd:$('#ccpwd').val()},function(data){
		 
	 
	if(data.res=='1')
		{
		window.location.href='ClientHome.jsp';
		}
	else
		{$('#lmsg').html('<font color=white><i>Invalid Emailid/Mobileno/Password...</i></font>');
		}
	}); });	 

$('#signup').click(function(){
	
	$.getJSON('ClientRegSubmit',{ajax:true,name:$('#name').val(),email:$('#email').val(),mobile:$('#mob').val(),pwd:$('#password').val(),dob:$('#dob').val(),address:$('#add').val()},function(data){
		 
	 
	if(data.result="Record Submitted...")
		{
		alert("Record Submitted");
		}
	else
		{$('#lmsg2').html('<font color=white><i>Invalid Emailid/Mobileno/Password...</i></font>');
		}
	}); });	 




$('#adminsignup').click(function(){
	
	$.getJSON('AdminRegSubmit',{ajax:true,name:$('#adminname').val(),email:$('#email').val(),password:$('#password').val(),dob:$('#dob').val(),address:$('#address').val()},function(data){
		 
	 
	if(data.result="Record Submitted...")
		{
		alert("Record Submitted");
		}
	else
		{$('#lmsg2').html('<font color=white><i>Invalid Emailid/Mobileno/Password...</i></font>');
		}
	}); });	 





$('#logout').click(function(){
	
	
		window.location.href='try.jsp';
		 

 });
});