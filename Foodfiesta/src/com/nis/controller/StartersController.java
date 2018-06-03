package com.nis.controller;

import java.sql.Connection;
import java.sql.ResultSet;

import com.nis.model.Starters;

public class StartersController {
	public static boolean AddRecord(Starters S)
	{
	try
	{ 
	Connection cn=DBHelper.openConnection();

	String query="insert into starters(vid,dish,cost)values('"+S.getVid()+"','"+S.getDish()+"','"+S.getCost()+"')";	
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
	public static ResultSet DisplayAll()
	{try{
		Connection cn=DBHelper.openConnection();
		String query="select dish,cost from starters";
		ResultSet rs=DBHelper.executeQuery(query, cn);
		return(rs);
		
		
	}catch(Exception e){
		System.out.println("AddNewRecord "+e);
		return null;
	}}	
}
