package com.nis.controller;

import java.sql.Connection;
import java.sql.ResultSet;

import com.nis.model.Snacks;

public class SnacksController {
	public static boolean AddRecord(Snacks S)
	{
	try
	{ 
	Connection cn=DBHelper.openConnection();

	String query="insert into snacks(vid,dish,cost)values('"+S.getVid()+"','"+S.getDish()+"','"+S.getCost()+"')";	
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
		String query="select dish,cost from snacks";
		ResultSet rs=DBHelper.executeQuery(query, cn);
		return(rs);
		
		
	}catch(Exception e){
		System.out.println("AddNewRecord "+e);
		return null;
	}}	
}
