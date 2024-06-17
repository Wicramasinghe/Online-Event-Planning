package Admin;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import User.DBconnection;
import User.User;

public class adminDButil {
	private static boolean Success;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
public static boolean validate(String userName,String password) {
		
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			String sql = "select * from admin where userName= '"+userName+"' and password = '"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				Success = true;
			}
			else {
				Success = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return Success;
	}

public static List<Admin> getAdmin(String userName){
	
	ArrayList<Admin> usr = new ArrayList<>();
	
	try {
		con = DBconnection.getConnection();
		stmt = con.createStatement();
		String sql= "select * from admin where userName='"+userName+"'";
		rs = stmt.executeQuery(sql);
		
		while(rs.next()){
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String email = rs.getString(3);
			String phone = rs.getString(4);
			String username = rs.getString(5);
			String password = rs.getString(6);
			
			Admin u1 = new Admin(id,name,email,phone,username,password);
			
			usr.add(u1);
			
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return usr;
	
}

public static boolean insertAdmin(String name, String email,String phone, String userName, String password){
	boolean Success = false;

	try {
		con = DBconnection.getConnection();
		stmt = con.createStatement();
		String sql = "insert into admin values (0,'"+name+"','"+email+"','"+phone+"','"+userName+"','"+password+"')";
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0) {
			Success = true;
		}
		else {
			Success= false;
		}
		
	}
	catch(Exception e){
		e.printStackTrace();
	}
	
	return Success;
}

}
