package Controller;

import java.io.IOException;
import java.util.Date;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.chitiethoadonbean;
import bean.giohangbean;
import bean.hoadonbean;
import bean.khachhangbean;
import bean.loaibean;
import bo.chitiethoadonbo;
import bo.giohangbo;
import bo.hoadonbo;
import bo.loaibo;


@WebServlet("/addhoadoncontroller")
public class addhoadoncontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public addhoadoncontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("utf-8") ;
			response.setCharacterEncoding("utf-8");
			
			hoadonbo hdbo=new hoadonbo();
			giohangbo ghbo =new giohangbo();
			chitiethoadonbo cthdbo=new chitiethoadonbo();
			HttpSession session = request.getSession();
			if(session.getAttribute("gh")==null) session.setAttribute("gh", ghbo);
			giohangbo ghss=(giohangbo) session.getAttribute("gh");
			khachhangbean khss=(khachhangbean) session.getAttribute("acc");
			if(khss!=null) {		
				if(ghss.tongsach()!=0) {
					Date date=new Date();								
					Long mahd= hdbo.addhoadon(khss.getMakh(),new java.sql.Date(date.getTime()));
					for(giohangbean gh:ghss.getgiohang()) {
						cthdbo.addchitiethd(gh.getMasach(), gh.getSoluong(), mahd);
					}							
					ArrayList<giohangbean> dsgh = ghss.xoaAll();
					session.setAttribute("gh", ghss);
				}
				ArrayList<hoadonbean> dshoadon = new ArrayList<hoadonbean>();
				dshoadon=hdbo.gethoadon(khss.getMakh());
				ArrayList<ArrayList<chitiethoadonbean>> dscthd = new ArrayList<ArrayList<chitiethoadonbean>>();
				for(hoadonbean hd:dshoadon) {
					dscthd.add(cthdbo.getchitiethoadon(hd.getMahoadon()));
				}
				request.setAttribute("dshoadon", dshoadon);
				request.setAttribute("dscthd", dscthd);
				loaibo lbo=new loaibo();
				ArrayList<loaibean> dsloai=lbo.getloai();
				request.setAttribute("dsloai", dsloai);
				RequestDispatcher rd=request.getRequestDispatcher("thanhtoan.jsp");
				rd.forward(request, response);
			}else {
				request.setAttribute("tbchuadn", "0");
				RequestDispatcher rd=request.getRequestDispatcher("htgiohangcontroller");
				rd.forward(request, response);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
