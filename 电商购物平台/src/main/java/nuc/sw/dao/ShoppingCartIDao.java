package nuc.sw.dao;

import java.sql.*;

public interface ShoppingCartIDao {

	public ResultSet SelectOneCart(String uid);
	public int DeleteCart(String bid, String uid);
	public int Update(String bid, String num);
	public int getRow(String uid);
	public int ModifyCart(String bid, String uid, String num, String price);
	public int DeleteUserCart(String uid);
	public int DeleteAllCart();
	public ResultSet SelectCart();
	public ResultSet SelectUserCart(String uid, String uname);
	public int ModifyCartPrice(String bid, String uid, String price);
}
