package com.nis.view;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.json.JSONException;
import org.json.JSONObject;
import org.softech.FileUpload;

import com.nis.controller.VendorController;
import com.nis.model.Vendor;

/**
 * Servlet implementation class VendorEdit
 */
@WebServlet("/VendorEdit")
public class VendorEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VendorEdit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		//out.println("<html>");
		 // String btn=request.getParameter("btn");
		  //if(btn.equals("Update"))
		  //{
			//  Agency A=new Agency();
		Vendor V=new Vendor();
			
		
		V.setVid(request.getParameter("vid"));
		  V.setName(request.getParameter("name"));
	      V.setAddress(request.getParameter("address"));
	      V.setState(request.getParameter("state"));
	      V.setCity(request.getParameter("city"));
	     
	      V.setMobno(request.getParameter("mobno"));
	   
	      V.setEmailid(request.getParameter("email"));
	        
	      boolean st=VendorController.EditRecord(V);
	    if(st)
	    {
	    	 out.println("Successful");
	    }
	    else
		{  
	    	out.println("Try again");
		}
	
	}

}
