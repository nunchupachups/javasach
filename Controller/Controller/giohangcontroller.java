package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.giohangbean;
import bean.loaibean;
import bean.sachbean;
import bo.giohangbo;
import bo.loaibo;
import bo.sachbo;

/**
 * Servlet implementation class giohangcontroller
 */
@WebServlet("/giohangcontroller")
public class giohangcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public giohangcontroller() {
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
			
			giohangbo ghbo=new giohangbo();
			sachbo sbo=new sachbo();
			String ms=request.getParameter("ms");
			String xoaAll=request.getParameter("xoaAll");
			String msxoa=request.getParameter("msxoa");
			String mscn=request.getParameter("mscn");
			String slcn=request.getParameter("txtsl") ;
			
			
			HttpSession session = request.getSession();
			if(session.getAttribute("gh")==null) session.setAttribute("gh", ghbo);
			giohangbo ghss=(giohangbo) session.getAttribute("gh");
			
			sachbean s=sbo.TimSach(ms);
			ArrayList<giohangbean> dsgh;
			
			if(msxoa!=null) dsgh = ghss.xoa(msxoa);
			if(xoaAll!=null) dsgh = ghss.xoaAll();
			if(mscn!=null) dsgh = ghss.sua(mscn, (int)Long.parseLong(slcn));
			if(ms!=null) dsgh= ghss.them(s.getMasach(), s.getTensach(), s.getTacgia(), s.getAnh(), s.getGia(), (int)1);
			
			session.setAttribute("gh", ghss);
			response.sendRedirect("htgiohangcontroller");
		}catch (Exception  e){
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
