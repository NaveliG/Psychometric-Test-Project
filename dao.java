package com.dataacesslayer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.model.registration;
import edu.stanford.nlp.io.EncodingPrintWriter.out;

public class dao {

	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	static final String DB_URL = "jdbc:mysql://localhost:3306/sychometrictest?autoReconnect=true&useSSL=false";
	static final String USER = "root";
	static final String PASS = "root";
 
	public static Connection makeConnection()
	
	{
		Connection con = null;
		try 
		
		{
			 String JDBC_DRIVER = "com.mysql.jdbc.Driver";
			 String DB_URL = "jdbc:mysql://localhost:3306/sychometrictest?autoReconnect=true&useSSL=false";
			 String USER = "root";
			 String PASS = "root";
			
			Class.forName(JDBC_DRIVER);
			
			 con = DriverManager.getConnection(DB_URL, USER, PASS);

		}
		
		catch (Exception e)
		
		{
			e.printStackTrace();
		}
		
		return con;
	}
 
 
  public static int registerUser(registration r) 
  {
	
	  Connection con = makeConnection();
	
	 int  i =0; 
	
    	try {	
		
	String sql = "insert into registration(name,lname,contact,college,city,date,password,email) values(?,?,?,?,?,?,?,?)";
		
		java.sql.PreparedStatement pstm = con.prepareStatement(sql);
		
		pstm.setString(1, r.getName());
		pstm.setString(2, r.getLname());
		pstm.setString(3, r.getContact());
		pstm.setString(4, r.getCollege());
		pstm.setString(5, r.getCity());
        pstm.setString(6, r.getDate());
		pstm.setString(7, r.getPassword());
        pstm.setString(8, r.getEmail());

	i =	pstm.executeUpdate();
		
	} catch (Exception e) {
		
	}
	
	return i;
}

  public static int Userlogin(String email, String password) 

   {
	    int id = 0;
	 
		String sql = "select * from registration where email=? and password=?";
		
		Connection con = makeConnection();
		
		ResultSet rs = null;
		ResultSet rs1 = null;
		try
		
     {
			java.sql.PreparedStatement	pstm = con.prepareStatement(sql);
			
			pstm.setString(1, email);
			pstm.setString(2, password);
		
			rs = pstm.executeQuery();
			
			while (rs.next())
				
			{
				id = rs.getInt("id");
			}
			String sql1 = "select id from registration where email=? and password=?";
			Connection con1 = makeConnection();
			java.sql.PreparedStatement	pstm1 = con.prepareStatement(sql1);
			rs1 = pstm.executeQuery();
     }
		
		catch (SQLException e)
		
		{
			
		      e.printStackTrace();
		   
		      System.out.println("something error!!!!!!!!!!");
		
		}
		
	       return id;
  
 }
  
 

  
  
  
  
	
}
