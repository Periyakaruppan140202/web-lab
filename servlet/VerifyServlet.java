package com.verify;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class VerifyServlet extends HttpServlet{
	
	private String email;
	private String password;
	public void init() throws ServletException{
		this.email="Rakesh@example.com";
		this.password="Rakesh33";
	}
	
	public void doGet(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{
	      //no get request	
	}
	
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{
	      //no get request	
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		res.setContentType("text/html");
		res.setCharacterEncoding("UTF-8");
		PrintWriter out=res.getWriter();
		if(this.email.equals(email)&&this.password.equals(password)) {
			out.println("Successfully logged in");
		}
		else {
		     out.println("INVALID CREDENTIALS")	;
		}
	}
}
