package bo;

import java.sql.Date;
import java.util.ArrayList;

import bean.hoadonbean;
import dao.hoadondao;

public class hoadonbo {
	hoadondao hddao=new hoadondao();
	public ArrayList<hoadonbean> gethoadon(Long makh) throws Exception{
		return hddao.gethoadon(makh);
	}
	public ArrayList<hoadonbean> getlshoadon(Long makh) throws Exception{
		return hddao.getlshoadon(makh);
	}
	public Long addhoadon(Long makh, Date ngaymua) throws Exception{
		return hddao.addhoadon(makh, ngaymua);
	}
	public hoadonbean timhoadon(long mahd) throws Exception{
		return hddao.timhoadon(mahd);
	}
	public Long tongtien(long mahd) throws Exception{
		return hddao.tongtien(mahd);
	}
	public ArrayList<hoadonbean> getdshoadon() throws Exception{
		return hddao.getdshoadon();
	}
	public ArrayList<hoadonbean> getdslshoadon() throws Exception{
		return hddao.getdslshoadon();
	}
	public int xoahoadon(Long mahd) throws Exception{
		return hddao.xoahoadon(mahd);
	}
	public int duyethoadon(Long mahd) throws Exception{
		return hddao.duyethoadon(mahd);
	}
}
