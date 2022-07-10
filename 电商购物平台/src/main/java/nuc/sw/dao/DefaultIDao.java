package nuc.sw.dao;

import java.sql.*;

public interface DefaultIDao {
	public ResultSet SelectAllToDo();
	public ResultSet SelectNews();
	public ResultSet SelectDiscount();
	public ResultSet SelectInformation();
}
