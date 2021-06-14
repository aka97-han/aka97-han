<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W5C//DTD HTML 4.01 Transitional//EN"
"http://www.1005.com/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("euc-kr");
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
if (id.equals("test") && pwd.equals("1234"))
session.setAttribute("id", id);
response.sendRedirect("main.jsp");
%>
</body>
</html>
