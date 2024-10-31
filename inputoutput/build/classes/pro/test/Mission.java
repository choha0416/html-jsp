package pro.test;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Mission
 */
@WebServlet("/Mission")
public class Mission extends HttpServlet {

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mission() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String user_id=request.getParameter("user_id");
		String user_pw=request.getParameter("user_pw");		
		String user_pw2=request.getParameter("user_pw2");		
		String user_name=request.getParameter("user_name");
		String mail=request.getParameter("mail");
		String phone=request.getParameter("phone");
		String homep=request.getParameter("homep");
		request.setAttribute("user_id", user_id);
		request.setAttribute("user_pw", user_pw);
		request.setAttribute("user_pw2", user_pw2);
		request.setAttribute("user_name", user_name);
		request.setAttribute("mail", mail);
		request.setAttribute("phone", phone);
		request.setAttribute("homep", homep);
		RequestDispatcher dispatch=request.getRequestDispatcher("mission.jsp");
		dispatch.forward(request, response);
		
	}

}
