<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <nav class="navbar navbar-inverse">
  	<div class="container-fluid">
    <ul class="nav navbar-nav">
        <li class="active"><a href="quanlydonhang">Quản lý hoá đơn</a></li>
      <li><a href="quanlysach">Quản lý sách</a></li>
      <li><a href="quanlyloai">Quản lý loại</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span><c:out value="Xin chào,${sessionScope.admin.getHoten()}"></c:out></a></li>
      <li><a href="dangnhapcontroller?logout=0"><span class="glyphicon glyphicon-log-out"></span>Đăng Xuất</a></li>
    </ul>
 	</div>
	</nav>
	<ul class="nav nav-tabs">
	
			<li class="active"><a data-toggle="tab" href="#chuaduyet">Hoá đơn chưa được duyệt</a></li>
    		<li><a data-toggle="tab" href="#daduyet">Hoá đơn đã thanh toán</a></li>

    
  </ul>

  <div class="tab-content">
    <div id="chuaduyet" class="tab-pane fade in active">
      <h4 style="color:red">DANH SÁCH HOÁ ĐƠN CHƯA ĐƯỢC DUYỆT</h4>
      <table class="table table-hover">
	    <thead>
	      <tr>
	        <th>Mã hoá đơn</th>
	        <th>Mã khách hàng</th>
	        <th>Tên khách hàng</th>
	        <th>Ngày mua</th>
	        <th></th>
	        <th></th>
	        <th></th>
	      </tr>
	    </thead>
	    <tbody>
	    <c:forEach items="${dshd}" var="h">
	      <tr>
	        <td><c:out value="${h.getMahoadon()}"></c:out></td>
	        <td><c:out value="${h.getMakhachhang()}"></c:out></td>
	        <td><c:out value="${h.getHoten()}"></c:out></td>
	        <td><c:out value="${h.getNgaymua()}"></c:out></td>
	        <td><a href="quanlychitiethoadon?mahoadon=${h.getMahoadon()}">Xem chi tiết</a></td>
	        <td><a href="quanlydonhang?xoa=0&mahoadon=${h.getMahoadon()}">Xoá</a></td>
	        <td><a href="quanlydonhang?duyet=0&mahoadon=${h.getMahoadon()}">Duyệt đơn</a></td>
	      </tr>
	     </c:forEach>
	    </tbody>
  </table>
    </div>

    <div id="daduyet" class="tab-pane fade">
      <h4 style="color:red">DANH SÁCH HOÁ ĐƠN ĐÃ THANH TOÁN</h4>
      <table class="table table-hover">
	    <thead>
	      <tr>
	        <th>Mã hoá đơn</th>
	        <th>Mã khách hàng</th>
	        <th>Tên khách hàng</th>
	        <th>Ngày mua</th>
	        <th></th>
	      </tr>
	    </thead>
	    <tbody>
	    <c:forEach items="${dslshd}" var="h">
	      <tr>
	        <td><c:out value="${h.getMahoadon()}"></c:out></td>
	        <td><c:out value="${h.getMakhachhang()}"></c:out></td>
	        <td><c:out value="${h.getHoten()}"></c:out></td>
	        <td><c:out value="${h.getNgaymua()}"></c:out></td>
	        <td><a href="quanlychitiethoadon?ls=0&mahoadon=${h.getMahoadon()}">Xem chi tiết</a></td>
	      </tr>
	     </c:forEach>
	    </tbody>
  </table>
    </div>
  </div>
  
</body>
</html>