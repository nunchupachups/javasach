package bo;

import java.util.ArrayList;

import bean.chitiethdbean;
import dao.chitiethddao;

public class chitiethdbo {
	chitiethddao cthddao=new chitiethddao();
	public ArrayList<chitiethdbean> getchitiethd(Long mahd) throws Exception{
		return cthddao.getchitiethd(mahd);
	}
}
