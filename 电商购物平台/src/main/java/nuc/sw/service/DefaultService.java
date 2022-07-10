package nuc.sw.service;

import java.sql.*;
import nuc.sw.dao.*;

public class DefaultService {

	public ResultSet SelectAllToDo() {
		DefaultIDao idao = new DefaultIDaoImpl();
		return idao.SelectAllToDo();
	}
	
	public ResultSet SelectNews() {
		DefaultIDao idao = new DefaultIDaoImpl();
		return idao.SelectNews();
	}
	
	public ResultSet SelectDiscount() {
		DefaultIDao idao = new DefaultIDaoImpl();
		return idao.SelectDiscount();
	}
	
	public ResultSet SelectInformation() {
		DefaultIDao idao = new DefaultIDaoImpl();
		return idao.SelectInformation();
	}
}
