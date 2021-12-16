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
import bo.loaibo;

/**
 * Servlet implementation class quanlyloai
 */
@WebServlet("/quanlyloai")
public class quanlyloai extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public quanlyloai() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			request.setCharacterEncoding("utf-8") ;
			response.setCharacterEncoding("utf-8");
			
			loaibo lbo=new loaibo();
			String maloai= (String) request.getParameter("txtmaloai");
			String tenloai= (String) request.getParameter("txttenloai");
			if(maloai!=null) {
				if(lbo.tim(maloai)) request.setAttribute("tb", 0);
				else lbo.themloai(maloai, tenloai);
			}
				
			ArrayList<loaibean> dsloai=lbo.getloai();
			if(request.getParameter("txtTim")!=null) dsloai=lbo.timloai(request.getParameter("txtTim"));
			request.setAttribute("dsloai", dsloai);
			RequestDispatcher rd=request.getRequestDispatcher("quanlyloai.jsp");
			rd.forward(request, response);
		}catch(Exception e) {
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
