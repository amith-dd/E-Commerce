package dto;

public class Category {
	
	private int id;
	private String category;
	private String subcategory;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getSubcategory() {
		return subcategory;
	}
	public void setSubcategory(String subcategory) {
		this.subcategory = subcategory;
	}
	public Category(int id, String category, String subcategory) {
		super();
		this.id = id;
		this.category = category;
		this.subcategory = subcategory;
	}
	
	
	
}
