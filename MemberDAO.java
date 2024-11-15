package pro.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {
	Connection conn = null;
	PreparedStatement pstmt;
	 
	 public MemberDAO() {
		 try {
			 Class.forName("oracle.jdbc.OracleDriver");
			 
			 conn = DriverManager.getConnection(
					 "jdbc:oracle:thin:@localhost:1521/xe",
					 "system",
					 "oracle"
					 );
					 
		 	} catch (ClassNotFoundException e) {
		        // Class.forName에서 발생한 예외 처리
		        e.printStackTrace();
		    }catch(SQLException e) {
		 		e.printStackTrace();
		 		}
		 	}
	public boolean overlappedID(String id) {
	 
		 boolean result=false;
	     try {
	    	 
	    	    String query = "select decode(count(*),1,'true','false') as result from t_member";
	            query += " where id=?";
	            System.out.println("PreparedStatement: "+query);
	            PreparedStatement pstmt = conn.prepareStatement(query);
	            pstmt.setString(1, id);
	            ResultSet rs = pstmt.executeQuery();
	            rs.next();
	            result=Boolean.parseBoolean(rs.getString("result"));
	            
	            pstmt.close();
	    	 
	     } catch (Exception e) {
	            e.printStackTrace();
	     } 
	     return result;
	}
}