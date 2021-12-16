package bo;

import java.util.ArrayList;

import bean.loaibean;
import bean.sachbean;
import dao.loaidao;

public class loaibo {
	loaidao ldao = new loaidao();
	public ArrayList<loaibean> getloai() throws Exception{
		return ldao.getloai();
	}
	public int xoaloai(Long maloai) throws Exception{
		return ldao.xoaloai(maloai);
	}
	public ArrayList<loaibean> timloai(String key) throws Exception{
		ArrayList<loaibean> ds=ldao.getloai();
		ArrayList<loaibean> tam= new ArrayList<loaibean>();
	   	for(loaibean s: ds)
	   		if(s.getTenloai().trim().toLowerCase().contains(key.trim().toLowerCase())||
	   				s.getMaloai().trim().toLowerCase().contains(key.trim().toLowerCase()))
	tam.add(s);
	return tam;
	}
	public int themloai(String maloai, String tenloai) throws Exception{
		return ldao.themloai(maloai, tenloai);
	}
	public boolean tim(String maloai) throws Exception{
		ArrayList<loaibean> ds=ldao.getloai();
	   	for(loaibean s: ds)
	   		if(s.getMaloai().equals(maloai)) return true;
	return false;
	}
}
