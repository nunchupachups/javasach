package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.org.apache.xalan.internal.xsltc.compiler.sym;

import bean.chitiethoadonbean;
import bean.hoadonbean;
import bo.chitiethoadonbo;
import bo.hoadonbo;

/**
 * Servlet implementation class quanlydonhang
 */
@WebServlet("/quanlydonhang")
public class quanlydonhang extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public quanlydonhang() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			hoadonbo hdbo=new hoadonbo();
			chitiethoadonbo cthdbo=new chitiethoadonbo();
			if (request.getParameter("xoa")!=null) hdbo.xoahoadon(Long.parseLong(request.getParameter("mahoadon"))); 
			if (request.getParameter("duyet")!=null) hdbo.duyethoadon(Long.parseLong(request.getParameter("mahoadon"))); 
			if (request.getParameter("ls")!=null) request.setAttribute("ls", 0);; 
			ArrayList<hoadonbean> dshd=hdbo.getdshoadon();
			ArrayList<hoadonbean> dslshd=hdbo.getdslshoadon();
			request.setAttribute("dshd", dshd);
			request.setAttribute("dslshd", dslshd);
			RequestDispatcher rd=request.getRequestDispatcher("quanlydonhang.jsp");
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
