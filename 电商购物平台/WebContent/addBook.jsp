<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,nuc.sw.service.*,nuc.sw.entity.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册</title>
</head>
<body>
	<%
		BookService bs = new BookService();
		String id = bs.getBookId();
		String name = request.getParameter("bname");
		String author = request.getParameter("author");
		String price = request.getParameter("bprice");
		String num = request.getParameter("bnum");
		String category = request.getParameter("bcategory");
		if(name.equals("")||author.equals("")||price.equals("")||num.equals("")){
	%>
			<script type="text/javascript">
				alert("信息填写不全，请重新输入！");
				window.location="addBook.html";
			</script>
	<%
			return;
		}
		Book b = new Book(id, name, author, Float.parseFloat(price), Integer.parseInt(num), category);
		int rs = bs.addBook(b);
		if(rs!=0){
	%>
			<script type="text/javascript">
				alert("添加成功！");
				window.location="addBook.html";
			</script>
	<%
		}else{
	%>
			<script type="text/javascript">
				alert("添加失败！");
			</script>
	<%
		}
	%>
</body>
</html>