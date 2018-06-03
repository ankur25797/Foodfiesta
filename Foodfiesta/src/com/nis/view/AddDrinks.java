package com.nis.view;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nis.controller.DrinksController;
import com.nis.model.Drinks;

/**
 * Servlet implementation class AddDrinks
 */
@WebServlet("/AddDrinks")
public class AddDrinks extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddDrinks() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		PrintWriter out=response.getWriter();

		Drinks Dr=new Drinks();	
		Dr.setVid(request.getParameter("vid"));
		Dr.setDish(request.getParameter("dri"));
		Dr.setCost(request.getParameter("drc"));
		 
		boolean st=DrinksController.AddRecord(Dr);
		
		if(st)
		 {//obj.put("result", "Record Submitted...");}
			out.println("<script type=\"text/javascript\">");
		       out.println("alert('Record Submitted');");
		       out.println("</script>");		 }
		 else
		 {
			 out.println("<script type=\"text/javascript\">");
		       out.println("alert('Try again');");
		       out.println("</script>");		 }
	}

}
