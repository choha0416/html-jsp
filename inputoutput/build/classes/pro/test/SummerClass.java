package pro.test;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SummerClass
 */
@WebServlet("/SummerClass")
public class SummerClass extends HttpServlet {

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SummerClass() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String subj=request.getParameter("subj");
		String uname=request.getParameter("uname");
		String uid=request.getParameter("uid");
		String[] uclasss=request.getParameterValues("uclass");
		String book=request.getParameter("book");
		String wsheet=request.getParameter("wsheet");
		String group=request.getParameter("group");
		
		for(int i=0;i<uclasss.length;i++) {
			if(uclasss[i]==null) continue;
			else {
				System.out.print("학과: "+uclasss[i]+"\t");
			}
		}
		request.setAttribute("subj", subj);
		request.setAttribute("uname", uname);
		request.setAttribute("uid", uid);
		request.setAttribute("book", book);
		request.setAttribute("wsheet", wsheet);
		request.setAttribute("group", group);
		
		RequestDispatcher dispatch = request.getRequestDispatcher("summerclass.jsp");
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
