package bo;

import java.util.ArrayList;
import java.util.Date;

import bean.sachbean;
import dao.sachdao;

public class sachbo {
	sachdao sdao=new sachdao();
	giohangbo ghbo=new giohangbo();
	public ArrayList<sachbean> getsach() throws Exception{
		return sdao.getsach();
	}
	public Long DemSach(String maloai) throws Exception{
		ArrayList<sachbean> ds=getsach();
		Long d=(long)0;
			for(sachbean s: ds)
				if(s.getMaloai().equals(maloai))
					d++;
			return d;
	}
	public ArrayList<sachbean> TimLoai(String maloai) throws Exception{
		ArrayList<sachbean> ds= getsach();
		ArrayList<sachbean> tam= new ArrayList<sachbean>();
			for(sachbean s: ds)
				if(s.getMaloai().equals(maloai))
					tam.add(s);
			return tam;
	   }
	public sachbean TimSach(String masach) throws Exception{
		ArrayList<sachbean> ds= getsach();
			for(sachbean s: ds)
				if(s.getMasach().equals(masach))
					return s;
		return null;	
	   }
	public ArrayList<sachbean> Tim(String key) throws Exception{
		ArrayList<sachbean> ds= getsach();
		ArrayList<sachbean> tam= new ArrayList<sachbean>();
		   	for(sachbean s: ds)
		   		if(s.getTensach().trim().toLowerCase().contains(key.trim().toLowerCase())||
		   				s.getTacgia().trim().toLowerCase().contains(key.trim().toLowerCase())||
		   				s.getMasach().trim().toLowerCase().contains(key.trim().toLowerCase())||
		   				s.getMaloai().trim().toLowerCase().contains(key.trim().toLowerCase()))
		tam.add(s);
		return tam;
	   }
	public int xoasach(String masach) throws Exception{
		return sdao.xoasach(masach);
	}
	public int suasach(String masach, String tensach, String tacgia, long soluong, long gia, String maloai, String sotap, String anh, Date ngaynhap) throws Exception{
		return sdao.suasach(masach, tensach, tacgia, soluong, gia, maloai, sotap, anh, ngaynhap);
	}
	public int themsach(String masach, String tensach, String tacgia, long soluong, long gia, String maloai, String sotap, String anh, Date ngaynhap) throws Exception{
		return sdao.themsach(masach, tensach, tacgia, soluong, gia, maloai, sotap, anh, ngaynhap);
	}
}

