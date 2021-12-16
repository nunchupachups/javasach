package bean;

public class adminbean {
	private String tendangnhap;
	public adminbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	private String matkhau;
	private boolean quyen;
	private String hoten;
	
	
	public adminbean(String tendangnhap, String matkhau, boolean quyen, String hoten) {
		super();
		this.tendangnhap = tendangnhap;
		this.matkhau = matkhau;
		this.quyen = quyen;
		this.hoten = hoten;
	}
	
	public String getTendangnhap() {
		return tendangnhap;
	}
	public void setTendangnhap(String tendangnhap) {
		this.tendangnhap = tendangnhap;
	}
	public String getMatkhau() {
		return matkhau;
	}
	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}
	public boolean isQuyen() {
		return quyen;
	}
	public void setQuyen(boolean quyen) {
		this.quyen = quyen;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
}
