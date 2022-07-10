package nuc.sw.service;

import java.sql.*;
import nuc.sw.dao.*;
import nuc.sw.entity.*;

public class UserService {
	public ResultSet Login(String id, String password) {
		UserIDao idao = new UserIDaoImpl();
		return idao.Login(id, password);
	}
	
	public int addUser(User u) {
		UserIDao idao = new UserIDaoImpl();
		return idao.addUser(u);
	}
	
	public ResultSet SelectUser() {
		UserIDao idao = new UserIDaoImpl();
		return idao.SelectUser();
	}
	
	public ResultSet SelectOneUser(String id) {
		UserIDao idao = new UserIDaoImpl();
		return idao.SelectOneUser(id);
	}
	
	public ResultSet SearchUser(String name, String sex, String type) {
		UserIDao idao = new UserIDaoImpl();
		return idao.SearchUser(name, sex, type);
	}
	
	public int deleteUser(String id) {
		UserIDao idao = new UserIDaoImpl();
		return idao.DeleteUser(id);
	}
	
	public int ModifyUser(User u) {
		UserIDao idao = new UserIDaoImpl();
		return idao.ModifyUser(u);
	}
	
	public int getUserNum() {
		UserIDao idao = new UserIDaoImpl();
		return idao.getUserNum();
	}
	
	public int getAdminNum() {
		UserIDao idao = new UserIDaoImpl();
		return idao.getAdminNum();
	}
	
	public int addAdvice(String id, String name, String advice) {
		UserIDao idao = new UserIDaoImpl();
		return idao.addAdvice(id, name, advice);
	}
}
