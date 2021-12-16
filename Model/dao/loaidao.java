package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.loaibean;

public class loaidao {
	public ArrayList<loaibean> getloai() throws Exception{
		ArrayList<loaibean> ds =new ArrayList<loaibean>();
		//b1:Ket noi vào csdl
		DungChung dc=new DungChung();
		dc.KetNoi();
		//b2: Lay du lieu ve
		String sql="select * from loai";
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		//b3: truyen tham so
		//b4: Thuc hien cau lenh sql
		ResultSet rs=cmd.executeQuery();
		//b5: duyet qua tap ket qua trong rs
		while(rs.next()) {
			String maloai=rs.getString("maloai");
			String tenloai=rs.getNString("tenloai");
			ds.add(new loaibean(maloai, tenloai));
		}
		//b6:Dong
		rs.close();
		dc.cn.close();
	 	return ds;
	}
	public int xoaloai(Long maloai) throws Exception{
		DungChung dc=new DungChung();
		dc.KetNoi();
		String sql="delete from loai where maloai=?";
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		cmd.setLong(1, maloai);
		int kq=cmd.executeUpdate();
		dc.cn.close();
		return kq;
	}
	public int themloai(String maloai, String tenloai) throws Exception{
		DungChung dc=new DungChung();
		dc.KetNoi();
		String sql="insert into loai values (?,?)";
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		cmd.setNString(1, maloai);
		cmd.setNString(2, tenloai);
		int kq=cmd.executeUpdate();
		dc.cn.close();
		return kq;
	}
}
