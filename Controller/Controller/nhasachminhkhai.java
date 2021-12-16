package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.loaibean;
import bean.sachbean;

import bo.loaibo;
import bo.sachbo;

/**
 * Servlet implementation class nhasachminhkhai
 */
@WebServlet("/nhasachminhkhai")
public class nhasachminhkhai extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public nhasachminhkhai() {
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
			
			loaibo lbo=new loaibo();
			sachbo sbo=new sachbo();
			
			String ml=request.getParameter("ml");
			String key=request.getParameter("txtTim");
			String tb=(String) request.getAttribute("tb");
			
			ArrayList<sachbean> dssach=sbo.getsach();
			ArrayList<loaibean> dsloai=lbo.getloai();
			
			if(ml!=null) dssach=sbo.TimLoai(ml);
			else
				if(key!=null) dssach=sbo.Tim(key);

			request.setAttribute("dssach", dssach);
			request.setAttribute("dsloai", dsloai);
			request.setAttribute("tb", tb);
			RequestDispatcher rd=request.getRequestDispatcher("menu.jsp");
			rd.forward(request, response);
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
