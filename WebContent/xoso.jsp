<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<%
Calendar c=Calendar.getInstance();
int ngay=c.get(Calendar.DAY_OF_MONTH);
int thang=c.get(Calendar.MONTH)+1;
int nam=c.get(Calendar.YEAR);
%>
<div align="right">
Hôm nay ngày <%=ngay %> tháng <%=thang %> năm <%=nam %> 
</div>
<form action="ketquaxoso.jsp">
Chọn ngày:

	<select name="sngay">
	<%for(int i=1;i<32;i++){%>
	<option <%=(i==ngay?"selected":"") %>> <%=i %> </option>
	<% }%>
	</select>
	tháng
	<select name="sthang">
	<%for(int i=1;i<13;i++){%>
	<option <%=(i==thang?"selected":"") %>> <%=i %> </option>
	<% } %>
	</select>
	năm
	<select name="snam">
	<%for(int i=nam-10;i<=nam;i++){%>
	<option <%=(i==nam?"selected":"") %>> <%=i %> </option>
	<% }%>
	</select>
	<input type="submit" value="Kết quả xổ số">
</form>

</body>
</html>