<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,nuc.sw.service.*,nuc.sw.entity.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改用户</title>
</head>
<body>
	<%
		String id = request.getParameter("bid");
		String name = request.getParameter("bname");
		String author = request.getParameter("author");
		String price = request.getParameter("bprice");
		String num = request.getParameter("bnum");
		String category = request.getParameter("bcategory");
		Book b = new Book(id, name, author, Float.parseFloat(price), Integer.parseInt(num), category);
		BookService bs = new BookService();
		int rs = bs.ModifyBook(b);
		if(rs!=0){
	%>
			<script type="text/javascript">
				window.location="modifyBook.jsp";
				alert("修改成功！");
			</script>
	<%
		}else{
	%>
			<script type="text/javascript">
				window.location="modifyBook.jsp";
				alert("修改失败！");
			</script>
	<%
		}
	%>
</body>
</html>