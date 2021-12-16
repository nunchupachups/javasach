package Controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import bean.loaibean;
import bean.sachbean;
import bo.loaibo;
import bo.sachbo;

/**
 * Servlet implementation class quanlysach
 */
@WebServlet("/quanlysach")
public class quanlysach extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public quanlysach() {
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
			if(request.getParameter("xoa")!=null) sbo.xoasach(request.getParameter("masach"));
			ArrayList<loaibean> dsloai =lbo.getloai();
			ArrayList<sachbean> dssach = sbo.getsach();
			if(request.getParameter("ml")!=null) dssach=sbo.TimLoai(request.getParameter("ml"));
			else
				if(request.getParameter("txtTim")!=null) dssach=sbo.Tim(request.getParameter("txtTim"));
			
			if(request.getParameter("tb")!=null) request.setAttribute("tb", 0) ;
			request.setAttribute("dssach", dssach);
			request.setAttribute("dsloai", dsloai);
			
			RequestDispatcher rd=request.getRequestDispatcher("quanlysach.jsp");
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
