package com.nis.controller;

import java.sql.Connection;
import java.sql.ResultSet;


import com.nis.model.Vendor;



public class VendorController {
	public static boolean AddNewRecord(Vendor V)
	{try{
		Connection cn=DBHelper.openConnection();
		String query="insert into vendor(name,address,state,city,mobno,emailid,idproof,password) values('"+V.getName()+"','"+V.getAddress()+"','"+V.getState()+"','"+V.getCity()+"','"+V.getMobno()+"','"+V.getEmailid()+"','"+V.getIdproof()+"','"+V.getPass()+"')";
		boolean st=DBHelper.executeUpdate(query, cn);
		System.out.println(query);
		return(st);


	}catch(Exception e){
		System.out.println("AddNewRecord "+e);
		return false;
	}
	}

	public static Vendor checkPassword(String email,String password)
	{
		try{
			Connection cn=DBHelper.openConnection();
			String query="select * from vendor where emailid='"+email+"' and password='"+password+"'";

			ResultSet rs=DBHelper.executeQuery(query, cn);
			System.out.println(query);
			if(rs.next())
			{Vendor V=new Vendor();
			V.setVid(rs.getString(1));
			V.setName(rs.getString(2));
			V.setAddress(rs.getString(3));
			V.setState(rs.getString(4));
			V.setCity(rs.getString(5));
			V.setMobno(rs.getString(6));
			V.setEmailid(rs.getString(7));
			V.setIdproof(rs.getString(8));
			V.setPass(rs.getString(9));

			return(V);
			}
			return null;



		}catch(Exception e)
		{
			return(null);	
		}
	}

	public static boolean EditRecord(Vendor V)
	{
		try{
			Connection cn=DBHelper.openConnection();
			String query="update vendor set vid='"+V.getVid()+"' ,name='"+V.getName()+"',address='"+V.getAddress()+"',state='"+V.getState()+"',city='"+V.getCity()+"',mobno='"+V.getMobno()+"',emailid='"+V.getEmailid()+"' where vid="+V.getVid(); 
			System.out.println(query);
			boolean st=DBHelper.executeUpdate(query, cn);
			return(st);


		}catch(Exception e){
			System.out.println("AddNewRecord "+e);
			return false;
		}
	}
	
	
	
	
	
	
	
	public static ResultSet DisplayAll()
	{
		try
		{
			Connection cn=DBHelper.openConnection();
			String query="select v.vid,v.name,v.address,v.state,v.city,v.mobno  from vendor";		
			ResultSet rs=DBHelper.executeQuery(query, cn);
			System.out.println(query);
			return(rs);
		}
		catch(Exception e)
		{
			System.out.println("Display All "+e);
			return null;
		}
    }


}
