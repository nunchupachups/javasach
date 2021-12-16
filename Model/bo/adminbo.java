package bo;

import bean.adminbean;
import dao.admindao;

public class adminbo {
	admindao addao=new admindao();
	public adminbean getadmin(String un, String pwd) throws Exception{
		return addao.getadmin(un, pwd);
	}
	public adminbean getadmin(String un) throws Exception{
		return addao.getadmin(un);
	}
	public int addadmin(String tendn, String matkhau, boolean quyen, String hoten) throws Exception{
		return addao.addadmin(tendn, matkhau, quyen, hoten);
	}
}
