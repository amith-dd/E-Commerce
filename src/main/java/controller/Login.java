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

@WebServlet("/login")
public class Login extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String email = req.getParameter("email");
		String pass = req.getParameter("password");
		
		AdminDao dao = new AdminDao();
		
		try {
			Admin admin = dao.findAdminByEmail(email);
			if(admin!=null) {
				if(pass.equals(admin.getAdminPassword())) {
					HttpSession session = req.getSession();
					session.setAttribute("admin", admin);
					req.setAttribute("products", dao.getAllProducts(admin.getAdminId()));
					req.getRequestDispatcher("home.jsp").forward(req, resp);
				}else {
					req.setAttribute("message", "incorrect Password");
					req.getRequestDispatcher("login.jsp").forward(req, resp);
				}
			}else {
				req.setAttribute("message", "invalid Email");
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
