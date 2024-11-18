package pro.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.*;
import org.json.simple.parser.*;
/**
 * Servlet implementation class Jsonsuvlet1
 */
@WebServlet("/json")
public class Jsonsuvlet1 extends HttpServlet {
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Jsonsuvlet1() {
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
		 String jsonInfo = request.getParameter("jsonInfo");
		 try {
			 JSONParser jsonParser = new JSONParser();
			 JSONObject jsonObject = (JSONObject) jsonParser.parse(jsonInfo);
			 System.out.println("회원 정보");
			 System.out.println(jsonObject.get("name"));
			 System.out.println(jsonObject.get("age"));
			 System.out.println(jsonObject.get("gender"));
			 System.out.println(jsonObject.get("nickname"));
		 }	catch (Exception e){
			 e.printStackTrace();
		 }
		 
			
	}
}
