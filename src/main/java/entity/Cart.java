package entity;

public class Cart {
	private int id_cart;
	private int product_id;
	private int quantity;
	private int user_id;
	private double product_price;
	private String product_name;
	
	public Cart() {
		
	}
	public Cart(int id_cart, int product_id, int quantity, int user_id, double product_price, String product_name) {
		super();
		this.id_cart = id_cart;
		this.product_id = product_id;
		this.quantity = quantity;
		this.user_id = user_id;
		this.product_price = product_price;
		this.product_name = product_name;
	}
	public double getProduct_price() {
		return product_price;
	}
	public void setProduct_price(double product_price) {
		this.product_price = product_price;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getId_cart() {
		return id_cart;
	}
	public void setId_cart(int id_cart) {
		this.id_cart = id_cart;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
}
