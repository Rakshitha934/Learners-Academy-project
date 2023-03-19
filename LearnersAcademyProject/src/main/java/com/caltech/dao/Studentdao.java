package com.caltech.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.caltech.dbconfig.DbUtil;
import com.caltech.pojo.Students;
import com.caltech.pojo.classes;

public class Studentdao {
	
	public int insert(Students student) throws ClassNotFoundException, SQLException {
		Connection con=DbUtil.dbConn();
		if (con!=null) {
			System.out.println("Connection with dB is established");
		}
		else
		{	
			System.out.println("check the conection with dB");
		}
		
		String sql="insert into Students values(?,?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1, student.getSid());
		ps.setString(2, student.getFname());
		ps.setString(3, student.getLname());
		ps.setString(4, student.getAddress());
		ps.setLong(5,student.getPhoneno());
		ps.setString(6, student.getClasses().getCname());
		return ps.executeUpdate();

	}
	//Updtate
		public int edit (Students student) throws ClassNotFoundException, SQLException {
			Connection con=DbUtil.dbConn();
			if (con!=null) {
				System.out.println("Connection with dB is established");
			}
			else
			{	
				System.out.println("check the conection with dB");
			}
		
			 
			 String sql="update Students set Fname=?,Lname=?,Address=?, phoneno=?,cname=? where id=?";
			 
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1, student.getFname());
				ps.setString(2, student.getLname());
				ps.setString(3, student.getAddress());
				ps.setLong(4, student.getPhoneno());
				ps.setString(5, student.getCname());
				ps.setInt(6, student.getSid());
			
				
				return ps.executeUpdate();

			}
		
		
	//retrive
		public List<Students> display() throws ClassNotFoundException, SQLException{
			
			Connection con=DbUtil.dbConn();
			if (con!=null) {
				System.out.println("Connection with dB is established");
			}
			else
			{	
				System.out.println("check the conection with dB");
			}
			
			List <Students> list= new ArrayList<Students>();
			String sql="select * from Students";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()){
				Students student=new Students();
				classes classes=new classes();
				student.setSid(rs.getInt(1));
				student.setFname(rs.getString(2));
				student.setLname(rs.getString(3));
				student.setAddress(rs.getString(4));
				student.setPhoneno(rs.getLong(5));
				classes.setCname(student.getCname());
				student.setCname(rs.getString(6));
				list.add(student);
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
			String sql="delete from Students "+"where id="+id1;			
			System.out.println("The sql query is "+sql);
			Statement stmt =con.createStatement();
			
			//crud opr - insert,update,delete-executeUpdate()    select-executeQuery()
			 return stmt.executeUpdate(sql);	
			}
	}



