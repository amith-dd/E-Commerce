package dto;

public class Product {
	
	private int productId;
	private String productName;
	private String productBrand;
	private String productCategory;
	private double productPrice;
	private double productDiscount;
	private int adminId;
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductBrand() {
		return productBrand;
	}
	public void setProductBrand(String productBrand) {
		this.productBrand = productBrand;
	}
	public String getProductCategory() {
		return productCategory;
	}
	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}
	public double getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}
	public double getProductDiscount() {
		return productDiscount;
	}
	public void setProductDiscount(double productDiscount) {
		this.productDiscount = productDiscount;
	}
	public int getAdminId() {
		return adminId;
	}
	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}
	public Product(int productId, String productName, String productBrand, String productCategory, double productPrice,
			double productDiscount, int adminId) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.productBrand = productBrand;
		this.productCategory = productCategory;
		this.productPrice = productPrice;
		this.productDiscount = productDiscount;
		this.adminId = adminId;
	}
	
	
	
}
