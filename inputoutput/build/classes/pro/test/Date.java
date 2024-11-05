package pro.test;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Date
 */
@WebServlet("/Date")
public class Date extends HttpServlet {

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Date() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String start = request.getParameter("start");
		String end = request.getParameter("end");
		System.out.println(start);
		System.out.println(end);
		request.setAttribute("start", start);
		request.setAttribute("end", end);
		RequestDispatcher dispatch = request.getRequestDispatcher("date.jsp?ht=성민");
		dispatch.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
