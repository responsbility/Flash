package nuc.sw.service;

import java.sql.*;
import nuc.sw.dao.*;
import nuc.sw.entity.*;

public class BookService {
	
	public int addBook(Book b) {
		BookIDao idao = new BookIDaoImpl();
		return idao.addBook(b);
	}
	
	public int DeleteBook(String id) {
		BookIDao idao = new BookIDaoImpl();
		return idao.DeleteBook(id);
	}
	
	public ResultSet SelectBook() {
		BookIDao idao = new BookIDaoImpl();
		return idao.SelectBook();
	}
	
	public String getBookId() {
		BookIDao idao = new BookIDaoImpl();
		return idao.getBookId();
	}
	
	public int ModifyBook(Book b) {
		BookIDao idao = new BookIDaoImpl();
		return idao.ModifyBook(b);
	}
	
	public ResultSet SelectBookAuthor(String author) {
		BookIDao idao = new BookIDaoImpl();
		return idao.SelectBookAuthor(author);
	}
	
	public ResultSet SelectOneBook(String id) {
		BookIDao idao = new BookIDaoImpl();
		return idao.SelectOneBook(id);
	}
	
	public ResultSet SelectBookName(String name) {
		BookIDao idao = new BookIDaoImpl();
		return idao.SelectBookName(name);
	}
	
	public int getBookNum() {
		BookIDao idao = new BookIDaoImpl();
		return idao.getBookNum();
	}
	
}
