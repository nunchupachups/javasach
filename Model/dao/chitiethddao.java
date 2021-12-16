package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.adminbean;
import bean.chitiethdbean;

public class chitiethddao {
	public ArrayList<chitiethdbean> getchitiethd(Long mahd) throws Exception{
		ArrayList<chitiethdbean> ds=new ArrayList<chitiethdbean>();
		DungChung dc=new DungChung();
		dc.KetNoi();
		String sql="select c.MaHoaDon,c.MaSach, tensach,tenloai,c.SoLuongMua, gia, tacgia, anh, c.makh,hoten,MaChiTietHD\r\n"
				+ "from \r\n"
				+ "(select hd.MaHoaDon,MaSach, SoLuongMua, makh, MaChiTietHD\r\n"
				+ "from hoadon as hd inner join ChiTietHoaDon as ct on hd.MaHoaDon=ct.MaHoaDon \r\n"
				+ "where hd.MaHoaDon=?) as c inner join sach on sach.masach=c.MaSach inner join KhachHang on KhachHang.makh=c.makh inner join loai on loai.maloai=sach.maloai";
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		cmd.setLong(1, mahd);
		ResultSet rs=cmd.executeQuery();
		while (rs.next()) {
			Long mahoadon=rs.getLong(1);
			String masach=rs.getNString(2);
			String tensach=rs.getNString(3);
			String tenloai=rs.getNString(4);
			int soluongmua=rs.getInt(5);
			Long gia=rs.getLong(6);
			String tacgia=rs.getNString(7);
			String anh=rs.getNString(8);
			Long makhachhang=rs.getLong(9);
			String hoten=rs.getNString(10);
			Long machitiethoadon=rs.getLong(11);
			ds.add(new chitiethdbean(mahoadon, masach, tensach, tenloai, soluongmua, gia,tacgia, anh, makhachhang, hoten, machitiethoadon));
		}
		rs.close();
		dc.cn.close();
		return ds;
	}
}
