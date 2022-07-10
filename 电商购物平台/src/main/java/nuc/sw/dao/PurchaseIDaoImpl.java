package nuc.sw.dao;

import java.sql.*;
import nuc.sw.conn.*;
import nuc.sw.entity.*;
import nuc.sw.service.*;

public class PurchaseIDaoImpl implements PurchaseIDao{

	@Override
	public int Purchase(Book b, String num, String uid) {
		// TODO Auto-generated method stub
		int rs = 0;
		try {
			Conn db = new Conn();
			BookService bs = new BookService();
			PreparedStatement pstmt = db.getConnection().prepareStatement("insert into cart values(?,?,?,?,?,?,?)");
			pstmt.setString(1, b.getId());
			pstmt.setString(2, b.getName());
			pstmt.setString(3, b.getAuthor());
			pstmt.setString(4, b.getCategory());
			pstmt.setInt(5, Integer.parseInt(num));
			pstmt.setFloat(6, b.getPrice() * Integer.parseInt(num));
			pstmt.setString(7, uid);
			rs = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public ResultSet Judge(String bid, String uid) {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		try {
			Conn db = new Conn();
			PreparedStatement pstmt = db.getConnection().prepareStatement("select * from cart where bid=? and uid=?");
            pstmt.setString(1, bid);
            pstmt.setString(2, uid);
			rs = pstmt.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public int PurchaseAgain(String id, String uid, String num, float price) {
		// TODO Auto-generated method stub
		int rs = 0;
		Conn db = new Conn();
		try {
			PreparedStatement pstmt = db.getConnection().prepareStatement("update cart set num = num + ?,price = price + ? where bid=? and uid=?");
			pstmt.setInt(1, Integer.parseInt(num));
			pstmt.setFloat(2, Integer.parseInt(num) * price);
			pstmt.setString(3, id);
			pstmt.setString(4, uid);
			rs = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public int Update(String id, String num) {
		// TODO Auto-generated method stub
		int rs = 0;
		Conn db = new Conn();
		try {
			PreparedStatement pstmt = db.getConnection().prepareStatement("update book set num = num - ? where id=?");
			pstmt.setString(1, num);
			pstmt.setString(2, id);
			rs = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

}
