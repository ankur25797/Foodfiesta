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

import com.nis.controller.AdminController;
import com.nis.model.AdminModel;

/**
 * Servlet implementation class CheckClientLogin
 */
@WebServlet("/CheckAdminLogin")
public class CheckAdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckAdminLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		AdminModel A=AdminController.checkPassword(request.getParameter("email"),request.getParameter("password"));
		
		if(A!=null)
		{
			HttpSession ses=request.getSession();
			ses.putValue("SADMIN", A);
			ses.putValue("SLTIME", new java.util.Date().toString());
			   response.sendRedirect("adminuser.jsp");

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


