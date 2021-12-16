<%@page import="java.util.ArrayList"%>
<%@page import="bean.loaibean"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    dung code java:<br>
<%
    String tb=(String)request.getAttribute("tb");
    out.print(tb);
%>
<hr> Dung thu vien the: <br>
<c:out value="${tb }"></c:out>
<br>C2:
${tb}
dung code java:<br>
<%
    String[] ht=(String[]) session.getAttribute("ht");
     for(String h: ht){
    	 out.print(h+ "<hr>");
     }
%>
<hr> Dung thu vien the: <br>
<c:forEach items="${sessionScope.ht }" var="h">
       ${h} <hr>
   </c:forEach>
   dung code java:<br>
<%
    ArrayList<loaibean> dsloai=( ArrayList<loaibean>)request.getAttribute("dsloai");
    for(loaibean L: dsloai)
    	 out.print(L.getMaloai()+":"+ L.getTenloai());
%>
<hr> Dung thu vien the: <br>
<c:forEach  items="${dsloai}" var="L">
    ${L.getMaloai() } <hr>
    ${L.getTenloai() }
</c:forEach>

<hr> Sach: <br>
<c:forEach items="${dssach}" var="s">
${s.getMasach()} <br>
${s.getTensach()} <br>
${s.getTacgia()} <br>
${s.getSoluong()} <br>
${s.getGia()} <br>
<img alt="" src="${s.getAnh()}">

</c:forEach>
</body>
</html>