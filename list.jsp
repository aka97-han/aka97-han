<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W5C//DTD HTML 4.01 Transitional//EN"
"http://www.1005.com/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>수강</title>
</head>
<script type="text/javascript">
function check() {
var frm = document.getElementById("form");
var found = null;
for (i = 0; i < 4; i++) {
if (frm.item_list[i].checked == true) {
found = frm.item_list[i].value;
}
}
if (found == null) {
alert("하나 이상은 체크해주세요");
return false;
}
}
</script>
<body>
<%
if (session.getAttribute("id") != null) {
%>
<h1>수강신청하기</h1>
<form action="./main.jsp?pagefile=apply" method="post" id="form" onsubmit="return check()">
<table width="100%" border="1">
<tr> <th>강좌코드</th>
<th width="50%">과목명</th>
<th>학년</th>
<th>학점</th>
<th>선택</th>
</tr>
<tr>
<td>IC015-A</td>
<td>웹 시스템 설계 및 개발</td>
<td>3</td>
<td>3</td>
<td><input type="checkbox" value="web" id="item_list" name="item_list"></td>
</tr>
<tr>
<td>IC147-A</td>
<td>자바기반응용프로그래밍</td>
<td>2</td>
<td>3</td>
<td><input type="checkbox" value="java" id="item_list" name="item_list"></td>
</tr>
<tr>
<td>IC136-A</td>
<td>컴퓨터프로그래밍기초</td>
<td>1</td>
<td>3</td>
<td><input type="checkbox" value="comp" id="item_list" name="item_list"></td>
</tr>
<tr>
<td>IC066-A</td>
<td>운영체제</td>
<td>3</td>
<td>3</td>
<td><input type="checkbox" value="OS" id="item_list" name="item_list"></td>
</tr>
</table>
<p align="right"><input type="submit" value="수강신청"></p>
</form>
<%} else
{%>
<h1>개설강좌</h1>
<table width="100%" border="1">
<tr>
<th>강좌코드</th>
<th width="50%">과목명</th>
<th>학년</th>
<th>학점</th>
</tr><tr>
<td>IC015-A</td>
<td>웹 시스템 설계및 개발</td>
<td>3</td>
<td>3</td>
</tr><tr>
<td>IC147-A</td>
<td>자바기반응용프로그래밍</td>
<td>2</td>
<td>3</td>
</tr>
<tr><td>IC136-A</td>
<td>컴퓨터프로그래밍기초</td>
<td>1</td>
<td>3</td>
</tr>
<tr>
<td>IC066-A</td>
<td>운영체제</td>
<td>3</td>
<td>3</td>
</tr></table>
<%}%>
</body>
</html>
