package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.khachhangbean;
import bo.adminbo;
import bo.khachhangbo;

/**
 * Servlet implementation class dangkycontroller
 */
@WebServlet("/dangkycontroller")
public class dangkycontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangkycontroller() {
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
			
			String hoten=request.getParameter("txtname");
			String diachi=request.getParameter("txtaddress");
			String sodt=request.getParameter("txtphone");
			String email=request.getParameter("txtemail");
			String tendn=request.getParameter("txtun");
			String matkhau=request.getParameter("txtpwd");
			
			khachhangbo khbo=new khachhangbo();
			adminbo adbo=new adminbo();
			HttpSession session=request.getSession();
			
			if (khbo.getkhachhang(tendn)==null&&adbo.getadmin(tendn)==null) {
				khbo.addkhachhang(hoten, diachi, sodt, email, tendn, matkhau)  ;
				khachhangbean kh = khbo.getkhachhang(tendn);
				session.setAttribute("acc", kh);
			}
			else request.setAttribute("tb", "dk");
			RequestDispatcher rd=request.getRequestDispatcher("nhasachminhkhai");
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
