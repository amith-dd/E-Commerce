package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AdminDao;
import dto.Admin;

@WebServlet("/delete")
public class Delete extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int id =Integer.parseInt( req.getParameter("id"));
		AdminDao dao = new AdminDao();
		
		try {
			
			HttpSession session  = req.getSession();
			Admin admin = (Admin)session.getAttribute("admin");
			if(admin!=null) {
				dao.deleteProduct(id);
				req.getRequestDispatcher("home.jsp").forward(req, resp);
			}else {
				req.setAttribute("message", "unauthorized");
				req.getRequestDispatcher("login.jsp").forward(req, resp);
			}
			
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
	
}
