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
String tb = (String) request.getAttribute("tbchuadn");
if(tb!=null){%>
	<script>
	alert("Bạn chưa đăng nhập. Vui lòng đăng nhập và thử lại.");
	</script>
<%}

khachhangbean khss=(khachhangbean) session.getAttribute("acc");
giohangbo ghss=(giohangbo) session.getAttribute("gh");
Long tongsach=(long)0;
if(ghss!=null) tongsach=ghss.tongsach();


%>
    <nav class="navbar navbar-inverse">
  	<div class="container-fluid">
    <ul class="nav navbar-nav">
      <li><a href="nhasachminhkhai">Trang chủ</a></li>
      <li class="active"><a href="giohangcontroller">Giỏ hàng(<%=tongsach %>)</a></li>
      <li><a href="addhoadoncontroller">Thanh toán</a></li>
      <li><a href="lsmuahangcontroller">Lịch sử mua hàng</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <% 
    	
    	if(khss==null){ %>
      <li><a href="#" data-toggle="modal" data-target="#myModalSignup"><span class="glyphicon glyphicon-user"></span>Đăng ký</a></li>
     <li><a href="#" data-toggle="modal" data-target="#myModalSignin"><span class="glyphicon glyphicon-log-in"></span>Đăng nhập</a></li>
      <%}else {
    	  
      %>
      <li><a href="#"><span class="glyphicon glyphicon-user"></span>Xin chào, <%=khss.getHoten() %></a></li>
      <li><a href="dangnhapcontroller?logout=0"><span class="glyphicon glyphicon-log-out"></span>Đăng Xuất</a></li>
      <%} %>
    </ul>
  </div>
</nav>

<div class="modal fade" id="myModalSignin">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Thông tin đăng nhập</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
        	
        	
          <form method="post" action="dangnhapcontroller">
          	Tên đăng nhập: <input type="text" name="txtun" class="form-control"> <br>
          	Mật khẩu : <input type="password" name="txtpass" class="form-control"> <br>
          	<input type="submit" name="but1" value="Đăng nhập" class="btn-primary">
          </form>
        </div>
        
      </div>
    </div>
  </div>

<div class="modal fade" id="myModalSignup">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Đăng ký thành viên</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
        	
        	
          <form method="post" action="dangkycontroller">
          	Họ tên khách hàng: <input type="text" name="txtname" class="form-control"> <br>
          	Địa chỉ: <input type="text" name="txtaddress" class="form-control"> <br>
          	Số điện thoại: <input type="tel" name="txtphone" pattern="[0]{1}[0-9]{9}" class="form-control"> <br>
          	Email: <input type="email" name="txtemail" class="form-control"> <br>
          	Tên đăng nhập: <input type="text" name="txtun" class="form-control"> <br>
          	Mật khẩu : <input type="password" name="txtpwd" class="form-control"> <br>
          	<input type="submit" name="but2" value="Đăng ký" class="btn-primary">
          </form>
        </div>
        
      </div>
    </div>
  </div>
 
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
  					<tr>
  						<td colspan="2"><h6>GIỎ HÀNG CỦA BẠN</h6></td>
  					</tr>
  					<%	
  					
  					ArrayList<giohangbean> dsgh=ghss.getgiohang();
  					for(giohangbean k:dsgh){
  					%>
  						<tr>
  							<td style="display:flex;flex-direction:row">
  								<div><img src="<%=k.getAnh()%>" width="100px" height="120px">
  								</div>
  								
  								<div style="margin-left:10px">
  									<p><strong><%=k.getTensach() %></strong></p><br>
  									
  										<form method="post" action="giohangcontroller?mscn=<%=k.getMasach()%>">
  										<p>Giá: <%=k.getGia() %>đ x 
  										<input type="number" name="txtsl" min="1" value=<%=k.getSoluong() %> style="width:40px">
  										<input class= "btn-link" type="submit" name="btncn" value="Cập nhật" >
  										   | <span><a class= "btn-link" href="giohangcontroller?msxoa=<%=k.getMasach()%>">Trả lại</a></span>
  										</form>
  										 
  									</p>
  								</div>
  							</td>
  							
  						</tr>
  						
  				<%}%>
  					<tr>
  						<td><h4><strong>Tổng cộng: <%=ghss.tongtien() %>VNĐ</strong></h4></td>
  					</tr>
  					<tr>
  						<td align="center">
  							<span><a class = "btn btn-default" href="giohangcontroller?xoaAll=0" >Trả lại toàn bộ</a></span>
  							<span><a class = "btn btn-default" href="nhasachminhkhai" >Tiếp tục mua hàng</a></span>
  							<span><a class = "btn btn-primary" href="addhoadoncontroller" >Xác nhận đặt mua</a></span>

  							
  						</td>
  					</tr>
			
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