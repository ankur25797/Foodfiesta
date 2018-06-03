package com.nis.controller;

import java.sql.Connection;
import java.sql.ResultSet;



import com.nis.model.Client;

public class ClientController {
public static boolean AddRecord(Client C)
{
try
{ 
Connection cn=DBHelper.openConnection();

String query="insert into client(email,mobile,name,address,dob,password)values('"+C.getEmail()+"','"+C.getMobno()+"','"+C.getName()+"','"+C.getAddress()+"','"+C.getDob()+"','"+C.getPass()+"')";	
System.out.println(query);	
boolean st=DBHelper.executeUpdate(query, cn);
return (st);
}
catch(Exception e)
{
	System.out.println("Error in client" +e.getMessage());
}
return false;
}
public static Client checkPassword(String cid,String pwd)
{
try{
	Connection cn=DBHelper.openConnection();
	String query="select * from client where email='"+cid+"' and password='"+pwd+"'";
	
	ResultSet rs=DBHelper.executeQuery(query, cn);
	System.out.println(query);
	if(rs.next())
	{Client C=new Client();
	C.setEmail(rs.getString(1));
	C.setMobno(rs.getString(2));
	C.setName(rs.getString(3));
	C.setAddress(rs.getString(4));
	C.setDob(rs.getString(5));

	
	return(C);
	}
	return null;
		
	

}catch(Exception e)
{
return(null);	
}
}

public static boolean EditRecord(Client C)
{
try{
	Connection cn=DBHelper.openConnection();
	String query="update client set name='"+C.getName()+"',email='"+C.getEmail()+"',address='"+C.getAddress()+"',mobile='"+C.getMobno()+"', dob='"+C.getDob()+"' where email='"+C.getEmail()+"'or mobile='"+C.getMobno(); 
	System.out.println(query);
	boolean st=DBHelper.executeUpdate(query, cn);
	return(st);
	
	
}catch(Exception e){
	System.out.println("AddNewRecord "+e);
	return false;
}
}
public static boolean ChangePassword(String email,String password)
{try{
	Connection cn=DBHelper.openConnection();
	String query="update client set password="+password+" where email="+email;
	System.out.println(query);		
	
	boolean st=DBHelper.executeUpdate(query, cn);
	return(st);
	
	
}catch(Exception e){
	System.out.println("AddNewRecord "+e);
	return false;
}
	}

}