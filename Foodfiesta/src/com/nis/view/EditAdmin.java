package com.nis.view;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.softech.FileUpload;

import com.nis.controller.AdminController;
import com.nis.model.AdminModel;


/**
 * Servlet implementation class VehicleFinalEditDelete
 */
@WebServlet("/EditAdmin")
@MultipartConfig(fileSizeThreshold=1024*1024*2,//2MB
maxFileSize=1024*1024*10,//10MB
maxRequestSize=1024*1024*50)
public class EditAdmin extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditAdmin() 
    {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub

		
			AdminModel A=new AdminModel();
			A.setAdminName(request.getParameter("adminname"));
			A.setEmail(request.getParameter("email"));
			A.setPassword(request.getParameter("password"));
			A.setAddress(request.getParameter("address"));
		
			boolean st=AdminController.EditRecord(A);
			
			
			
		
	/*	else if(btn.equals("Delete"))
		{
			boolean st=AdminController.DeleteRecord(request.getParameter("email"));  

		}
		else if(btn.equals("Upload"))
		{ 
			String path="C:/Users/Administrator/workspace/FoodFiesta/WebContent/assets/images";
			Part part=request.getPart("picture");
			FileUpload F=new FileUpload(part,path);
			AdminModel A=new AdminModel();
			A.setAdminName(request.getParameter("adminname"));
			A.setPicture(F.filename);
			boolean st=AdminController.Uploadpicture(A);	  

		}*/
			if(st)
			{
		response.sendRedirect("user.jsp");
			}
			else
			{
				System.out.println("Unsuccessful");
			}
	}

}
