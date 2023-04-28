package com.usermanagement.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


import com.usermanagement.beanpackage.UserBean;

public class UserDao {
	static String url ="jdbc:mysql://localhost:3306/usermanagement";
	static String username="root";
	static String password ="admin";
	static Connection con =null;
	static PreparedStatement ps = null;
	static Statement s= null;
	static ResultSet rs =null;
	
	static String insert ="insert into user(name,email,city) values(?,?,?)";
	static String delete ="delete from user where id=?";
	static String selectUser ="select * from user where id =?";
	static String updateUser="update user set name = ?,email = ?,city = ? where id = ?";
	
	public static boolean checkLogin(String user,String pass) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, username, password);
			s= con.createStatement();
		    rs = s.executeQuery("select * from admin");
		    while(rs.next())
		    {
		    	String name= rs.getString("username");
		    	String pass1 = rs.getString("password");
		    	if(name.equals(user) && pass1.equals(pass))
		    	{
		    		return true;
		    	}
		    }

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			try {
				rs.close();
				s.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return false;
	}
	
		
		 public static void insertUserDetails(UserBean s)
		  {
			  try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con = DriverManager.getConnection(url, username, password);
				ps=con.prepareStatement(insert);
				ps.setString(1, s.getName());
				ps.setString(2,s.getEmail());
				ps.setString(3, s.getCity());
			    ps.executeUpdate();
				
				
			} catch (ClassNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			  finally
			  {
				  try {
					ps.close();
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			  }
		  }
		
			  
		public static void deleteUserdetails(int id)
			{
				try {
						Class.forName("com.mysql.cj.jdbc.Driver");
						con = DriverManager.getConnection(url, username, password);
						ps=con.prepareStatement(delete);
					    ps.setInt(1, id);
						ps.executeUpdate();
						
						
				} catch (ClassNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
				} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					finally
					{
						try {
							ps.close();
							con.close();
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
				}
				
		public static ArrayList<UserBean> display()
			  {
	 		  ArrayList<UserBean> al= new ArrayList<UserBean>();
				try {
						Class.forName("com.mysql.cj.jdbc.Driver");
						con = DriverManager.getConnection(url, username, password);
						s = con.createStatement();
						rs=s.executeQuery("select * from user");
     					while(rs.next())
				{
						int id = rs.getInt("id");
						String name =rs.getString("name");
				    	String email=rs.getString("email");
						String city =rs.getString("city");
						UserBean s = new UserBean(id, name, email, city);
						al.add(s);
									
									
								
							}

							} catch (ClassNotFoundException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							} catch (SQLException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
							finally
							{
								try {
									rs.close();
									s.close();
									con.close();
								} catch (SQLException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
							}
							return al;

					  }




           public static  UserBean selectUser(int id)
           {
        	   UserBean s = null;
        	   
        	   try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con = DriverManager.getConnection(url, username, password);
				ps=con.prepareStatement(selectUser);
			    ps.setInt(1, id);
			    rs=ps.executeQuery();
			    if(rs.next())
			    {
			        id =rs.getInt("id");
			    	String name = rs.getString("name");
			    	String email = rs.getString("email");
			    	String city =rs.getString("city");
			    	s =new UserBean(id,name,email,city);
			    }
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        	   
        	   finally
 			  {
 				  try {
 					rs.close();
 					ps.close();
 					con.close();
 				} catch (SQLException e) {
 					// TODO Auto-generated catch block
 					e.printStackTrace();
 				}
 			  }
        	   
        	   return s;
        	   
}
           
           
           
     public static void updateUser(UserBean s)  
     {
    	 try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, username, password);
			ps=con.prepareStatement(updateUser);
			ps.setString(1, s.getName());
			ps.setString(2, s.getEmail());
			ps.setString(3,s.getCity());
			ps.setInt(4, s.getId());
			ps.executeUpdate();
			
				
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	 finally
    	 {
    		 try {
				ps.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    	 }
     }
     }
           
  