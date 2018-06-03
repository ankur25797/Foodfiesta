package com.nis.controller;

import java.sql.Connection;
import java.sql.ResultSet;

import com.nis.model.Drinks;


public class DrinksController {
	public static boolean AddRecord(Drinks D)
	{
	try
	{ 
	Connection cn=DBHelper.openConnection();

	String query="insert into drinks(vid,dish,cost)values('"+D.getVid()+"','"+D.getDish()+"','"+D.getCost()+"')";	
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
		String query="select dish,cost from drinks";
		ResultSet rs=DBHelper.executeQuery(query, cn);
		return(rs);
		
		
	}catch(Exception e){
		System.out.println("AddNewRecord "+e);
		return null;
	}}	
}
