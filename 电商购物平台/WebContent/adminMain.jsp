<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>电商购物平台-管理员</title>
<link rel="icon" type="image/x-icon" href="images/charge.ico" />
<link rel="Bookmark" type="image/x-icon" href="images/logohtml.ico" />
<link rel="icon" type="image/x-icon" href="images/logohtml.ico" />
<link rel="shortcut icon" type="image/x-icon" href="images/logohtml.ico" />	
</head>
<frameset rows="88,*,31" cols="*" frameborder="no" border="0" framespacing="0">
  <frame src="admintop.jsp?count=<%=request.getParameter("time") %>&uid=<%=request.getParameter("userid") %>" name="topFrame" scrolling="no" noresize="noresize" id="topFrame" title="topFrame" />
  <frameset cols="187,*" frameborder="no" border="0" framespacing="0">
    <frame src="adminLeft.jsp?count=<%=request.getParameter("time") %>" name="leftFrame" scrolling="no" noresize="noresize" id="leftFrame" title="leftFrame" />
    <frame src="default.jsp?i=<%=request.getParameter("time") %>&uid=<%=request.getParameter("userid") %>" name="rightFrame" id="rightFrame" title="rightFrame" />
  </frameset>
  <frame src="footer.html" name="bottomFrame" scrolling="no" noresize="noresize" id="bottomFrame" title="bottomFrame" />
</frameset>
<noframes>
<body>
	<%
		session.setAttribute("uid", request.getParameter("userid"));
	%>
</body>
</noframes>
</html>
