package com.nis.view;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
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
 * Servlet implementation class VendorRegSubmit
 */
@WebServlet("/VendorRegSubmit")
@MultipartConfig(fileSizeThreshold=1024*1024*2,//2MB
maxFileSize=1024*1024*10,//10MB
maxRequestSize=1024*1024*50)

public class VendorRegSubmit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VendorRegSubmit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		 
		Vendor V=new Vendor();	
		V.setEmailid(request.getParameter("email"));
		V.setMobno(request.getParameter("mob"));	
		V.setName(request.getParameter("name"));	
		V.setAddress(request.getParameter("address"))	;
		//V.setIdproof(request.getParameter("idproof"));
		V.setPass(request.getParameter("password"));	
		V.setCity(request.getParameter("city"));
		V.setState(request.getParameter("state"));
		
		String path="D:/assignmnts/javaprog/FoodFiesta/WebContent/pictures";
	      Part part=request.getPart("idproof");
	      FileUpload F=new FileUpload(part,path);
	      V.setIdproof(F.filename);
	    
		boolean st=VendorController.AddNewRecord(V);
		//JSONObject obj=new JSONObject();
	
		if(st)
		 {
			
			response.sendRedirect("vendor2.jsp");
		 }
		 else
		 {out.println("RETRY..");}
		 //out.println(obj);
		}
		









			
			
			
			
			}

		
