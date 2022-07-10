package nuc.sw.dao;

import java.sql.*;

import nuc.sw.conn.Conn;

public class DefaultIDaoImpl implements DefaultIDao{

	@Override
	public ResultSet SelectAllToDo() {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		try {
			Conn db = new Conn();
			PreparedStatement pstmt = db.getConnection().prepareStatement("select * from todo", ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			rs = pstmt.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public ResultSet SelectNews() {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		try {
			Conn db = new Conn();
			PreparedStatement pstmt = db.getConnection().prepareStatement("select * from news", ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			rs = pstmt.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public ResultSet SelectDiscount() {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		try {
			Conn db = new Conn();
			PreparedStatement pstmt = db.getConnection().prepareStatement("select * from discount", ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			rs = pstmt.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public ResultSet SelectInformation() {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		try {
			Conn db = new Conn();
			PreparedStatement pstmt = db.getConnection().prepareStatement("select * from information", ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			rs = pstmt.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

}
