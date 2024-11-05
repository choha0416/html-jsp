package pro.test;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Time
 */
@WebServlet("/Time")
public class Time extends HttpServlet {
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Time() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String start1 = request.getParameter("start1");
		String end1 = request.getParameter("end1");
		System.out.println("오늘 시작: "+start1);
		System.out.println("오늘 종료: "+end1);
		request.setAttribute("start1", start1);
		request.setAttribute("end1", end1);
		String start2 = request.getParameter("start2");
		String end2 = request.getParameter("end2");
		System.out.println("다른날 시작: "+start2);
		System.out.println("다른날 종료: "+end2);
		request.setAttribute("start2", start2);
		request.setAttribute("end2", end2);
		RequestDispatcher dispatch = request.getRequestDispatcher("time.jsp?ht=성민");
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
