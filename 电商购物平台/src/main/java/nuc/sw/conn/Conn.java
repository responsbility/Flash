package nuc.sw.conn;

import java.sql.*;

public class Conn {
	public Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://rm-2ze2cl12r3x0tm7vz3o.mysql.rds.aliyuncs.com:3306/shopping?useUnicode=true&characterEncoding=utf8", "root", "Root123456");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return connection;
	}
}
