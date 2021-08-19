package DBPKG;

import java.sql.*;

public class Util {
	public static Connection getConnection() throws Exception{
	      Class.forName("oracle.jdbc.OracleDriver");
	      Connection con = DriverManager.getConnection
	         ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	      if(con != null)
		   {
		   System.out.print("Database Connect : [ "+" <b>success</b> ] <br>");
		   }
		   else{
		   System.out.print("Database Connect : [ "+" <b>fail</b> ] <br>");
		   }
	      return con;
	   }
	public static String getParamNN(String param) {
		if(param == null)
			return "";
		return param;
	}
}
