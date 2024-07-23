package models;

import java.sql.*;
import  beans.*;
import java.util.*;

import org.springframework.web.multipart.MultipartFile;

public class Notes {
	
	private String userid,collegeid;
	private String usernm;
	private String usertype;
	private String userstatus,mobileno,emailid,title,branch,sem,subject,topic,details,path;
	private double price;
	private List<Notes> lstnotes;
	private MultipartFile file;
	Connection con;
	public double getPrice() {
		return price;
	}
	
	public List<Notes> getLstnotes() {
		return lstnotes;
	}

	public void setLstnotes(List<Notes> lstnotes) {
		this.lstnotes = lstnotes;
	}

	public String getMobileno() {
		return mobileno;
	}

	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}

	public String getEmailid() {
		return emailid;
	}

	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}

	public void setPrice(double price) {
		this.price = price;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getSem() {
		return sem;
	}
	public void setSem(String sem) {
		this.sem = sem;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getTopic() {
		return topic;
	}
	public void setTopic(String topic) {
		this.topic = topic;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public String getCollegeid() {
		return collegeid;
	}
	public void setCollegeid(String collegeid) {
		this.collegeid = collegeid;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUsernm() {
		return usernm;
	}
	public void setUsernm(String usernm) {
		this.usernm = usernm;
	}
	public String getUsertype() {
		return usertype;
	}
	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}
	public String getUserstatus() {
		return userstatus;
	}
	public void setUserstatus(String userstatus) {
		this.userstatus = userstatus;
	}
	
	
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public List<Notes> getNotes(){
		
		
		GetConnection gc = new GetConnection();
		Statement st;
		List<Notes> lst = new ArrayList<Notes>();
		ResultSet rs;
		
		try {
			
			con=gc.getConnection();
			st=con.createStatement();
			String qr="select n.*,u.mobileno,u.emailid from  notes n inner join studentpersonal u on n.userid=u.userid where n.sem='"+sem+"' and n.branch='"+branch+"' and u.collegeid='"+collegeid+"'";
			
			rs=st.executeQuery(qr);
			System.out.println("qr="+qr);
			Notes vsl;
			
			while(rs.next()) {
				
				vsl= new Notes();
				vsl.setUserid(rs.getString("userid"));
				vsl.setUsernm(rs.getString("username"));
				vsl.setTitle(rs.getString("title"));
				vsl.setDetails(rs.getString("details"));
				vsl.setPath(rs.getString("notes_path"));
				vsl.setBranch(rs.getString("branch"));
				vsl.setSem(rs.getString("sem"));
				vsl.setSubject(rs.getString("subject"));
				vsl.setTopic(rs.getString("topic"));
				vsl.setMobileno(rs.getString("mobileno"));
				vsl.setEmailid(rs.getString("emailid"));
				vsl.setPrice(rs.getDouble("price"));
				lst.add(vsl);
				
				
			}
			
			
		}
		
		catch(Exception ex) {
			ex.printStackTrace();
		}
	
		return(lst);
	}
public List<Notes> getNotes1(){
		
		
		GetConnection gc = new GetConnection();
		Statement st;
		List<Notes> lst = new ArrayList<Notes>();
		ResultSet rs;
		
		try {
			
			con=gc.getConnection();
			st=con.createStatement();
			String qr="select n.*,u.mobileno,u.emailid from  notes n inner join studentpersonal u on n.userid=u.userid where n.userid='"+userid+"'";
			
			rs=st.executeQuery(qr);
			System.out.println("qr="+qr);
			Notes vsl;
			
			while(rs.next()) {
				
				vsl= new Notes();
				vsl.setUserid(rs.getString("userid"));
				vsl.setUsernm(rs.getString("username"));
				vsl.setTitle(rs.getString("title"));
				vsl.setDetails(rs.getString("details"));
				vsl.setPath(rs.getString("notes_path"));
				vsl.setBranch(rs.getString("branch"));
				vsl.setSem(rs.getString("sem"));
				vsl.setSubject(rs.getString("subject"));
				vsl.setTopic(rs.getString("topic"));
				vsl.setMobileno(rs.getString("mobileno"));
				vsl.setEmailid(rs.getString("emailid"));
				vsl.setPrice(rs.getDouble("price"));
				lst.add(vsl);
				
				
			}
			lstnotes=new ArrayList<Notes>();
			lstnotes=lst;
			
		}
		
		catch(Exception ex) {
			ex.printStackTrace();
		}
	
		return(lst);
	}
	public String uploadNotes() {
		 
		PreparedStatement pst;
		GetConnection gc = new GetConnection();
		String sts="";
		
		try {
			con=gc.getConnection();
			
			pst=con.prepareStatement("insert into notes values(?,?,?,?,?,?,?,?,?,?,?);");
			pst.setInt(1, getId());
			pst.setString(2, title);
			pst.setString(3, userid);
			pst.setString(4, usernm);
			pst.setString(5, branch);
			pst.setString(6, sem);
			pst.setString(7, subject);
			pst.setString(8, topic);
			pst.setString(9, details);
			pst.setString(10, path);
			pst.setDouble(11, price);
			int x= pst.executeUpdate();
			
			if(x>0)
				sts="Success.jsp";
			else
				sts="Failure.jsp";
		}
		catch(Exception ex) {
			System.out.println("err="+ex.getMessage());
			ex.printStackTrace();
		}
		return(sts);
		}
	 	public int getId()
	    {
	 		int mxid=1000;
	        try
	        {
	    	PreparedStatement pst;
	    	GetConnection gc = new GetConnection();
	    	
	             
	            con=gc.getConnection();
	          CallableStatement csmt=con.prepareCall("{call getMaxIdNotes()}");
	           
	             csmt.execute();
	            ResultSet rs=csmt.getResultSet();
	                        
	            boolean auth=false;
	            while(rs.next())
	            { System.out.println("true");
	                auth=true;
	                
	                mxid=rs.getInt("mxid");
	                  
	            }
	        }
	           
	         
	        catch(Exception ex)
	        {
	            System.out.println("err="+ex.getMessage());
	             
	        }
	        return (mxid+1);
	    } 
	
}
