<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html PUBLIC "-//W5C//DTD HTML 4.01 Transitional//EN"
"http://www.1005.com/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% if (session.getAttribute("id") != null) {
String[] checkItem = request.getParameterValues("item_list");
int total = 0;
String item[][]=new String[checkItem.length][3];
for (int i = 0; i < checkItem.length; i++) {
switch (checkItem[i]) {
case "web":
item[i][0]="[웹 시스템 설계 및 개발] ";
item[i][1]="3학점 ";
item[i][2]="3학년 ";
total +=3;
break;
case "java":
item[i][0]="[자바기반응용프로그래밍]";
item[i][1]="3학점 ";
item[i][2]="2학년 ";
total +=3;
break;
case "comp":
item[i][0]="[컴퓨터프로그래밍기초1] ";
item[i][1]="3학점 ";
item[i][2]="1학년 ";
total +=3;
break;
case "OS":
item[i][0]="[운영체제] ";
item[i][1]="3학점";
item[i][2]="3학년";
total +=3;
break;
default:
break;
}
}
%>
<h1
> 수강 신청 </h1
>
<form action
="./main.jsp?pagefile=result" method
="post"
>
<table border
=
1
>
<tr> <th
>번호</th
>
<th colspan
="2"
>선택한 과목 </th
>
<th
>학점</th
>
<th
>학년</th
>
</tr
>
<tr
>
<% for
(int i = 0; i<item.length; i++){%>
<tr
>
<td
><%=i+1 %></td
>
<td colspan
="2"
><%=item[
i][0] %></td
>
<td
><%=item[
i][1] %></td
>
<td
><%=item[
i][2] %></td
>
<%} %>
</tr
>
<tr
>
<th colspan
="4"
>
총 학점 </th
>
<th style="color: red;"
><%=total %></th
>
</tr
>
</table
>
<input type
="submit" value
=
"신청
"
>
</form
>
<%} else
{%>
<script
>
alert(
"로그인되지 않았습니다.");
location.href
=
"main.jsp
"
;
</script
>
<%
}%>
</body
>
</html
>
