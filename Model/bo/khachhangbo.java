package bo;


import bean.khachhangbean;
import dao.khachhangdao;

public class khachhangbo {
	khachhangdao khdao=new khachhangdao();
	public khachhangbean getkhachhang(String un, String pwd) throws Exception{
		return khdao.getkhachhang(un, pwd);
	}
	public khachhangbean getkhachhang(String un) throws Exception{
		return khdao.getkhachhang(un);
	}
	public int addkhachhang(String hoten, String diachi, String sodt, String email, String tendn, String pass) throws Exception{
		return khdao.addkhachhang(hoten, diachi, sodt, email, tendn, pass);
	}
	
}
