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

import com.nis.controller.ClientController;
import com.nis.model.Client;

/**
 * Servlet implementation class ClientRegSubmit
 */
@WebServlet("/ClientRegSubmit")
public class ClientRegSubmit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClientRegSubmit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	PrintWriter out=response.getWriter();
	 
Client C=new Client();	
C.setEmail(request.getParameter("email"));
C.setMobno(request.getParameter("mobile"));	
C.setName(request.getParameter("name"));	
C.setDob(request.getParameter("dob"));	

C.setAddress(request.getParameter("add"))	;

C.setPass(request.getParameter("pwd"));	
 
boolean st=ClientController.AddRecord(C);
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
