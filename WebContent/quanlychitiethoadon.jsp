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
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
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
	<h4 style="color:red"><c:out value="Mã hoá đơn: ${mahd }"></c:out></h4>
	<h4 style="color:red"><c:out value="Mã khách hàng: ${makh }"></c:out></h4>
	<h4 style="color:red"><c:out value="Tên khách hàng: ${hoten }"></c:out></h4>
	<h4 style="color:red"><c:out value="Tổng tiền: ${tongtien } VNĐ"></c:out></h4>
	<c:choose>
		<c:when test="${ls!=null}">
			<table class="table table-hover">
	    <thead>
	      <tr>
	      	<th>Bìa sách</th>
	        <th>Mã sách</th>
	        <th>Tên sách</th>
	        <th>Loại sách</th>
	        <th>Giá</th>
	        <th>Số lượng mua</th>

	        <th>Tác giả</th>
	      </tr>
	    </thead>
	    <tbody>
	    <c:forEach items="${dscthd}" var="h">
	      <tr>
	      	<td><img alt="" src="${h.getAnh()}" width="80px" height="100px"></td>
	        <td><c:out value="${h.getMasach()}"></c:out></td>
	        <td><c:out value="${h.getTensach()}"></c:out></td>
	        <td><c:out value="${h.getTenloai()}"></c:out></td>
	       	<td><c:out value="${h.getGia()}"></c:out></td>
	        <td><c:out value="${h.getSoluongmua()}"></c:out></td>

	        <td><c:out value="${h.getTacgia()}"></c:out></td>
	      </tr>
	     </c:forEach>
	    </tbody>
  </table>
  <a href="quanlydonhang" style="font-size: 18px; margin-left: 20px; margin-bottom: 80px; float: left;"><i class="fas fa-arrow-left"></i> Trở lại</a>
		</c:when>
		<c:otherwise>
			<table class="table table-hover">
	    <thead>
	      <tr>
	      	<th>Bìa sách</th>
	        <th>Mã sách</th>
	        <th>Tên sách</th>
	        <th>Loại sách</th>
	       	<th>Giá</th>
	        <th>Số lượng mua</th>

	        <th>Tác giả</th>
	        
	        <th></th>
	        <th></th>
	      </tr>
	    </thead>
	    <tbody>
	    <c:forEach items="${dscthd}" var="h">
	    <form method="post" action="quanlychitiethoadon?capnhat=0&mahoadon=${mahd}&macthd=${h.getMachitiethoadon()}">
	      <tr>
	      	<td><img alt="" src="${h.getAnh()}" width="80px" height="100px"></td>
	        <td>
	        	<select name="sach" id="sach">
	        	<c:forEach items="${dssach }" var="s">
	        		<c:choose>
	        			<c:when test="${s.getMasach().equals(h.getMasach())}">
	        				<option value="${s.getMasach() }" selected="selected"><c:out value="${s.getMasach() }"></c:out></option>
	        			</c:when>
	        			<c:otherwise>
	        				<option value="${s.getMasach() }"><c:out value="${s.getMasach() }"></c:out></option>
	        			</c:otherwise>
	        		</c:choose>
				  
				</c:forEach>
				</select>
	        </td>
	        <td><c:out value="${h.getTensach()}"></c:out></td>
	        <td><c:out value="${h.getTenloai()}"></c:out></td>
	        <td><c:out value="${h.getGia()}"></c:out></td>
	        <td><input type="number" name="txtsl" min="1" value=<c:out value="${h.getSoluongmua()}"></c:out> style="width:40px"></td>

	        <td><c:out value="${h.getTacgia()}"></c:out></td>
	        
	        <td><a href="quanlychitiethoadon?xoa=0&macthd=${h.getMachitiethoadon()}&mahoadon=${mahd}">Xoá</a></td>
	        <td><input class= "btn-link" type="submit" name="btncn" value="Cập nhật" ></td>
	      </tr>
	     </form>
	     </c:forEach>
	    </tbody>
  </table>
  <a href="quanlydonhang" style="font-size: 18px; margin-left: 20px; margin-bottom: 80px; float: left;"><i class="fas fa-arrow-left"></i> Trở lại</a>
  <a href="#" data-toggle="modal" data-target="#myModal" style="font-size: 18px; margin-right: 50px; float: right;"><i class="far fa-plus-square" ></i> Thêm sách</a>
		</c:otherwise>
	</c:choose>
	
  
  
<div class="modal fade" id="myModal">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Thêm sách</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
        	
        	
          <form method="post" action="quanlychitiethoadon?them=0&mahoadon=${mahd}">
          	Mã sách: <select name="masach" class="form-control" >
	        	<c:forEach items="${dssach }" var="s">
	        		<c:choose>
	        			<c:when test="${s.getMasach().equals(h.getMasach())}">
	        				<option value="${s.getMasach() }" selected="selected"><c:out value="${s.getMasach() }"></c:out></option>
	        			</c:when>
	        			<c:otherwise>
	        				<option value="${s.getMasach() }"><c:out value="${s.getMasach() }"></c:out></option>
	        			</c:otherwise>
	        		</c:choose>
				  
				</c:forEach>
				</select> 
				<br>
          	Số lượng mua : <input type="number" min="1" value="1" name="slthem" class="form-control"> <br>
          	<input type="submit" name="but1" value="Thêm sách" class="btn-primary">
          </form>
        </div>
        
      </div>
    </div>
  </div>
</body>
</html>