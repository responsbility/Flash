package nuc.sw.dao;

import java.sql.*;

import nuc.sw.conn.Conn;
import nuc.sw.entity.*;

public class UserIDaoImpl implements UserIDao{

	@Override
	public ResultSet Login(String id, String password) {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		try {
			Conn db = new Conn();
			PreparedStatement pstmt = db.getConnection().prepareStatement("select * from user where id=? and password=?");
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			rs = pstmt.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public ResultSet SelectUser() {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		try {
			Conn db = new Conn();
			PreparedStatement pstmt = db.getConnection().prepareStatement("select * from user", ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			rs = pstmt.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public ResultSet SelectOneUser(String id) {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		try {
			Conn db = new Conn();
			PreparedStatement pstmt = db.getConnection().prepareStatement("select * from user where id=?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public int addUser(User u) {
		// TODO Auto-generated method stub
		int rs = 0;
		try {
			Conn db = new Conn();
			PreparedStatement pstmt = db.getConnection().prepareStatement("insert into user values(?,?,?,?,?,?)");
			pstmt.setString(1, u.getId());
			pstmt.setString(2, u.getName());
			pstmt.setString(3, u.getPassword());
			pstmt.setString(4, u.getSex() + "");
			pstmt.setString(5, u.getCity());
			pstmt.setString(6, u.getType());
			rs = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public int DeleteUser(String id) {
		// TODO Auto-generated method stub
		int rs = 0;
		try {
			Conn db = new Conn();
			PreparedStatement pstmt = db.getConnection().prepareStatement("delete from user where id=?");
			pstmt.setString(1, id);
			rs = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public int ModifyUser(User u) {
		// TODO Auto-generated method stub
		int rs = 0;
		Conn db = new Conn();
		try {
			PreparedStatement pstmt = db.getConnection().prepareStatement("update user set name=?,password=?,sex=?,city=?,type=? where id=?");
			pstmt.setString(1, u.getName());
			pstmt.setString(2, u.getPassword());
			pstmt.setString(3, u.getSex() + "");
			pstmt.setString(4, u.getCity());
			pstmt.setString(5, u.getType());
			pstmt.setString(6, u.getId());
			rs = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public ResultSet SearchUser(String name, String sex, String type) {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		try {
			Conn db = new Conn();
			PreparedStatement pstmt = db.getConnection().prepareStatement("select * from user where name=? and sex=? and type=?");
			pstmt.setString(1, name);
			pstmt.setString(2, sex);
			pstmt.setString(3, type);
			rs = pstmt.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public int getUserNum() {
		// TODO Auto-generated method stub
		int num = 0;
		ResultSet rs = null;
		try {
			rs = SelectUser();
			rs.last();
			num = rs.getRow();
			rs.beforeFirst();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return num;
	}

	@Override
	public int getAdminNum() {
		// TODO Auto-generated method stub
		int num = 0;
		ResultSet rs = null;
		try {
			rs = SelectAdmin();
			rs.last();
			num = rs.getRow();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return num;
	}

	@Override
	public ResultSet SelectAdmin() {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		try {
			Conn db = new Conn();
			PreparedStatement pstmt = db.getConnection().prepareStatement("select * from user where type='管理员'", ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			rs = pstmt.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public int addAdvice(String id, String name, String advice) {
		// TODO Auto-generated method stub
		int rs = 0;
		try {
			Conn db = new Conn();
			PreparedStatement pstmt = db.getConnection().prepareStatement("insert into advice values(?,?,?)");
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			pstmt.setString(3, advice);
			rs = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

}
