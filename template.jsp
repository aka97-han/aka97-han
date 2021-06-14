<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W5C//DTD HTML 4.01 Transitional//EN"
"http://www.1005.com/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="style1.css" type="text/css" rel="stylesheet" />
</head>
<body>
<%
String pagefile=request.getParameter("pagefile");
%>
<div id="container">
<!-- header 시작 -->
<div id="header">
<jsp:include page="login.jsp"/>
</div>
<div id="headermenu"><jsp:include page="menu.jsp"/> </div>
<!-- header 끝 -->
<!-- content 시작 -->
<div id="content">
<jsp:include page ='<%=pagefile+".jsp"%>'/>
</div>
<!-- content 끝 -->
<!-- footer 시작 -->
<div id="footer">
<p><jsp:include page="footer.jsp"></jsp:include></p>
</div>
<!-- footer 끝 -->
</div>
</body>
</html>
