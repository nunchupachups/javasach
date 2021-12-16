package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.chitiethdbean;
import bean.sachbean;
import bo.chitiethdbo;
import bo.chitiethoadonbo;
import bo.hoadonbo;
import bo.khachhangbo;
import bo.sachbo;

/**
 * Servlet implementation class quanlychitiethoadon
 */
@WebServlet("/quanlychitiethoadon")
public class quanlychitiethoadon extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public quanlychitiethoadon() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			chitiethdbo cthdbo=new chitiethdbo();
			chitiethoadonbo cthoadonbo = new chitiethoadonbo();
			sachbo sb=new sachbo();
			hoadonbo hdbo=new hoadonbo();
			Long mahd=Long.parseLong(request.getParameter("mahoadon")) ;
			Long makh=hdbo.timhoadon(mahd).getMakhachhang();
			String hoten=hdbo.timhoadon(mahd).getHoten();
			request.setAttribute("mahd", mahd);
			request.setAttribute("makh", makh);
			request.setAttribute("hoten", hoten);
			request.setAttribute("tongtien", hdbo.tongtien(mahd));
			request.setAttribute("dssach", sb.getsach());
			if(request.getParameter("xoa") !=null) cthoadonbo.xoachitiethoadon(Long.parseLong(request.getParameter("macthd")) );
			if(request.getParameter("them") !=null) {
				cthoadonbo.addchitiethd(request.getParameter("masach"), Integer.parseInt(request.getParameter("slthem")), mahd);
			}
			if(request.getParameter("capnhat") !=null) cthoadonbo.capnhatchitiethoadon(Long.parseLong(request.getParameter("macthd")), request.getParameter("sach"), Integer.parseInt(request.getParameter("txtsl")) );
			ArrayList<chitiethdbean> dscthd=cthdbo.getchitiethd(mahd);
			if(dscthd.isEmpty()) {
				hdbo.xoahoadon(mahd);
				response.sendRedirect("quanlydonhang");
			}
			request.setAttribute("dscthd", dscthd);
			if(request.getParameter("ls")!=null) request.setAttribute("ls", 0);
			RequestDispatcher rd=request.getRequestDispatcher("quanlychitiethoadon.jsp");
			rd.forward(request, response);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
