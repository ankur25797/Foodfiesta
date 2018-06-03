package com.nis.controller;

import java.sql.Connection;
import java.sql.ResultSet;

import com.nis.model.MainCourse;

public class MainCourseController {
	public static boolean AddRecord(MainCourse M)
	{
	try
	{ 
	Connection cn=DBHelper.openConnection();

	String query="insert into maincourse(vid,dish,cost)values('"+M.getVid()+"','"+M.getDish()+"','"+M.getCost()+"')";	
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
		String query="select dish,cost from maincourse";
		ResultSet rs=DBHelper.executeQuery(query, cn);
		return(rs);
		
		
	}catch(Exception e){
		System.out.println("AddNewRecord "+e);
		return null;
	}}	
}
