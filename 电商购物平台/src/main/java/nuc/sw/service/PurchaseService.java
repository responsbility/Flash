package nuc.sw.service;

import java.sql.*;
import nuc.sw.dao.*;
import nuc.sw.entity.*;

public class PurchaseService {

	public int Purchase(Book b, String num, String id) {
		PurchaseIDao idao = new PurchaseIDaoImpl();
		return idao.Purchase(b, num, id);
	}
	
	public ResultSet Judge(String id, String uid) {
		PurchaseIDao idao = new PurchaseIDaoImpl();
		return idao.Judge(id, uid);
	}
	
	public int Update(String id, String num) {
		PurchaseIDao idao = new PurchaseIDaoImpl();
		return idao.Update(id, num);
	}
	
	public int PurchaseAgain(String id, String uid, String num, float price) {
		PurchaseIDao idao = new PurchaseIDaoImpl();
		return idao.PurchaseAgain(id, uid, num, price);
	}
}
