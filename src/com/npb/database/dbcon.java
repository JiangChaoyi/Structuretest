package com.npb.database;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;

public class dbcon {
	private Connection con;
	private String url = "jdbc:mysql://localhost:3306/bank?useSSL=false&serverTimezone=UTC&user=root&password=jcy520&autoReconnect=true&failOverReadOnly=false";
	public Connection open() throws SQLException, ClassNotFoundException{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection(url);
		return con;
	}
	public void close() throws SQLException{
		if(con!=null){
			con.close();
		}
	}
	/*public MysqlDataSource getdatasource(){
		MysqlDataSource ds = new MysqlDataSource();
		ds.setServerName("115.159.159.79");
		ds.setUser("xkk");
		ds.setPassword("xkkxkkxkk");
		ds.setDatabaseName("baoyan");
		ds.setAutoClosePStmtStreams(true);
		return ds;
	}
	*/

}
