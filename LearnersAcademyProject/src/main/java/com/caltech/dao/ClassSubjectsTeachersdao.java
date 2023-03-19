package com.caltech.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.caltech.dbconfig.DbUtil;
import com.caltech.pojo.ClassSubjectsTeachers;
import com.caltech.pojo.Students;
import com.caltech.pojo.classes;

public class ClassSubjectsTeachersdao {
	public int insert(ClassSubjectsTeachers ClassSubjectsTeachers) throws ClassNotFoundException, SQLException  {
		
			Connection con=DbUtil.dbConn();
			if (con!=null) {
				System.out.println("Connection with dB is established");
			}
			else
			{	
				System.out.println("check the conection with dB");
			}

			String sql="insert into class_subjects_teachers values(?,?,?,?)";
			System.out.println(sql);
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1,ClassSubjectsTeachers.getId());
			ps.setString(2, ClassSubjectsTeachers.getCname());
			ps.setString(3, ClassSubjectsTeachers.getSname());
			ps.setString(4, ClassSubjectsTeachers.getTname());
			return ps.executeUpdate();
		}
		
	
	public int Delete (int id) throws ClassNotFoundException, SQLException {
		Connection con=DbUtil.dbConn();
		if (con!=null) {
			System.out.println("Connection with dB is established");
		}
		else
		{	
			System.out.println("check the conection with dB");
		}
		String sql="delete from class_subjects_teachers "+"where id="+id;			
		System.out.println("The sql query is "+sql);
		Statement stmt =con.createStatement();
		
		//crud opr - insert,update,delete-executeUpdate()    select-executeQuery()
		 return stmt.executeUpdate(sql);	
		}
}





