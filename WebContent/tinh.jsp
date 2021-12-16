<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
String tama=request.getParameter("txta");
String tamb=request.getParameter("txtb");
String kq="";
Long tamkq=(long)0;
if(tama!=null && tamb!=null){
	Long a=Long.parseLong(tama);
	Long b=Long.parseLong(tamb);
	if(request.getParameter("butchia")!=null && b==0)
		kq="Khong chia duoc cho 0";
	else{
		if(request.getParameter("butcong")!=null) tamkq=a+b;
		if(request.getParameter("buttru")!=null) tamkq=a-b;
		if(request.getParameter("butnhan")!=null) tamkq=a*b;
		if(request.getParameter("butchia")!=null) tamkq=a/b;
		kq=tamkq.toString(tamkq);
	}
	response.sendRedirect("maytinh.jsp?kq="+kq+"&a="+a.toString()+"&b="+b.toString());
}
%>
</body>
</html>