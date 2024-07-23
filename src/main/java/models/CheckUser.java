package models;
import java.sql.*;
import java.util.List;
import java.util.Vector;

import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import beans.GetConnection;
 
public class CheckUser {

	private String userid;
	private String pswd;
		
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPswd() {
		return pswd;
	}
	public void setPswd(String pswd) {
		this.pswd = pswd;
	}
	
	public String checkUser(HttpServletRequest request) {
		
		Connection con;
		ResultSet rs;
		String typ,st="";
		GetConnection gc = new GetConnection();
		
		
		try {
			
			
			con=gc.getConnection();
			PreparedStatement pst;
			pst=con.prepareStatement("select * from users where userid=? and pswd=? and userstatus='active' ");
			pst.setString(1,userid );
			pst.setString(2, pswd);
				
			rs=pst.executeQuery();
			
			if(rs.next()) {
								
				
				HttpSession sess=request.getSession(true);
				sess.setAttribute("userid",userid);
				sess.setAttribute("usertype", rs.getString("usertype"));
				sess.setAttribute("usernm", rs.getString("usernm"));
				sess.setAttribute("branch", rs.getString("branch"));
				sess.setAttribute("collegeid", rs.getString("collegeId"));
				
				typ=rs.getString("usertype");
				sess.setAttribute("photo", getPhoto(userid, typ));
				System.out.println("type="+typ);
				LoginTracker lt=new LoginTracker();
				lt.recordLogin(userid, typ);
				   if(typ.equals("student"))
				{
					JavaFuns jf=new JavaFuns();
					Vector v=jf.getValue("select semester,collegeId from studentpersonal where userid='"+userid.trim()+"'", 2);
					sess.setAttribute("sem",v.elementAt(0).toString().trim());
					sess.setAttribute("collegeid",v.elementAt(1).toString().trim());
					st="student";
				}
				else if(typ.equals("college"))
					st="approvestudentlist";
				else if(typ.equals("admin"))
					st="approveColglist";
				else
					st="company";
			}
			else
				st="LoginFailure.jsp";
		}
		
		catch(Exception ex) {
			ex.printStackTrace();
		}
		
		return(st);	
	}
public String checkUser2() {
		
		Connection con;
		ResultSet rs;
		String typ,st="";
		GetConnection gc = new GetConnection();
		
		
		try {
			
			
			con=gc.getConnection();
			PreparedStatement pst;
			pst=con.prepareStatement("select * from users where userid=? and pswd=? and userstatus='active' ");
			pst.setString(1,userid );
			pst.setString(2, pswd);
				
			rs=pst.executeQuery();
			
			if(rs.next()) {
								
				
				/*HttpSession sess=request.getSession(true);
				sess.setAttribute("userid",userid);
				sess.setAttribute("usertype", rs.getString("usertype"));
				sess.setAttribute("usernm", rs.getString("usernm"));
				sess.setAttribute("branch", rs.getString("branch"));
				sess.setAttribute("collegeid", rs.getString("collegeId"));
				*/
				typ=rs.getString("usertype");
				//sess.setAttribute("photo", getPhoto(userid, typ));
				System.out.println("type="+typ);
				LoginTracker lt=new LoginTracker();
				lt.recordLogin(userid, typ);
				   if(typ.equals("student"))
				{
					JavaFuns jf=new JavaFuns();
					Vector v=jf.getValue("select semester,collegeId from studentpersonal where userid='"+userid.trim()+"'", 2);
					//sess.setAttribute("sem",v.elementAt(0).toString().trim());
					//sess.setAttribute("collegeid",v.elementAt(1).toString().trim());
					st="student";
				}
				else if(typ.equals("college"))
					st="approvestudentlist";
				else if(typ.equals("admin"))
					st="approveColglist";
				else
					st="company";
			}
			else
				st="LoginFailure.jsp";
		}
		
		catch(Exception ex) {
			ex.printStackTrace();
		}
		
		return(st);	
	}
public String checkUser1(HttpServletRequest request) {
		
		Connection con;
		ResultSet rs;
		String typ,st="";
		GetConnection gc = new GetConnection();
		
		
		try {
			
			
			con=gc.getConnection();
			PreparedStatement pst;
			pst=con.prepareStatement("select * from users where userid=? and pswd=? and userstatus='active' ");
			pst.setString(1,userid );
			pst.setString(2, pswd);
				
			rs=pst.executeQuery();
			
			if(rs.next()) {
								
				
				HttpSession sess=request.getSession(true);
				sess.setAttribute("userid",userid);
				sess.setAttribute("usertype", rs.getString("usertype"));
				sess.setAttribute("usernm", rs.getString("usernm"));
				sess.setAttribute("branch", rs.getString("branch"));
				sess.setAttribute("collegeid", rs.getString("collegeId"));
				
				typ=rs.getString("usertype");
				sess.setAttribute("photo", getPhoto(userid, typ));
				System.out.println("type="+typ);
				LoginTracker lt=new LoginTracker();
				lt.recordLogin(userid, typ);
				   if(typ.equals("student"))
				{
					JavaFuns jf=new JavaFuns();
					Vector v=jf.getValue("select semester,collegeId from studentpersonal where userid='"+userid.trim()+"'", 2);
					sess.setAttribute("sem",v.elementAt(0).toString().trim());
					sess.setAttribute("collegeid",v.elementAt(1).toString().trim());
					st="student";
				}
				else if(typ.equals("college"))
					st="approvestudentlist";
				else if(typ.equals("admin"))
					st="approveColglist";
				else
					st="company";
			}
			else
				st="LoginFailure1.jsp";
		}
		
		catch(Exception ex) {
			ex.printStackTrace();
		}
		
		return(st);	
	}
public String getPhoto(String userid,String utype) {
		String photo="common.png";
		Connection con;
		ResultSet rs;
		String typ,st="";
		GetConnection gc = new GetConnection();
		
		
		try {
			
			
			con=gc.getConnection();
			PreparedStatement pst;
			String qr="";
			if(utype.equals("student"))
			{
				qr="select photo from studentpersonal where userid='"+userid+"'";
			}
			else
				qr="select photo from staffpersonal where userid='"+userid+"'";

			pst=con.prepareStatement(qr);
			 
			rs=pst.executeQuery();
			
			if(rs.next()) { 
				photo=rs.getString("photo");
				 
			}
			 
		}
		
		catch(Exception ex) {
			ex.printStackTrace();
		}
		
		return(photo);	
	}
}
