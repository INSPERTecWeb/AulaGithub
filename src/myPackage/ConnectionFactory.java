package myPackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

	public Connection getConnection(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost/meus_dados", "root", "123456");	
		} catch (SQLException | ClassNotFoundException e) {
			throw new RuntimeException(e);
		}
	
	}
}
