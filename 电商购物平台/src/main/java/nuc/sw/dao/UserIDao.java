package nuc.sw.dao;

import java.sql.*;
import nuc.sw.entity.*;

public interface UserIDao {
	public ResultSet Login(String id, String password);
	public ResultSet SelectUser();
	public ResultSet SelectOneUser(String id);
	public int addUser(User u);
	public int DeleteUser(String id);
	public int ModifyUser(User u);
	public ResultSet SearchUser(String name, String sex, String type);
	public int getUserNum();
	public int getAdminNum();
	public ResultSet SelectAdmin();
	public int addAdvice(String id, String name, String advice);
}
