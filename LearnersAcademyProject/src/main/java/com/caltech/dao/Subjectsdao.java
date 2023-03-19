package com.caltech.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.caltech.dbconfig.DbUtil;

import com.caltech.pojo.Subjects;

public class Subjectsdao {
	public int insert(Subjects subjects) throws ClassNotFoundException, SQLException {
		Connection con=DbUtil.dbConn();
		if (con!=null) {
			System.out.println("Connection with dB is established");
		}
		else
		{	
			System.out.println("check the conection with dB");
		}
		
		String sql="insert into Subjects values(?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1, subjects.getSubid());
		ps.setString(2, subjects.getSname());
		
		
		return ps.executeUpdate();

	}
	//Updtate
		public int edit (Subjects subjects) throws ClassNotFoundException, SQLException {
			Connection con=DbUtil.dbConn();
			if (con!=null) {
				System.out.println("Connection with dB is established");
			}
			else
			{	
				System.out.println("check the conection with dB");
			}
		
			 
			 String sql="update Subjects set sname=? where subid=?";
			 
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1, subjects.getSname());
//				ps.setString(2, subjects.getCname());
				ps.setInt(2,subjects.getSubid());
				
				return ps.executeUpdate();

			}
		
		
	//retrive
		public List<Subjects> display() throws ClassNotFoundException, SQLException{
			
			Connection con=DbUtil.dbConn();
			if (con!=null) {
				System.out.println("Connection with dB is established");
			}
			else
			{	
				System.out.println("check the conection with dB");
			}
			
			List <Subjects> list= new ArrayList<Subjects>();
			String sql="select * from Subjects";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()){
				Subjects subjects=new Subjects();
				subjects.setSubid(rs.getInt(1));
				subjects.setSname(rs.getString(2));
			
				
				list.add(subjects);
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
			String sql="delete from Subjects "+"where subid="+id1;			
			System.out.println("The sql query is "+sql);
			Statement stmt =con.createStatement();
			
			//crud opr - insert,update,delete-executeUpdate()    select-executeQuery()
			 return stmt.executeUpdate(sql);	
			}

}
