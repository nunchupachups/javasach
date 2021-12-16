package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DungChung {
	public Connection cn;
	public void KetNoi() throws Exception{
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		String url="jdbc:sqlserver://DESKTOP-2021CPJ:1433;databaseName=QlSach;user=sa;password=nghiaoi123";
		cn=DriverManager.getConnection(url);
    	System.out.println("Da ket noi");
	}
}

