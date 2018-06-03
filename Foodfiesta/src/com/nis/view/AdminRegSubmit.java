package com.nis.view;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import com.nis.controller.AdminController;
import com.nis.model.AdminModel;

/**
 * Servlet implementation class AdminRegSubmit
 */
@WebServlet("/AdminRegSubmit")
public class AdminRegSubmit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminRegSubmit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
			PrintWriter out=response.getWriter();
			 
		AdminModel A=new AdminModel();
		A.setAdminName(request.getParameter("adminname"));
		A.setPicture(request.getParameter("picture"));
		A.setPassword(request.getParameter("password"));	
		A.setDob(request.getParameter("dob"));	


		A.setEmail(request.getParameter("email"));

		A.setAddress(request.getParameter("address"))	;

		 
		boolean st=AdminController.AddRecord(A);
		JSONObject obj=new JSONObject();
		try{
		if(st)
		 {obj.put("result", "Record Submitted...");}
		 else
		 {obj.put("result", "Fail to Submit Record...");}
		 out.println(obj);
		}catch(Exception e)
		{try {
			obj.put("result", e.getMessage());
		} catch (JSONException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
			out.println(e);
			}










			
			
			
			
			}

}	
