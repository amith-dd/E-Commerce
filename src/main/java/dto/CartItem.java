package dto;

public class CartItem {
	
	private int cartItemId;
	private String cartItemName;
	private double cartItemPrice;
	private int cartId;
	public int getCartItemId() {
		return cartItemId;
	}
	public void setCartItemId(int cartItemId) {
		this.cartItemId = cartItemId;
	}
	public String getCartItemName() {
		return cartItemName;
	}
	public void setCartItemName(String cartItemName) {
		this.cartItemName = cartItemName;
	}
	public double getCartItemPrice() {
		return cartItemPrice;
	}
	public void setCartItemPrice(double cartItemPrice) {
		this.cartItemPrice = cartItemPrice;
	}
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	public CartItem(int cartItemId, String cartItemName, double cartItemPrice, int cartId) {
		super();
		this.cartItemId = cartItemId;
		this.cartItemName = cartItemName;
		this.cartItemPrice = cartItemPrice;
		this.cartId = cartId;
	}
	
	
	

	
	
}
