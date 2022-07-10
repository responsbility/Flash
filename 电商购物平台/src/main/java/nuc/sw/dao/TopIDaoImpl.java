package nuc.sw.dao;

import java.sql.*;

import nuc.sw.conn.Conn;

public class TopIDaoImpl implements TopIDao{

	@Override
	public ResultSet getFestival(int month, int day) {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		try {
			Conn db = new Conn();
			PreparedStatement pstmt = db.getConnection().prepareStatement("select * from festival where month=? and day=?");
            pstmt.setInt(1, month);
            pstmt.setInt(2, day);
			rs = pstmt.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

}
