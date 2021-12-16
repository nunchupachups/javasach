package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.chitiethoadonbean;
import bean.khachhangbean;
import bean.sachbean;
import bo.chitiethoadonbo;

public class sachdao {
	public ArrayList<sachbean> getsach() throws Exception{
		ArrayList<sachbean> ds=new ArrayList<sachbean>();
		DungChung dc=new DungChung();
		dc.KetNoi();
		String sql="select * from sach";
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		ResultSet rs=cmd.executeQuery();
		while(rs.next()) {
			String masach=rs.getString("masach"); 
			String tensach=rs.getString("tensach");
			String tacgia=rs.getString("tacgia"); 
			Long soluong=rs.getLong("soluong");
			Long gia=rs.getLong("gia");
			String anh=rs.getString("anh");
			String maloai=rs.getString("maloai");
			String sotap=rs.getNString("sotap");
			Date ngaynhap=rs.getDate("NgayNhap");
			ds.add(new sachbean(masach, tensach, tacgia, soluong, gia, anh, maloai, ngaynhap, sotap));
		}
		//b6:Dong
		rs.close();
		dc.cn.close();
		return ds;
	}
	public int xoasach(String masach) throws Exception{
		DungChung dc=new DungChung();
		dc.KetNoi();
		String sql="delete from sach where masach=?";
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		cmd.setString(1, masach);
		int kq=cmd.executeUpdate();
		dc.cn.close();
		return kq;
	}
	public int suasach(String masach, String tensach, String tacgia, long soluong, long gia, String maloai, String sotap, String anh, Date ngaynhap) throws Exception{
		DungChung dc=new DungChung();
		dc.KetNoi();
		String sql="update sach set tensach=?, soluong=?, gia=?, maloai=?, sotap=?, anh=?, NgayNhap=?, tacgia=? where masach=?";
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		cmd.setNString(1, tensach);
		cmd.setLong(2, soluong);
		cmd.setLong(3, gia);
		cmd.setNString(4, maloai);
		cmd.setNString(5, sotap);
		cmd.setNString(6, anh);
		cmd.setDate(7, (java.sql.Date) ngaynhap);
		cmd.setNString(8, tacgia);
		cmd.setNString(9, masach);
		int kq=cmd.executeUpdate();
		dc.cn.close();
		return kq;
	}
	public int themsach(String masach, String tensach, String tacgia, long soluong, long gia, String maloai, String sotap, String anh, Date ngaynhap) throws Exception{
		DungChung dc=new DungChung();
		dc.KetNoi();
		String sql="insert into sach values (?,?,?,?,?,?,?,GETDATE(),?)";
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		cmd.setNString(1, masach);
		cmd.setNString(2, tensach);
		cmd.setLong(3, soluong);
		cmd.setLong(4, gia);
		cmd.setNString(5, maloai);
		cmd.setNString(6, sotap);
		cmd.setNString(7, anh);
		cmd.setNString(8, tacgia);
		int kq=cmd.executeUpdate();
		dc.cn.close();
		return kq;
	}
	
}
