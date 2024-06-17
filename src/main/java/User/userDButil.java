package User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class userDButil {
	private static boolean Success;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	//validate user name and password
	public static boolean validate(String userName,String password) {
		
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			String sql = "select * from user where userName= '"+userName+"' and password = '"+password+"'";
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
	
	public static List<User> getUser(String userName){
		
		ArrayList<User> usr = new ArrayList<>();
		
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			String sql= "select * from user where userName='"+userName+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);
				
				User u1 = new User(id,name,email,phone,username,password);
				
				usr.add(u1);
				
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return usr;
		
	}
	
	public static boolean insertUser(String name, String email,String phone, String userName, String password){
		boolean Success = false;

		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			String sql = "insert into user values (0,'"+name+"','"+email+"','"+phone+"','"+userName+"','"+password+"')";
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
	
	
	public static boolean updateuser(String id, String name, String email, String phone, String username, String password) {
		
		
    	try {
    		
    		con = DBconnection.getConnection();
    		stmt = con.createStatement();
    		String sql = "update user set name='"+name+"',email='"+email+"',phone='"+phone+"',username='"+username+"',password='"+password+"' where id='"+id+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
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
	
	public static List<User> getUserDetails(String Id) {
    	
    	int convertedID = Integer.parseInt(Id);
    	
    	ArrayList<User> us = new ArrayList<>();
    	
    	try {
    		
    		con = DBconnection.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from user where id='"+convertedID+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int id = rs.getInt(1);
    			String name = rs.getString(2);
    			String email = rs.getString(3);
    			String phone = rs.getString(4);
    			String userName = rs.getString(5);
    			String password = rs.getString(6);
    			
    			User u2 = new User(id,name,email,phone,userName,password);
    			us.add(u2);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return us;	
    }

	public static boolean deleteuser(String id) {
		
		int convID = Integer.parseInt(id);
		
		try {
			con = DBconnection.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from user where id = '"+convID+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if(r >0) {
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
	
}
