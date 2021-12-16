package bean;

public class chitiethdbean {
	
	public Long getMahoadon() {
		return mahoadon;
	}
	public void setMahoadon(Long mahoadon) {
		this.mahoadon = mahoadon;
	}
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
	public String getTenloai() {
		return tenloai;
	}
	public void setTenloai(String tenloai) {
		this.tenloai = tenloai;
	}
	public int getSoluongmua() {
		return soluongmua;
	}
	public void setSoluongmua(int soluongmua) {
		this.soluongmua = soluongmua;
	}
	public Long getGia() {
		return gia;
	}
	public void setGia(Long gia) {
		this.gia = gia;
	}
	public String getTacgia() {
		return tacgia;
	}
	public void setTacgia(String tacgia) {
		this.tacgia = tacgia;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public Long getMakhachhang() {
		return makhachhang;
	}
	public void setMakhachhang(Long makhachhang) {
		this.makhachhang = makhachhang;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public Long getMachitiethoadon() {
		return machitiethoadon;
	}
	public void setMachitiethoadon(Long machitiethoadon) {
		this.machitiethoadon = machitiethoadon;
	}
	public chitiethdbean(Long mahoadon, String masach, String tensach, String tenloai, int soluongmua, Long gia,
			String tacgia, String anh, Long makhachhang, String hoten, Long machitiethoadon) {
		super();
		this.mahoadon = mahoadon;
		this.masach = masach;
		this.tensach = tensach;
		this.tenloai = tenloai;
		this.soluongmua = soluongmua;
		this.gia = gia;
		this.tacgia = tacgia;
		this.anh = anh;
		this.makhachhang = makhachhang;
		this.hoten = hoten;
		this.machitiethoadon = machitiethoadon;
	}
	
	public chitiethdbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	private Long mahoadon;
	private String masach;
	private String tensach;
	private String tenloai;
	private int soluongmua;
	private Long gia;
	private String tacgia;
	private String anh;
	private Long makhachhang;
	private String hoten;
	private Long machitiethoadon;
}
