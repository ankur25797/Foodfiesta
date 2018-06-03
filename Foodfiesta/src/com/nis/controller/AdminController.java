package com.nis.controller;

import java.sql.Connection;



import java.sql.ResultSet;

import com.nis.model.AdminModel;

public class AdminController {
public static boolean AddRecord(AdminModel A)
{
try
{ 
Connection cn=DBHelper.openConnection();

String query="insert into admin(adminname,picture,password,dob,email,address)values('"+A.getAdminName()+"','"+A.getPicture()+"','"+A.getPassword()+"','"+A.getDob()+"','"+A.getEmail()+"','"+A.getAddress()+"')";	
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




public static AdminModel checkPassword(String email,String password)
{
try{
	Connection cn=DBHelper.openConnection();
	String query="select * from admin where email='"+email+"' and password='"+password+"'";
	
	ResultSet rs=DBHelper.executeQuery(query, cn);
	System.out.println(query);
	if(rs.next())
	{AdminModel A=new AdminModel();
	A.setAdminName(rs.getString(2));
	A.setPicture(rs.getString(3));
	A.setPassword(rs.getString(4));
	A.setDob(rs.getString(5));

	A.setEmail(rs.getString(6));
	A.setAddress(rs.getString(7));

	
	return(A);
	}
	return null;
		
	

}catch(Exception e)
{
return(null);	
}
}

public static boolean EditRecord(AdminModel A)
{
try{
	Connection cn=DBHelper.openConnection();
	String query="update admin set adminname='"+A.getAdminName()+"',email='"+A.getEmail()+"',address='"+A.getAddress()+"', dob='"+A.getDob()+"'  where email='"+A.getEmail()+"'"; 
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
	String query="update admin set password="+password+" where email="+email;
	System.out.println(query);		
	
	boolean st=DBHelper.executeUpdate(query, cn);
	return(st);
	
	
}catch(Exception e){
	System.out.println("AddNewRecord "+e);
	return false;
}
	}






public static boolean DeleteRecord(String adminid)
{
	try
	{
		Connection cn = DBHelper.openConnection();
		String query = "delete from admin where adminid='"+adminid+"'";
		boolean st = DBHelper.executeUpdate(query, cn);
		return (st);
	}
	catch(Exception e)
	{
		System.out.println("DeleteRecord"+e);
		return false;
	}
}




public static boolean Uploadpicture(AdminModel A)
{
	try
	{
		Connection cn=DBHelper.openConnection();
		String query="update admin set picture='"+A.getPicture()+"'";  
		System.out.println(query);
		boolean st=DBHelper.executeUpdate(query, cn);
		return(st);
	}
	catch(Exception e)
	{
		System.out.println("AddNewRecord "+e);
		return false;
	}
}






	
}
