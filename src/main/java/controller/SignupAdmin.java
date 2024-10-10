package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminDao;
import dto.Admin;

@WebServlet("/signup")
public class SignupAdmin extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		long contact = Long.parseLong(req.getParameter("contact"));
		String pass = req.getParameter("password");
		
		Admin admin = new Admin(id, name, email, contact, pass);
		
		AdminDao dao = new AdminDao();
		
		try {
			dao.saveAdmin(admin);
			
			resp.sendRedirect("login.html");
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		
		
	}
	
}
