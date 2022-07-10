package nuc.sw.dao;

import nuc.sw.entity.*;
import java.sql.*;

public interface BookIDao {
	public int addBook(Book b);
	public int DeleteBook(String id);
	public int ModifyBook(Book b);
	public ResultSet SelectBook();
	public ResultSet SelectOneBook(String id);
	public String getBookId();
	public ResultSet SelectBookAuthor(String author);
	public ResultSet SelectBookName(String name);
	public int getBookNum();
}
