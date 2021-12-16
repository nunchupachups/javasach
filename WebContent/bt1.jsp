<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div style="border: 1px solid black;height: 500px;width: 500px; border-radius: 5px;">
        <div style="background-color: rgb(71, 71, 71); color: white; border-radius: 5px 5px 0 0; padding: 10px;">
            Thư mới
        </div>
        <div style="padding: 10px;">
            <form>
    			Người nhận <input type="text" name="txtnguoinhan" style="border:none;"> <hr>
        		Chủ đề <input type="text" name="txtchude" style="border:none;"> <hr>
        		<textarea name="txtnoidung" style="border: none;" cols="60" rows="20" >
        		</textarea><br>
                <input type="submit" name="btngui" value="Gửi" style=" background-color: rgb(80, 151, 233);color: white; border: none; padding: 10px 30px; border-radius: 5px;">
                <input type="file">
            </form>
        </div>
    </div>
    
    <form action="" style="margin: 20px 0; background-color: rgb(215, 223, 235); height: 350px; width: 300px;padding: 10px;">
        <span style="display: block; font-size: 22px; color: blue;padding: 20px 0;">
            Sinh viên
        </span>
        <b>Mã sinh viên:</b><br>
        <input type="text" name="txtmasv" placeholder="Mã sinh viên" style="width: 250px; display: block; padding: 10px; margin: 5px 0; border-radius: 5px; border: 1px solid rgb(207, 201, 201);">
        <b>Mật Khẩu :</b><br>
        <input type="password" name="txtmatkhau" placeholder="Mật khẩu" style="width: 250px; display: block; padding: 10px; margin: 5px 0; border-radius: 5px; border: 1px solid rgb(207, 201, 201);">
        <input type="submit" name="btnlogin" value="Đăng nhập" style="width: 270px; border: none; color: white; background-color: blue; border-radius: 5px; padding: 10px; margin-top: 20px;">
    </form>
    
    <div style="height: 400px; width: 700px; background-color: rgb(241, 237, 237);">
        <div style="background-color: blue;color: white; font-size: 16px;font-weight: bold; padding: 10px 20px">
            ĐĂNG KÝ
        </div>
        <div style="padding: 10px;">
            <form action="">
                <input type="text" name="txtusername" placeholder="Nhập Username" style="padding: 5px;margin: 5px;width: 300px;">
                <input type="text" name="txtname" placeholder="Nhập Họ và Tên" style="padding: 5px;margin: 5px;width: 300px;">
                <br>
                <input type="text" name="txtpassword" placeholder="Nhập mật khẩu" style="padding: 5px;margin: 5px;width: 300px;">
                <select name="txtgender" id=""  style="padding: 5px;margin: 5px;width: 100px;">
                    <option>Giới Tính</option>
                    <option value="Nam">Nam</option>
                    <option value="Nu">Nữ</option>
                </select>
                <br>
                <input type="text" name="txtpassword2" placeholder="Nhập lại mật khẩu" style="padding: 5px;margin: 5px;width: 300px;">
                <select name="txtday" id="" style="padding: 5px;margin: 5px;width: 100px;">
                    <option>Ngày Sinh</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                    <option value="13">13</option>
                    <option value="14">14</option>
                    <option value="15">15</option>
                    <option value="16">16</option>
                    <option value="17">17</option>
                    <option value="18">18</option>
                    <option value="19">19</option>
                    <option value="20">20</option>
                    <option value="21">21</option>
                    <option value="22">22</option>
                    <option value="23">23</option>
                    <option value="24">24</option>
                    <option value="25">25</option>
                    <option value="26">26</option>
                    <option value="27">27</option>
                    <option value="28">28</option>
                    <option value="29">29</option>
                    <option value="30">30</option>
                    <option value="31">31</option>
                </select>
                <select name="txtmonth" id="" style="padding: 5px;margin-right: 5px;width: 100px;">
                    <option>Tháng</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                </select>
                <select name="txtyear" id="" style="padding: 5px;width: 100px;">
                    <option>Năm</option>
                    <option value="1960">1960</option>
                    <option value="1961">1961</option>
                    <option value="1962">1962</option>
                    <option value="1963">1963</option>
                    <option value="1964">1964</option>
                    <option value="1965">1965</option>
                    <option value="1966">1966</option>
                    <option value="1967">1967</option>
                    <option value="1968">1968</option>
                    <option value="1969">1969</option>
                    <option value="1970">1970</option>
                    <option value="1971">1971</option>
                    <option value="1972">1972</option>
                    <option value="1973">1973</option>
                    <option value="1974">1974</option>
                    <option value="1975">1975</option>
                    <option value="1976">1976</option>
                    <option value="1977">1977</option>
                    <option value="1978">1978</option>
                    <option value="1979">1979</option>
                    <option value="1980">1980</option>
                    <option value="1981">1981</option>
                    <option value="1982">1982</option>
                    <option value="1983">1983</option>
                    <option value="1984">1984</option>
                    <option value="1985">1985</option>
                    <option value="1986">1986</option>
                    <option value="1987">1987</option>
                    <option value="1988">1988</option>
                    <option value="1989">1989</option>
                    <option value="1990">1990</option>
                    <option value="1991">1991</option>
                    <option value="1992">1992</option>
                    <option value="1993">1993</option>
                    <option value="1994">1994</option>
                    <option value="1995">1995</option>
                    <option value="1996">1996</option>
                    <option value="1997">1997</option>
                    <option value="1998">1998</option>
                    <option value="1999">1999</option>
                </select>
                <br>
                <input type="text" name="txtemail" placeholder="Nhập địa chỉ Email" style="padding: 5px;margin: 5px;width: 300px;">
                <select name="txtcity" id="" style="padding: 5px;margin: 5px;width: 100px;">
                    <option>Tỉnh/TP</option>
                    <option value="angiang">An Giang</option>
                    <option value="bariavungtau">Bà Rịa - Vũng Tàu</option>
                    <option value="bacgiang">Bắc Giang</option>
                    <option value="backan">Bắc Kạn</option>
                    <option value="baclieu">Bạc Liêu</option>
                    <option value="bacninh">Bắc Ninh</option>
                    <option value="bentre">Bến Tre</option>
                    <option value="binhdinh">Bình Định</option>
                    <option value="binhduong">Bình Dương</option>
                    <option value="binhphuoc">Bình Phước</option>
                    <option value="binhthuan">Bình Thuận</option>
                    <option value="camau">Cà Mau</option>
                    <option value="caobang">Cao Bằng</option>
                    <option value="daklak">Đắk Lắk</option>
                    <option value="daknong">Đắk Nông</option>
                    <option value="dienbien">Điện Biên</option>
                    <option value="dongnai">Đồng Nai</option>
                    <option value="dongthap">Đồng Tháp</option>
                    <option value="gialai">Gia Lai</option>
                    <option value="hagiang">Hà Giang</option>
                    <option value="hanam">Hà Nam</option>
                    <option value="hatinh">Hà Tĩnh</option>
                    <option value="haiduong">Hải Dương</option>
                    <option value="haugiang">Hậu Giang</option>
                    <option value="hoabinh">Hòa Bình</option>
                    <option value="hungyen">Hưng Yên</option>
                    <option value="khanhhoa">Khánh Hòa</option>
                    <option value="kiengiang">Kiên Giang</option>
                    <option value="kontum">Kon Tum</option>
                    <option value="laichau">Lai Châu</option>
                    <option value="lamdong">Lâm Đồng</option>
                    <option value="langson">Lạng Sơn</option>
                    <option value="laocai">Lào Cai</option>
                    <option value="longan">Long An</option>
                    <option value="namdinh">Nam Định</option>
                    <option value="nghean">Nghệ An</option>
                    <option value="ninhbinh">Ninh Bình</option>
                    <option value="ninhthuan">Ninh Thuận</option>
                    <option value="phutho">Phú Thọ</option>
                    <option value="quangbinh">Quảng Bình</option>
                    <option value="quangnam">Quảng Nam</option>
                    <option value="quangngai">Quảng Ngãi</option>
                    <option value="quangninh">Quảng Ninh</option>
                    <option value="quangtri">Quảng Trị</option>
                    <option value="soctrang">Sóc Trăng</option>
                    <option value="sonla">Sơn La</option>
                    <option value="tayninh">Tây Ninh</option>
                    <option value="thaibinh">Thái Bình</option>
                    <option value="thainguyen">Thái Nguyên</option>
                    <option value="thanhhoa">Thanh Hóa</option>
                    <option value="thuathienhue">Thừa Thiên Huế</option>
                    <option value="tiengiang">Tiền Giang</option>
                    <option value="travinh">Trà Vinh</option>
                    <option value="tuyenquang">Tuyên Quang</option>
                    <option value="vinhlong">Vĩnh Long</option>
                    <option value="vinhphuc">Vĩnh Phúc</option>
                    <option value="yenbai">Yên Bái</option>
                    <option value="phuyen">Phú Yên</option>
                    <option value="cantho">Cần Thơ</option>
                    <option value="danang">Đà Nẵng</option>
                    <option value="haiphong">Hải Phòng</option>
                    <option value="hanoi">Hà Nội</option>
                    <option value="tphcm">TP HCM</option>
                </select>
                <br>
                <input type="text" name="txtemail2"  placeholder="Nhập lại địa chỉ Email" style="padding: 5px;margin: 5px;width: 300px;">
                <input type="text" name="txtcaptcha"  placeholder="Nhập mã xác nhận" style="padding: 5px;margin: 5px;width: 150px;">
                <br>
                <input type="submit" name="btnregister" value="Đăng ký" style="margin: 30px 5px; border-radius: 5px; border: none; background-color: blue; color: white; padding: 5px 10px;">
                <input type="checkbox" name="accept">
                <span>Tôi đồng ý với các Chính Sách và Thoả Thuận Sử Dụng của TaiLieu.VN</span>
                
            </form>
        </div>
    </div>
</body>
</html>