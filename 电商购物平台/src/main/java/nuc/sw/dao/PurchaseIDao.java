package nuc.sw.dao;

import java.sql.*;
import nuc.sw.entity.*;

public interface PurchaseIDao {
	
	public int Purchase(Book b, String num, String uid);
	public ResultSet Judge(String id, String uid);
	public int PurchaseAgain(String id, String uid, String num, float price);
	public int Update(String id, String num);
}
