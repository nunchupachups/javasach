package Controller;

import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.adminbean;
import bean.khachhangbean;
import bo.adminbo;
import bo.khachhangbo;

/**
 * Servlet implementation class dangnhapcontroller
 */
@WebServlet("/dangnhapcontroller")
public class dangnhapcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangnhapcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			
			khachhangbo khbo = new khachhangbo();
			adminbo adbo=new adminbo();
			String un=request.getParameter("txtun");
			String pass=request.getParameter("txtpass");
			khachhangbean kh=khbo.getkhachhang(un, pass);
			adminbean admin=adbo.getadmin(un, pass);
			HttpSession session=request.getSession();
			if(un!=null) {
				if(kh!=null) {
					session.setAttribute("acc", kh);
				}
				else if(admin!=null) {
					session.setAttribute("admin", admin);
					response.sendRedirect("quanlydonhang");
				}
				else {
					request.setAttribute("tb", "dn");
				}
			}
			if(request.getParameter("logout")!=null){
				session.removeAttribute("acc");
				session.removeAttribute("admin");
			}
			RequestDispatcher rd=request.getRequestDispatcher("nhasachminhkhai");
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
