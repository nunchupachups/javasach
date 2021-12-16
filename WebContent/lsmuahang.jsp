<%@page import="bo.hoadonbo"%>
<%@page import="bean.chitiethoadonbean"%>
<%@page import="bean.hoadonbean"%>
<%@page import="bean.giohangbean"%>
<%@page import="bo.giohangbo"%>
<%@page import="javafx.scene.control.Alert"%>
<%@page import="bean.khachhangbean"%>
<%@page import="bo.khachhangbo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.sachbean"%>
<%@page import="bean.loaibean"%>
<%@page import="bo.sachbo"%>
<%@page import="bo.loaibo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>Document</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8") ;
response.setCharacterEncoding("utf-8");

ArrayList<loaibean> dsloai=(ArrayList<loaibean>) request.getAttribute("dsloai");
ArrayList<hoadonbean> dshoadon=(ArrayList<hoadonbean>) request.getAttribute("dshoadon");
ArrayList<ArrayList<chitiethoadonbean>> dscthd= (ArrayList<ArrayList<chitiethoadonbean>>) request.getAttribute("dscthd");

hoadonbo hdbo=new hoadonbo();
sachbo sbo=new sachbo();
khachhangbean khss=(khachhangbean) session.getAttribute("acc");
giohangbo ghss=(giohangbo) session.getAttribute("gh");
Long tongsach=(long)0;
if(ghss!=null) tongsach=ghss.tongsach();


%>
    <nav class="navbar navbar-inverse">
  	<div class="container-fluid">
    <ul class="nav navbar-nav">
      <li><a href="nhasachminhkhai">Trang chủ</a></li>
      <li><a href="giohangcontroller">Giỏ hàng(<%=tongsach %>)</a></li>
      <li><a href="addhoadoncontroller">Thanh toán</a></li>
      <li class="active"><a href="lsmuahangcontroller">Lịch sử mua hàng</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span>Xin chào, <%=khss.getHoten() %></a></li>
      <li><a href="dangnhapcontroller?logout=0"><span class="glyphicon glyphicon-log-out"></span>Đăng Xuất</a></li>
    </ul>
  </div>
</nav>


  
  <table align="center" cellspacing="0" width="1000">
  <tr>
  	<td valign="top" width="200">
  		<table class="table table-hover">
  			<%
  			for(loaibean loai: dsloai){
  			%>
  			<tr>
  				<td>
  					<a href="nhasachminhkhai?ml=<%=loai.getMaloai()%>">
  					<%=loai.getTenloai() %>
  					</a>
  				</td>
  			</tr>
  			<%} %>
  		</table>
  	</td>
  	<td valign="top" width="550">
  		<table class="table table-hover">
  					
  					<%	
  					if(!dscthd.isEmpty()){%>
  						<tr>
  						<td><h6>LỊCH SỬ MUA HÀNG</h6></td>
  						</tr>
  					<%for(ArrayList<chitiethoadonbean> cthd:dscthd){
  						Long mahd=cthd.get(0).getMahd();
  					%>
  						<tr>
  						<td>					
  						
  						<p>Mã hoá đơn: <%=mahd%></p>
  						<p>Ngày tạo hoá đơn: <%=hdbo.timhoadon(mahd).getNgaymua() %></p>
  						<p>Tổng tiền: <%=hdbo.tongtien(mahd) %> vnđ</p>
  						<table>
  						<%
  						for(chitiethoadonbean ct:cthd){
  						sachbean s=sbo.TimSach(ct.getMasach());
  						%>
							
								<tr>
  									<td style="display:flex;flex-direction:row">
  										<div  style="margin-bottom: 10px"><img src="<%=s.getAnh()%>" width="100px" height="120px"></div>
  										<div style="margin-left:10px">
  										<p><strong><%=s.getTensach() %></strong></p><br>
  										<p>Giá: <%=s.getGia() %>đ x <%=ct.getSoluongmua() %></p>
  										</div>
  									</td>
  							
  								</tr>
  						<% }%>
  						</table> 
  						</td>
  						</tr>
  						
  					<%}}else{%>
  					<tr>
  						<td><h6>BẠN CHƯA MUA ĐƠN HÀNG NÀO</h6></td>
  					</tr>
  					<%} %>
  					
			
  		</table>
  	</td>
  	<td valign="top" width="250">
  		<form action="nhasachminhkhai" method="post" align="right">
  			<input type="text" name="txtTim">
  			<input type="submit" value="Search" name="but1">
  		</form>
  	</td>
  </tr>
  </table>
</body>
</html>