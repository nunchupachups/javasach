package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.chitiethoadonbean;
import bean.hoadonbean;
import bean.loaibean;

/**
 * Servlet implementation class thanhtoancontroller
 */
@WebServlet("/thanhtoancontroller")
public class thanhtoancontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public thanhtoancontroller() {
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
			ArrayList<loaibean> dsloai=(ArrayList<loaibean>) request.getAttribute("dsloai");
			ArrayList<hoadonbean> dshoadon=(ArrayList<hoadonbean>) request.getAttribute("dshoadon");
			ArrayList<ArrayList<chitiethoadonbean>> dscthd= (ArrayList<ArrayList<chitiethoadonbean>>) request.getAttribute("dscthd");
			request.setAttribute("dshoadon", dshoadon);
			request.setAttribute("dscthd", dscthd);
			request.setAttribute("dsloai", dsloai);
			RequestDispatcher rd=request.getRequestDispatcher("thanhtoan.jsp");
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
