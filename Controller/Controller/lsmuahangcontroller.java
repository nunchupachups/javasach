package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.chitiethoadonbean;

import bean.hoadonbean;
import bean.khachhangbean;
import bean.loaibean;
import bo.chitiethoadonbo;

import bo.hoadonbo;
import bo.loaibo;

/**
 * Servlet implementation class lsmuahangcontroller
 */
@WebServlet("/lsmuahangcontroller")
public class lsmuahangcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public lsmuahangcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("utf-8") ;
			response.setCharacterEncoding("utf-8");
			
			hoadonbo hdbo=new hoadonbo();
			chitiethoadonbo cthdbo=new chitiethoadonbo();
			HttpSession session = request.getSession();
			khachhangbean khss=(khachhangbean) session.getAttribute("acc");
			if(khss!=null) {		
				ArrayList<hoadonbean> dshoadon = new ArrayList<hoadonbean>();
				dshoadon=hdbo.getlshoadon(khss.getMakh());
				ArrayList<ArrayList<chitiethoadonbean>> dscthd = new ArrayList<ArrayList<chitiethoadonbean>>();
				for(hoadonbean hd:dshoadon) {
					dscthd.add(cthdbo.getchitiethoadon(hd.getMahoadon()));
				}
				request.setAttribute("dshoadon", dshoadon);
				request.setAttribute("dscthd", dscthd);
				loaibo lbo=new loaibo();
				ArrayList<loaibean> dsloai=lbo.getloai();
				request.setAttribute("dsloai", dsloai);
				RequestDispatcher rd=request.getRequestDispatcher("lsmuahang.jsp");
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
