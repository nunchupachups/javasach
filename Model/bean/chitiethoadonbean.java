package bean;

public class chitiethoadonbean {
	private Long machitiethd;
	private String masach;
	private int soluongmua;
	private Long mahd;
	public chitiethoadonbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public chitiethoadonbean(Long machitiethd, String masach, int soluongmua, Long mahd) {
		super();
		this.machitiethd = machitiethd;
		this.masach = masach;
		this.soluongmua = soluongmua;
		this.mahd = mahd;
	}
	
	public Long getMachitiethd() {
		return machitiethd;
	}
	public void setMachitiethd(Long machitiethd) {
		this.machitiethd = machitiethd;
	}
	public String getMasach() {
		return masach;
	}
	public void setMasach(String masach) {
		this.masach = masach;
	}
	public int getSoluongmua() {
		return soluongmua;
	}
	public void setSoluongmua(int soluongmua) {
		this.soluongmua = soluongmua;
	}
	public Long getMahd() {
		return mahd;
	}
	public void setMahd(Long mahd) {
		this.mahd = mahd;
	}
	
}
