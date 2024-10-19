package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.Admin;
import dto.Category;
import dto.Product;

public class AdminDao {

	public Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		return DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "root");
	}

	public int saveAdmin(Admin admin) throws ClassNotFoundException, SQLException {

		Connection connection = getConnection();
		PreparedStatement pStatement = connection.prepareStatement("insert into admin values(?,?,?,?,?)");
		pStatement.setInt(1, admin.getAdminId());
		pStatement.setString(2, admin.getAdminName());
		pStatement.setString(3, admin.getAdminEmail());
		pStatement.setLong(4, admin.getAdminContact());
		pStatement.setString(5, admin.getAdminPassword());

		return pStatement.executeUpdate();
	}

	public Admin findAdminByEmail(String email) throws ClassNotFoundException, SQLException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("select * from admin where adminemail=?");
		preparedStatement.setString(1, email);
		ResultSet rs = preparedStatement.executeQuery();
		if (rs.next()) {
			return new Admin(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getLong(4), rs.getString(5));
		}return  null;

	}

	public int saveProduct(Product product) throws ClassNotFoundException, SQLException {
		Connection connection = getConnection();
		PreparedStatement pst = connection.prepareStatement("insert into product values (?,?,?,?,?,?,?)");
		pst.setInt(1, product.getProductId());
		pst.setString(2, product.getProductName());
		pst.setString(3, product.getProductBrand());
		pst.setString(4, product.getProductCategory());
		pst.setDouble(5, product.getProductPrice());
		pst.setDouble(6, product.getProductDiscount());
		pst.setInt(7, product.getAdminId());
		return pst.executeUpdate();
	}
	
	public int deleteProduct(int prouductId) throws ClassNotFoundException, SQLException {
		Connection connection = getConnection();
		PreparedStatement pst = connection.prepareStatement("delete from product where productid = ?");
		pst.setInt(1, prouductId);
		return pst.executeUpdate();
	}
	
	public int updateProduct(Product product) throws ClassNotFoundException, SQLException {
		Connection connection = getConnection();
		PreparedStatement pst = connection.prepareStatement("update product set productname=?, productbrand=?,productcategory=?,productprice=?,productdiscount=?,adminid=? where productid = ?");
		pst.setString(1, product.getProductName());
		pst.setString(2, product.getProductBrand());
		pst.setString(3, product.getProductCategory());
		pst.setDouble(4, product.getProductPrice());
		pst.setDouble(5, product.getProductDiscount());
		pst.setInt(6, product.getAdminId());
		pst.setInt(7, product.getProductId());
		return pst.executeUpdate();
	}
	
	public List<Product> getAllProducts(int adminid) throws ClassNotFoundException, SQLException{
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("select * from product where adminid=?");
		preparedStatement.setInt(1, adminid);
		ResultSet rs = preparedStatement.executeQuery();
		List<Product> products = new ArrayList<Product>();
		while (rs.next()) {
			products.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getString(4), rs.getDouble(5), rs.getDouble(6),rs.getInt(7)));
		}
		return products;
	}
	
	public Product findById(int id) throws SQLException, ClassNotFoundException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("select * from product where productid=?");
		preparedStatement.setInt(1, id);
		ResultSet rs = preparedStatement.executeQuery();
		
		if (rs.next()) {
			return new Product(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getString(4), rs.getDouble(5), rs.getDouble(6),rs.getInt(7));
		}
		return null;
	}
	
	public int addCategory(Category cat) throws ClassNotFoundException, SQLException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("insert into category values(?,?,?)");
		preparedStatement.setInt(1, cat.getId());
		preparedStatement.setString(2, cat.getCategory());
		preparedStatement.setString(3, cat.getSubcategory());
		return preparedStatement.executeUpdate();
	}
	
	
	

}
