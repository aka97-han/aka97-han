<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W5C//DTD HTML 4.01 Transitional//EN"
"http://www.1005.com/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<a href ="main.jsp">홈</a> |
<% if (session.getAttribute("id") == null) {%>
<a href="main.jsp?pagefile=list">개설강좌</a>
<% }else {%>
<a href="main.jsp?pagefile=list">수강신청</a>
<% }%>
</body>
</html>
