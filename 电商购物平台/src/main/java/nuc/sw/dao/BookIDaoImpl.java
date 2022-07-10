package nuc.sw.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import nuc.sw.conn.Conn;
import nuc.sw.entity.Book;

public class BookIDaoImpl implements BookIDao{

	@Override
	public int DeleteBook(String id) {
		// TODO Auto-generated method stub
		int rs = 0;
		try {
			Conn db = new Conn();
			PreparedStatement pstmt = db.getConnection().prepareStatement("delete from book where id=?");
			pstmt.setString(1, id);
			rs = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public ResultSet SelectBook() {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		try {
			Conn db = new Conn();
			PreparedStatement pstmt = db.getConnection().prepareStatement("select * from book", ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            rs = pstmt.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public int addBook(Book b) {
		// TODO Auto-generated method stub
		int rs = 0;
		try {
			Conn db = new Conn();
			PreparedStatement pstmt = db.getConnection().prepareStatement("insert into book values(?,?,?,?,?,?)");
			pstmt.setString(1, b.getId());
			pstmt.setString(2, b.getName());
			pstmt.setString(3, b.getAuthor());
			pstmt.setFloat(4, b.getPrice());
			pstmt.setInt(5, b.getNum());
			pstmt.setString(6, b.getCategory());
			rs = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public String getBookId() {
		// TODO Auto-generated method stub
		String id = null;
		String num1 = (int)(0 + Math.random()*(9 - 0 + 1)) + "";
		String num2 = (int)(0 + Math.random()*(9 - 0 + 1)) + "";
		String num3 = (int)(0 + Math.random()*(9 - 0 + 1)) + "";
		id = "b" + num1 + num2 + num3;
		return id;
	}

	@Override
	public int ModifyBook(Book b) {
		// TODO Auto-generated method stub
		int rs = 0;
		Conn db = new Conn();
		try {
			PreparedStatement pstmt = db.getConnection().prepareStatement("update book set name=?,author=?,price=?,num=?,category=? where id=?");
			pstmt.setString(1, b.getName());
			pstmt.setString(2, b.getAuthor());
			pstmt.setFloat(3, b.getPrice());
			pstmt.setInt(4, b.getNum());
			pstmt.setString(5, b.getCategory());
			pstmt.setString(6, b.getId());
			rs = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public ResultSet SelectBookAuthor(String author) {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		try {
			Conn db = new Conn();
			PreparedStatement pstmt = db.getConnection().prepareStatement("select * from book where author=?");
            pstmt.setString(1, author);
			rs = pstmt.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public ResultSet SelectOneBook(String id) {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		try {
			Conn db = new Conn();
			PreparedStatement pstmt = db.getConnection().prepareStatement("select * from book where id=?");
            pstmt.setString(1, id);
			rs = pstmt.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public ResultSet SelectBookName(String name) {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		try {
			Conn db = new Conn();
			PreparedStatement pstmt = db.getConnection().prepareStatement("select * from book where name=?");
            pstmt.setString(1, name);
			rs = pstmt.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public int getBookNum() {
		// TODO Auto-generated method stub
		int num = 0;
		ResultSet rs;
		try {
			rs = SelectBook();
			rs.last();
			num = rs.getRow();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return num;
	}

}
