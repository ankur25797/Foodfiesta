 $(document).ready(
 function(){
	$('#state').append($('<option>').text("Select State"));
	$('#city').append($('<option>').text("Select City"));
	$.getJSON("StateJSON",{ajax:true},function(data){
   
	 $.each(data,function(i,item){
	 $('#state').append($('<option>').val(item.STATEID).text(item.STATENAME));
  });	 
	 
 });	
 
 $('#state').change(function(){
 $.getJSON('CityJSON',{ajax:true,stateid:$('#state').val()},function(data){
	 $('#city').empty();
	 $('#city').append($('<option>').text("Select City"));
 $.each(data,function(i,item){
	 $('#city').append($('<option>').val(item.CITYID).text(item.CITYNAME));
  });	 
	 
	 
 });	 
	 
 });
 /*$('#start').click(function(){
		$.getJSON('VendorRegSubmit',{ajax:true,name:$('#name').val(),email:$('#email').val(),mobile:$('#mob').val(),pwd:$('#password').val(),add:$('#add').val(),state:$('#state').val(),city:$('#city').val(),idproof:$('#proof').val()},function(data){
			 
			 
			if(data.result="Record Submitted...")
				{
				alert("Record Submitted");
				}
			else
				{$('#mess').html('<font color=white><i>Invalid Emailid/Mobileno/Password...</i></font>');
				}
			}); 
		
			 

	});
	*/
 $('#loginbtn').click(function(){
		$.getJSON('CheckVendorLogin',{ajax:true,email:$('#email').val(),pwd:$('#password').val()},function(data){
			 
			 
			if(data.res=0)
				{$('#message').html('<font color=white><i>Invalid Emailid/Mobileno/Password...</i></font>');
				
				}
			
			});
 });
 
});
 
 
 
 
 
 
 
 