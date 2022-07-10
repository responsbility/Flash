package nuc.sw.service;

import java.sql.*;
import nuc.sw.dao.*;

public class ShoppingCartService {

	public ResultSet SelectOneCart(String uid) {
		ShoppingCartIDao idao = new ShoppingCartIDaoImpl();
		return idao.SelectOneCart(uid);
	}
	
	public int DeleteCart(String bid, String uid) {
		ShoppingCartIDao idao = new ShoppingCartIDaoImpl();
		return idao.DeleteCart(bid, uid);
	}
	
	public int Update(String bid, String num) {
		ShoppingCartIDao idao = new ShoppingCartIDaoImpl();
		return idao.Update(bid, num);
	}
	
	public int getRow(String uid) {
		ShoppingCartIDao idao = new ShoppingCartIDaoImpl();
		return idao.getRow(uid);
	}
	
	public int ModifyCart(String bid, String uid, String num, String price) {
		ShoppingCartIDao idao = new ShoppingCartIDaoImpl();
		return idao.ModifyCart(bid, uid, num, price);
	}
	
	public int DeleteUserCart(String uid) {
		ShoppingCartIDao idao = new ShoppingCartIDaoImpl();
		return idao.DeleteUserCart(uid);
	}
	
	public int DeleteAllCart() {
		ShoppingCartIDao idao = new ShoppingCartIDaoImpl();
		return idao.DeleteAllCart();
	}
	
	public ResultSet SelectCart() {
		ShoppingCartIDao idao = new ShoppingCartIDaoImpl();
		return idao.SelectCart();
	}
	
	public ResultSet SelectUserCart(String uid, String uname) {
		ShoppingCartIDao idao = new ShoppingCartIDaoImpl();
		return idao.SelectUserCart(uid, uname);
	}
	
	public int ModifyCartPrice(String bid, String uid, String price) {
		ShoppingCartIDao idao = new ShoppingCartIDaoImpl();
		return idao.ModifyCartPrice(bid, uid, price);
	}
}
