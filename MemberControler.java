package pro.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemberControler
 */
@WebServlet("/mem")
public class MemberControler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberControler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doHandle(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doHandle(request, response);
	}
	private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.setCharacterEncoding("utf-8");
		 response.setContentType("text/html; charset=utf-8");		 		 
		 PrintWriter writer = response.getWriter();
		 
		 String id = (String) request.getParameter("id");
		 System.out.println("id= "+id);
		 MemberDAO memberDAO = new MemberDAO();
		 boolean overlappedID = memberDAO.overlappedID(id);
		 System.out.println(overlappedID);
		 if (overlappedID==true) {
			 writer.print("not_usable");
		 } else {
			 writer.print("usable");
		 }

	}
}
