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
import dto.Product;

@WebServlet("/addproduct")
public class AddProduct extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		String brand = req.getParameter("brand");
		String category = req.getParameter("category");
		double price = Double.parseDouble(req.getParameter("price"));
		double discount = Double.parseDouble(req.getParameter("discount"));
		
		HttpSession session = req.getSession();
		Admin sessionadmin = (Admin)session.getAttribute("admin");
		
		Product product = new Product(id, name, brand, category, price, discount, sessionadmin.getAdminId());
		
		
		AdminDao dao = new AdminDao();
		
		try {
			int adminid = sessionadmin.getAdminId();
			
			dao.saveProduct(product);
			req.setAttribute("products", dao.getAllProducts(adminid));
			req.getRequestDispatcher("home.jsp").forward(req, resp);
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
	
}
