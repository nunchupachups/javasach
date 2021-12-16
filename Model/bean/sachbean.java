package bean;

import java.util.Date;

public class sachbean {
	private String masach;
	private String tensach;
	private String tacgia;
	private Long soluong;
	private Long gia;
	private String anh;
	private String maloai;
	private Date NgayNhap;
	
	private String sotap;
	public String getMasach() {
		return masach;
	}
	public void setMasach(String masach) {
		this.masach = masach;
	}
	public String getTensach() {
		return tensach;
	}
	public void setTensach(String tensach) {
		this.tensach = tensach;
	}
	public String getTacgia() {
		return tacgia;
	}
	public void setTacgia(String tacgia) {
		this.tacgia = tacgia;
	}
	public Long getSoluong() {
		return soluong;
	}
	public void setSoluong(Long soluong) {
		this.soluong = soluong;
	}
	public Long getGia() {
		return gia;
	}
	public void setGia(Long gia) {
		this.gia = gia;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public String getMaloai() {
		return maloai;
	}
	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}
	public Date getNgayNhap() {
		return NgayNhap;
	}
	public void setNgayNhap(Date ngayNhap) {
		NgayNhap = ngayNhap;
	}
	public String getSotap() {
		return sotap;
	}
	public void setSotap(String sotap) {
		this.sotap = sotap;
	}
	public sachbean(String masach, String tensach, String tacgia, Long soluong, Long gia, String anh, String maloai, Date NgayNhap, String sotap) {
		super();
		this.masach = masach;
		this.tensach = tensach;
		this.tacgia = tacgia;
		this.soluong = soluong;
		this.gia = gia;
		this.anh = anh;
		this.maloai = maloai;
		this.NgayNhap = NgayNhap;
		this.sotap=sotap;
	}
	
	public sachbean() {
		super();
		// TODO Auto-generated constructor stub
	}
}
