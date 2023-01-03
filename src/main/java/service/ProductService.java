package service;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;

import config.Connect;
import entity.Cart;
import entity.Products;
import entity.Users;

public class ProductService {

	public static Products findProductById(int id) {

		Products detailP = null;

		Connection connection = Connect.openConnect();

		Statement stmt;
		try {
			stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery("select id,name, price, img from products where id=" + id);

			while (rs.next()) {
				// System.out.println(rs.getInt(1) + " " + rs.getString(2) + " " +
				// rs.getDouble(3));

				detailP = new Products(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4));

			}
			return detailP;

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return null;
	}

	public static Users findUsernameAndPassword(String username, String password) {
		Users user = null;

		Connection connection = Connect.openConnect();

		Statement stmt;
		try {
			stmt = connection.createStatement();

			ResultSet rs = stmt.executeQuery("select `id`, `username`, `password`, `role` from `users` where `username`= '" + username
					+ "' and `password`= '" + password + "'");
		
			if (rs.next()) {
				// become new users with correct username and password
				
				user = new Users(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getBoolean(4));
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return user;
	}

	public ArrayList<Products> getAllProducts() {
		ArrayList<Products> products = new ArrayList<Products>();

		Connection connection = Connect.openConnect();
		Statement stmt;
		try {
			stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery("select id, name, price, img from products ");

			while (rs.next()) {
//				 System.out.println(rs.getInt(1) + " " + rs.getString(2) + " " +
//				 rs.getDouble(3)+" "+ rs.getString(4));

				products.add(new Products(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4)));
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return products;

	}

	public boolean addProduct(Products product) {
		Connection connection = Connect.openConnect();

		int i = 0;

		try {

			PreparedStatement ps = connection
					.prepareStatement("insert into products (`img`,`name`,`price`) values (?,?,?) ");
//			ps.setLong(1, product.getId());
			ps.setString(1, product.getImg());
			ps.setString(2, product.getName());
			ps.setDouble(3, product.getPrice());

			i = ps.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		}
		if (i == 0) {
			return false;
		} else {
			return true;
		}

	}

	public boolean updateProduct(Products product) {
		Connection connection = Connect.openConnect();
		int i = 0;
		try {
			PreparedStatement ps = connection.prepareStatement("update products set img=?,name=?,price=? where id=?");

			ps.setString(1, product.getImg());
			ps.setString(2, product.getName());
			ps.setDouble(3, product.getPrice());
			ps.setInt(4, product.getId());


			i = ps.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		}
		if (i == 0) {
			return false;

		} else {
			return true;
		}

	}

	public boolean deleteProduct(String id) {
		Connection connection = Connect.openConnect();
		int i = 0;
		try {
			PreparedStatement ps = connection.prepareStatement("delete from products where id=?");

			ps.setString(1, id);

			i = ps.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		}
		if (i == 0) {
			return false;

		} else {
			return true;
		}

	}

	public static ArrayList<Products> searchProduct(String name) {
		Connection connection = Connect.openConnect();
		ArrayList<Products> productList = new ArrayList<Products>();

		try {
			PreparedStatement ps = connection
					.prepareStatement("select id, name, price, img from products where name like '%" + name + "%'");

//			ps.setString(1, name);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				// System.out.println(rs.getInt(1) + " " + rs.getString(2) + " " +
				// rs.getDouble(3)+" "+ rs.getString(4));

				productList.add(new Products(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4)));
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return productList;
	}
	public static ArrayList<Products> search(String name, int index, int recordsPerPage) {
		Connection connection = Connect.openConnect();
		ArrayList<Products> productList = new ArrayList<Products>();

		try {
			PreparedStatement ps = connection
					.prepareStatement("with x as (select ROW_NUMBER() over (order by id asc) as r, \n"
							+ "id, name, price ,img from products where name like ?)\n"
							+ "select id, name, price ,img from x where r between ? * ?-(?-1) and ? * ?;"
							);

			ps.setString(1,"%" + name + "%");
			
			ps.setInt(2, index);//1
			ps.setInt(3, recordsPerPage);//3
			ps.setInt(4, recordsPerPage);//3-1=2
			ps.setInt(5, index);//1
			ps.setInt(6, recordsPerPage);//3

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				// System.out.println(rs.getInt(1) + " " + rs.getString(2) + " " +
				// rs.getDouble(3)+" "+ rs.getString(4));

				productList.add(new Products(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4)));
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return productList;
	}
	public static int count(String name) {
		Connection connection = Connect.openConnect();
		ArrayList<Products> productList = new ArrayList<Products>();

		try {
			PreparedStatement ps = connection
					.prepareStatement("select count(*) from products where name like '%" + name + "%'");

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				return rs.getInt(1);
				//productList.add(new Products(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4)));
			}

		} catch (SQLException e) {

		}
		return 0;
	}
	
	public static void main(String[] args) {
		ProductService productService = new ProductService();

		
	}
	public static int upInLogin(Users user) {
		Connection connection = Connect.openConnect();
		try {
			PreparedStatement st = connection.prepareStatement("update users set login=1 where id=?");
		
			st.setInt(1, user.getId());
			
			st.executeUpdate();
			
			
		} catch (SQLException e) {

			e.printStackTrace();
		}
		// log in;
		return 1;
		
		
	}
	public static int upOutLogin (Users user) {
		Connection connection = Connect.openConnect();
		try {
			PreparedStatement st = connection.prepareStatement("update users set login=0 where id=?");
		
			st.setInt(1, user.getId());
			
			st.executeUpdate();
			
			
		} catch (SQLException e) {

			e.printStackTrace();
		}
		// log out
		return 0;
	}
	
	public static void addIntoCart(Products productCart, int user_id) {	
		Connection connection = Connect.openConnect();
		
		int product_id = productCart.getId();
		double product_price = productCart.getPrice();
		String product_name = productCart.getName();
		
		try {

			PreparedStatement ps = connection
					.prepareStatement("insert into cart (`product_id`,`quantity`,`user_id`, `product_price`, `product_name`) values (?,?,?,?,?) ");
//			ps.setLong(1, product.getId());
			
			
			ps.setInt(1, product_id);
			ps.setInt(2, 1);
			ps.setInt(3, user_id);
			ps.setDouble(4, product_price);
			ps.setString(5, product_name);
			
			ps.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		}
		
	}
	public static ArrayList<Cart> getProductCart() {

		ArrayList<Cart> productCart = new ArrayList<Cart>();

		Connection connection = Connect.openConnect();
		Statement stmt;
		try {
			stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery("select id_cart, product_id, quantity, user_id, product_price, product_name from cart ");

			while (rs.next()) {
//				 System.out.println(rs.getInt(1) + " " + rs.getString(2) + " " +
//				 rs.getDouble(3)+" "+ rs.getString(4));

				productCart.add(new Cart(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getDouble(5), rs.getString(6)));
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return productCart;
	}
}
