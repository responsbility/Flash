package nuc.sw.dao;

import java.sql.*;

import nuc.sw.conn.Conn;

public class ShoppingCartIDaoImpl implements ShoppingCartIDao{

	@Override
	public ResultSet SelectOneCart(String uid) {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		try {
			Conn db = new Conn();
			PreparedStatement pstmt = db.getConnection().prepareStatement("select * from cart where uid=?", ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            pstmt.setString(1, uid);
			rs = pstmt.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public int DeleteCart(String bid, String uid) {
		// TODO Auto-generated method stub
		int rs = 0;
		try {
			Conn db = new Conn();
			PreparedStatement pstmt = db.getConnection().prepareStatement("delete from cart where bid=? and uid=?");
			pstmt.setString(1, bid);
			pstmt.setString(2, uid);
			rs = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public int Update(String bid, String num) {
		// TODO Auto-generated method stub
		int rs = 0;
		Conn db = new Conn();
		try {
			PreparedStatement pstmt = db.getConnection().prepareStatement("update book set num = num + ? where id=?");
			pstmt.setString(1, num);
			pstmt.setString(2, bid);
			rs = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public int getRow(String uid) {
		// TODO Auto-generated method stub
		int num = 0;
		ResultSet rs;
		try {
			rs = SelectOneCart(uid);
			rs.last();
			num = rs.getRow();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return num;
	}

	@Override
	public int ModifyCart(String bid, String uid, String num, String price) {
		// TODO Auto-generated method stub
		int rs = 0;
		Conn db = new Conn();
		try {
			PreparedStatement pstmt = db.getConnection().prepareStatement("update cart set num=?,price=? where bid=? and uid=?");
			pstmt.setInt(1, Integer.parseInt(num));
			pstmt.setFloat(2, Integer.parseInt(num) * Float.parseFloat(price));
			pstmt.setString(3, bid);
			pstmt.setString(4, uid);
			rs = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public int DeleteUserCart(String uid) {
		// TODO Auto-generated method stub
		int rs = 0;
		try {
			Conn db = new Conn();
			PreparedStatement pstmt = db.getConnection().prepareStatement("delete from cart where uid=?");
			pstmt.setString(1, uid);
			rs = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public int DeleteAllCart() {
		// TODO Auto-generated method stub
		int rs = 0;
		try {
			Conn db = new Conn();
			PreparedStatement pstmt = db.getConnection().prepareStatement("delete from cart");
			rs = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public ResultSet SelectCart() {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		try {
			Conn db = new Conn();
			PreparedStatement pstmt = db.getConnection().prepareStatement("select * from shoppingcart", ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			rs = pstmt.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public ResultSet SelectUserCart(String uid, String uname) {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		try {
			Conn db = new Conn();
			PreparedStatement pstmt = db.getConnection().prepareStatement("select * from shoppingcart where uid=? and name=?", ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            pstmt.setString(1, uid);
            pstmt.setString(2, uname);
			rs = pstmt.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public int ModifyCartPrice(String bid, String uid, String price) {
		// TODO Auto-generated method stub
		int rs = 0;
		Conn db = new Conn();
		try {
			PreparedStatement pstmt = db.getConnection().prepareStatement("update cart set price=? where bid=? and uid=?");
			pstmt.setString(1, price);
			pstmt.setString(2, bid);
			pstmt.setString(3, uid);
			rs = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
}
