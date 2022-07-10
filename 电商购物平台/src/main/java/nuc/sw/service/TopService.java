package nuc.sw.service;

import java.sql.*;
import nuc.sw.dao.*;

public class TopService {
	public ResultSet getFestival(int month, int day) {
		TopIDao idao = new TopIDaoImpl();
		return idao.getFestival(month, day);
	}
}
