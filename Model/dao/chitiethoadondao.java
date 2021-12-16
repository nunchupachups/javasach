package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.chitiethoadonbean;
import bean.khachhangbean;

public class chitiethoadondao {
	public ArrayList<chitiethoadonbean> getchitiethoadon(Long mahd) throws Exception{
		ArrayList<chitiethoadonbean> ds=new ArrayList<chitiethoadonbean>();
		DungChung dc=new DungChung();
		dc.KetNoi();
		String sql="select * from ChiTietHoaDon where MaHoaDon=?";
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		cmd.setLong(1, mahd);
		ResultSet rs=cmd.executeQuery();
		while (rs.next()) {
			Long machitiethd=rs.getLong(1);
			String masach=rs.getNString(2);
			int soluongmua=rs.getInt(3);
			ds.add(new chitiethoadonbean(machitiethd, masach, soluongmua, mahd));
		}
		rs.close();
		dc.cn.close();
		return ds;
	}
	public int addchitiethd(String masach, int soluongmua, Long mahd) throws Exception{
		DungChung dc= new DungChung();
		dc.KetNoi();
		String sql="select * from ChiTietHoaDon where MaSach=? and MaHoaDon=?";
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		cmd.setString(1, masach);
		cmd.setLong(2, mahd);
		ResultSet rs=cmd.executeQuery();
		if (rs.next()) {
			int sl=rs.getInt(3)+soluongmua;
			Long macthd=rs.getLong(1);
			sql="update ChiTietHoaDon set SoLuongMua=? where MaChiTietHD=?";
			cmd=dc.cn.prepareStatement(sql);
			cmd.setInt(1, sl);
			cmd.setLong(2, macthd);
			int kq=cmd.executeUpdate();
			dc.cn.close();
			rs.close();
		}else {
			sql="insert into ChiTietHoaDon (MaSach, SoLuongMua, MaHoaDon) values (?,?,?)";
			cmd=dc.cn.prepareStatement(sql);
			cmd.setString(1, masach);
			cmd.setInt(2, soluongmua);
			cmd.setLong(3, mahd);
			int kq=cmd.executeUpdate();
			dc.cn.close();
		}
		return 1;
		
	}
	public int xoachitiethoadon(Long macthd) throws Exception{
		DungChung dc= new DungChung();
		dc.KetNoi();
		String sql="delete from ChiTietHoaDon where MaChiTietHD=?";
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		cmd.setLong(1, macthd);
		int kq=cmd.executeUpdate();
		dc.cn.close();
		return kq;
	}
	public int capnhatchitiethoadon(Long macthd, String masach, int soluongmua) throws Exception{
		DungChung dc= new DungChung();
		dc.KetNoi();
		String sql="update ChiTietHoaDon set MaSach=?, SoLuongMua=? where MaChiTietHD=?";
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		cmd.setNString(1, masach);
		cmd.setInt(2, soluongmua);
		cmd.setLong(3, macthd);
		int kq=cmd.executeUpdate();
		dc.cn.close();
		return kq;
	}
}
