package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;


import bean.khachhangbean;


public class khachhangdao {
	public khachhangbean getkhachhang(String un, String pwd) throws Exception{
		DungChung dc=new DungChung();
		dc.KetNoi();
		String sql="select * from KhachHang where tendn=? and pass=?";
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		cmd.setString(1, un);
		cmd.setString(2, pwd);
		ResultSet rs=cmd.executeQuery();
		if (rs.next()) {
			Long makh=rs.getLong(1);
			String hoten=rs.getNString(2);
			String diachi=rs.getNString(3);
			String sodt=rs.getString(4);
			String email=rs.getNString(5);
			String tendn=rs.getNString(6);
			String pass=rs.getNString(7);
			khachhangbean ds = new khachhangbean(makh, hoten, diachi, sodt, email, tendn, pass);
			rs.close();
			dc.cn.close();
			return ds;
		}
		rs.close();
		dc.cn.close();
		return null;
	}
	public khachhangbean getkhachhang(String un) throws Exception{
		DungChung dc=new DungChung();
		dc.KetNoi();
		String sql="select * from KhachHang where tendn=?";
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		cmd.setString(1, un);
		ResultSet rs=cmd.executeQuery();
		if (rs.next()) {
			Long makh=rs.getLong(1);
			String hoten=rs.getNString(2);
			String diachi=rs.getNString(3);
			String sodt=rs.getString(4);
			String email=rs.getNString(5);
			String tendn=rs.getNString(6);
			String pass=rs.getNString(7);
			khachhangbean ds = new khachhangbean(makh, hoten, diachi, sodt, email, tendn, pass);
			rs.close();
			dc.cn.close();
			return ds;
		}
		rs.close();
		dc.cn.close();
		return null;
	}
	
	public int addkhachhang(String hoten, String diachi, String sodt, String email, String tendn, String pass) throws Exception{
		DungChung dc=new DungChung();
		dc.KetNoi();
		String sql="insert into KhachHang (hoten, diachi, sodt, email, tendn, pass) values (?,?,?,?,?,?)";
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		cmd.setNString(1, hoten);
		cmd.setNString(2, diachi);
		cmd.setNString(3, sodt);
		cmd.setNString(4, email);
		cmd.setNString(5, tendn);
		cmd.setNString(6, pass);
		int kq=cmd.executeUpdate();
		dc.cn.close();
		return kq;
	}
}
