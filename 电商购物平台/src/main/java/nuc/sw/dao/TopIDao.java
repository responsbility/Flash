package nuc.sw.dao;

import java.sql.*;

public interface TopIDao {
	public ResultSet getFestival(int month, int day);
}
