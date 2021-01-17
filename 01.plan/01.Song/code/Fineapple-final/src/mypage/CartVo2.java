package mypage;

public class CartVo2 {
	private int cart_code;
	private String user_id;
	private String product_code;
	private int cart_statement;
	private int cart_amount;
	
	public int getCart_statement() {
		return cart_statement;
	}
	public void setCart_statement(int cart_statement) {
		this.cart_statement = cart_statement;
	}
	public int getCart_code() {
		return cart_code;
	}
	public void setCart_code(int cart_code) {
		this.cart_code = cart_code;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getProduct_code() {
		return product_code;
	}
	public void setProduct_code(String product_code) {
		this.product_code = product_code;
	}
	public int getCart_amount() {
		return cart_amount;
	}
	public void setCart_amount(int cart_amount) {
		this.cart_amount = cart_amount;
	}
	
	
}
