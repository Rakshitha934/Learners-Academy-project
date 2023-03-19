package com.caltech.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.caltech.dbconfig.DbUtil;

import com.caltech.pojo.Teachers;
import com.caltech.pojo.classes;

public class Teachersdao {
	public int insert(Teachers teachers) throws ClassNotFoundException, SQLException {
		Connection con=DbUtil.dbConn();
		if (con!=null) {
			System.out.println("Connection with dB is established");
		}
		else
		{	
			System.out.println("check the conection with dB");
		}
		
		String sql="insert into Teachers values(?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		classes classes=new classes();
		ps.setInt(1, teachers.getId());
		ps.setString(2, teachers.getTname());
		ps.setString(3, teachers.getTdesig());
	
		
		return ps.executeUpdate();

	}
	//Updtate
		public int edit (Teachers teachers) throws ClassNotFoundException, SQLException {
			Connection con=DbUtil.dbConn();
			if (con!=null) {
				System.out.println("Connection with dB is established");
			}
			else
			{	
				System.out.println("check the conection with dB");
			}
		
			 
			 String sql="Update Teachers set tname=? , tdesig=? where id=?";
			 
				PreparedStatement ps=con.prepareStatement(sql);
				
				ps.setString(1, teachers.getTname());
				ps.setString(2, teachers.getTdesig());
				ps.setInt(3, teachers.getId());
								
				return ps.executeUpdate();

			}
		
		
	//retrive
		public List<Teachers> display() throws ClassNotFoundException, SQLException{
			
			Connection con=DbUtil.dbConn();
			if (con!=null) {
				System.out.println("Connection with dB is established");
			}
			else
			{	
				System.out.println("check the conection with dB");
			}
			
			List <Teachers> list= new ArrayList<Teachers>();
			String sql="select * from Teachers";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()){
				Teachers teachers=new Teachers();
				classes classes=new classes();
				teachers.setId(rs.getInt(1));
				teachers.setTname(rs.getString(2));
				teachers.setTdesig(rs.getString(3));
//				teachers.setCname(rs.getString(4));
				
				list.add(teachers);
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
			String sql="delete from Teachers "+"where id="+id1;			
			System.out.println("The sql query is "+sql);
			Statement stmt =con.createStatement();
			
			//crud opr - insert,update,delete-executeUpdate()    select-executeQuery()
			 return stmt.executeUpdate(sql);	
			}

}
