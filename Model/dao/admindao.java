package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.adminbean;

public class admindao {
	public adminbean getadmin(String un, String pwd) throws Exception{
		DungChung dc=new DungChung();
		dc.KetNoi();
		String sql="select * from DangNhap where TenDangNhap=? and MatKhau=?";
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		cmd.setString(1, un);
		cmd.setString(2, pwd);
		ResultSet rs=cmd.executeQuery();
		if (rs.next()) {
			String tendangnhap=rs.getNString(1);
			String matkhau=rs.getNString(2);
			Boolean quyen=rs.getBoolean(3);
			String hoten=rs.getNString(4);
			adminbean ad = new adminbean(tendangnhap, matkhau, quyen, hoten);
			rs.close();
			dc.cn.close();
			return ad;
		}
		rs.close();
		dc.cn.close();
		return null;
	}
	public adminbean getadmin(String un) throws Exception{
		DungChung dc=new DungChung();
		dc.KetNoi();
		String sql="select * from DangNhap where TenDangNhap=?";
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		cmd.setString(1, un);
		ResultSet rs=cmd.executeQuery();
		if (rs.next()) {
			String tendangnhap=rs.getNString(1);
			String matkhau=rs.getNString(2);
			Boolean quyen=rs.getBoolean(3);
			String hoten=rs.getNString(4);
			adminbean ad = new adminbean(tendangnhap, matkhau, quyen, hoten);
			rs.close();
			dc.cn.close();
			return ad;
		}
		rs.close();
		dc.cn.close();
		return null;
	}
	public int addadmin(String tendn, String matkhau, boolean quyen, String hoten) throws Exception{
		DungChung dc=new DungChung();
		dc.KetNoi();
		String sql="insert into DangNhap (TenDangNhap, MatKhau, Quyen) values (?,?,?,?)";
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		cmd.setNString(1, tendn);
		cmd.setNString(2, matkhau);
		cmd.setBoolean(3, quyen);
		cmd.setNString(4, hoten);
		int kq=cmd.executeUpdate();
		dc.cn.close();
		return kq;
	}
}
