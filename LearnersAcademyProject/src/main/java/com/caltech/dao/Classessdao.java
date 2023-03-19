package com.caltech.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.caltech.dbconfig.DbUtil;
import com.caltech.pojo.classes;


public class Classessdao {
	public int insert(classes classes) throws ClassNotFoundException, SQLException {
		Connection con=DbUtil.dbConn();
		if (con!=null) {
			System.out.println("Connection with dB is established");
		}
		else
		{	
			System.out.println("check the conection with dB");
		}
		
		String sql="insert into Classes values(?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1, classes.getCid());
		ps.setString(2, classes.getCname());
		
		return ps.executeUpdate();

	}
	//Updtate
		public int edit (classes classes) throws ClassNotFoundException, SQLException {
			Connection con=DbUtil.dbConn();
			if (con!=null) {
				System.out.println("Connection with dB is established");
			}
			else
			{	
				System.out.println("check the conection with dB");
			}
		
			 
			 String sql="update Classes set cname=? where cid=?";
			 
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1, classes.getCname());
				ps.setInt(2,classes.getCid());
				
				return ps.executeUpdate();

			}
		
		
	//retrive
		public List<classes> display() throws ClassNotFoundException, SQLException{
			
			Connection con=DbUtil.dbConn();
			if (con!=null) {
				System.out.println("Connection with dB is established");
			}
			else
			{	
				System.out.println("check the conection with dB");
			}
			
			List <classes> list= new ArrayList<classes>();
			String sql="select * from Classes";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()){
				classes classes=new classes();
				classes.setCid(rs.getInt(1));
				classes.setCname(rs.getString(2));
				
				list.add(classes);
			}
			return list;
			
		}
	//Delete
		public int Delete (int id1) throws ClassNotFoundException, SQLException {
			Connection con=DbUtil.dbConn();
			if (con!=null) {
				System.out.println("Connection with dB is established");
			}
			else
			{	
				System.out.println("check the conection with dB");
			}
			String sql="delete from Classes "+"where cid="+id1;			
			System.out.println("The sql query is "+sql);
			Statement stmt =con.createStatement();
			
			//crud opr - insert,update,delete-executeUpdate()    select-executeQuery()
			 return stmt.executeUpdate(sql);	
			}
	}


