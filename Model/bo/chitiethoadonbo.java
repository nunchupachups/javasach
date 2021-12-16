package bo;

import java.util.ArrayList;

import bean.chitiethoadonbean;
import dao.chitiethoadondao;

public class chitiethoadonbo {
	chitiethoadondao cthddao=new chitiethoadondao();
	public ArrayList<chitiethoadonbean> getchitiethoadon(Long mahd) throws Exception{
		return cthddao.getchitiethoadon(mahd);
	}
	public int addchitiethd(String masach, int soluongmua, Long mahd) throws Exception{
		return cthddao.addchitiethd(masach, soluongmua, mahd);
	}
	public int xoachitiethoadon(Long macthd) throws Exception{
		return cthddao.xoachitiethoadon(macthd);
	}
	public int capnhatchitiethoadon(Long macthd, String masach, int soluongmua) throws Exception{
		return cthddao.capnhatchitiethoadon(macthd, masach, soluongmua);
	}
}
