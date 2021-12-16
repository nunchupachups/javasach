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

		<c:if test="${tb!=null }">
			<script language="javascript">
			alert("Mã sách này đã tồn tại. Vui lòng thử lại mã khác.");
			</script>
		</c:if>

    <nav class="navbar navbar-inverse">
  	<div class="container-fluid">
    <ul class="nav navbar-nav">
      <li><a href="quanlydonhang">Quản lý hoá đơn</a></li>
      <li class="active"><a href="quanlysach">Quản lý sách</a></li>
      <li><a href="quanlyloai">Quản lý loại</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span><c:out value="Xin chào,${sessionScope.admin.getHoten()}"></c:out></a></li>
      <li><a href="dangnhapcontroller?logout=0"><span class="glyphicon glyphicon-log-out"></span>Đăng Xuất</a></li>
    </ul>
 	</div>
	</nav>
	 <table align="center" cellspacing="0" width="1200"  style="font-size:12px;">
  <tr>
  	<td valign="top" width="150">
  		<table class="table table-hover">
  			<c:forEach items="${dsloai}" var="loai">		
  			<tr>
  				<td>
  					<a href="quanlysach?ml=${loai.getMaloai() }">
  					<c:out value="${loai.getTenloai() }"></c:out> 
  					</a>
  				</td>
  			</tr>
  			</c:forEach>
  		</table>
  	</td>
  	<td valign="top" width="1050">
  	<table>
  	<tr>
  		<td valign="top" >
  		<form action="quanlysach" method="post" align="right" style="float:right;margin-bottom: 50px;margin-top: 10px;margin-right: 20px;">
  			<input type="text" name="txtTim">
  			<input type="submit" value="Search" name="but1">
  		</form>
  		<a href="#" data-toggle="modal" data-target="#myModal" style="font-size: 18px; margin-left: 50px;margin-top: 10px; float: left;"><i class="far fa-plus-square" ></i> Thêm sách</a>
  	</td>
  	</tr>
  	
  	
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
        	
        	
          <form method="post" action="addsach" enctype= "multipart/form-data"> 
          	Mã sách:  <input type="text" name="txtmasach" required="required" class="form-control">
          	Tên sách:<input type="text" name="txttensach" required="required" class="form-control">
          	Tác giả:<input type="text" name="txttacgia" required="required" class="form-control">
          	Số lượng:<input type="number" min="1" required="required" name="txtsoluong" class="form-control">
          	Giá:<input type="number" min="1" name="txtgia" required="required" class="form-control">
          	Mã loại:<select name="cbbloai" required="required" class="form-control" >
	        	<c:forEach items="${dsloai }" var="s">
	        			<option value="${s.getMaloai() }"><c:out value="${s.getMaloai() }"></c:out></option>
				</c:forEach>
				</select>
          	Số tập:<input type="text" required="required" name="txtsotap" class="form-control">
          	Ảnh:<input type="file" required="required" name="anh">
          	<input type="submit" name="but1" value="Thêm sách" class="btn-primary">
          </form>
        </div>
        
      </div>
    </div>
  </div>
  
  
  	<tr>
  		<td>
  			<table class="table table-hover">
  		<thead>
  			<th>Bìa sách</th>
  			<th>Mã sách</th>
  			<th>Tên sách</th>
  			<th>Giá</th>
  			<th>Số lượng</th>
  			<th>Mã loại</th>
  			<th>Số tập</th>
  			<th>Ngày nhập</th>
  			<th>Tác giả</th>
  			<th></th>
  		</thead>
  		<tbody>
  	
	    <c:forEach items="${dssach}" var="s">
	    <form  method="post" action="capnhatsach?masach=${s.getMasach()}&fileanh=${s.getAnh()}" enctype= "multipart/form-data">
	      <tr>
	      	<td style="position: relative;"  width="50"><img alt="" src="${s.getAnh()}" width="80px" height="100px" >
	      	<input type="file" name="fileanh" style="position: absolute; bottom:30px; left:100px;z-index: 999;">
	      	</td>
	      	<td width="70"><c:out value="${s.getMasach()}"></c:out></td>
	        <td style="font-weight:bold;"><input type="text" name="txttensach" size="10" value="${s.getTensach()}" title="${s.getTensach()}"></td>
	        <td width="70">
	        	<input type="text" name="txtgia" size="5" value="${s.getGia() }">
	        </td>
	        <td>
  				<input type="number" name="txtsoluong" min="1" value="${s.getSoluong()}" style="width:70px">
	        </td>
	        <td width="70">
	        	<select name="txtmaloai" id="sach">
	        	<c:forEach items="${dsloai}" var="h">
	        		<c:choose>
	        			<c:when test="${h.getMaloai().equals(s.getMaloai())}">
	        				<option value="${h.getMaloai() }" selected="selected"><c:out value="${h.getMaloai() }"></c:out></option>
	        			</c:when>
	        			<c:otherwise>
	        				<option value="${h.getMaloai() }"><c:out value="${h.getMaloai() }"></c:out></option>
	        			</c:otherwise>
	        		</c:choose>
				  
				</c:forEach>
				</select>
	        </td>
	       	<td><input type="text" name="txtsotap" size="1" value="${s.getSotap()}"></td>
	        <td><input type="date" name="txtngaynhap" size="5" value="${s.getNgayNhap()}"></td>
	        <td><input type="text" name="txttacgia" size="5" title="${s.getTacgia()}" value="${s.getTacgia()}"></td>
	      	<td width="85">
	      		<a style="padding-left: 8px;" href="quanlysach?xoa=0&masach=${s.getMasach() }">Xoá</a><br>
	      		<input class= "btn-link" type="submit" name="btncn" value="Cập nhật" >
	      	</td>
	      </tr>
	      </form>
	     </c:forEach>
	     </tbody>
  </table>
  		</td>
  	</tr>
  	</table>
  	</td>
  </tr>
  </table>
  
</body>
</html>