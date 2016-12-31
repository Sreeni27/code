package insert;

import java.sql.*;

public class student {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {

		Class.forName("org.h2.Driver");
		Connection conn = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");
		System.out.println(conn);
		return;

	}

}
