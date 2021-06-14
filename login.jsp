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
if (session.getAttribute("id") == null) {
%>
<form action="login_ok.jsp" method="post">
아이디 <input type="text" name="id"> 비밀번호 <input
type="password" name="pwd"> <input type="submit"
value=" 로그인 ">
<input type="button" value="회원가입" onclick="location.href = 'main.jsp?pagefile=join'">
</form>
<%
} else {
%>
<form action="logout.jsp" method="post">
<%=session.getAttribute("id")%>님 로그인하셨습니다. <input
type="submit" value=" 로그아웃 ">
</form>
<%
}
%>
</body>
</html>
