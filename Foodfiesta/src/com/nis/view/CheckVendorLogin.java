package com.nis.view;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;

import com.nis.controller.VendorController;
import com.nis.model.Vendor;

/**
 * Servlet implementation class CheckVendorLogin
 */
@WebServlet("/CheckVendorLogin")
public class CheckVendorLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckVendorLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		Vendor V=VendorController.checkPassword(request.getParameter("email"),request.getParameter("password"));
		
		if(V!=null)
		{
			
			HttpSession ses=request.getSession();
			ses.putValue("SVENDOR", V);
			ses.putValue("SLTIME", new java.util.Date().toString());
            response.sendRedirect("user.jsp");
		}
		else
		{  JSONObject obj=new JSONObject();
	    try {
			obj.put("res", "0");
			out.println(obj);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
	}
	}


