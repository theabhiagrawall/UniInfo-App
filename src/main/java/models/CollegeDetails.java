package models;

import java.sql.*;
import java.sql.Date;

import  beans.*;
import java.util.*;

import org.springframework.web.multipart.MultipartFile;

public class CollegeDetails {
	
	private String userid,collegeid;
	private String usernm; 
	private String title,fromyr,toyr,branch,details,path,dt;
	private double hsc,cet,cet_per,pcm;
	private int merit_rank;
	private List<CollegeDetails> lstdetails;
	private MultipartFile file;
	Connection con;
	 
	public String getFromyr() {
		return fromyr;
	}
	public void setFromyr(String fromyr) {
		this.fromyr = fromyr;
	}
	public String getToyr() {
		return toyr;
	}
	public void setToyr(String toyr) {
		this.toyr = toyr;
	}
	public double getHsc() {
		return hsc;
	}
	public void setHsc(double hsc) {
		this.hsc = hsc;
	}
	public double getCet() {
		return cet;
	}
	public void setCet(double cet) {
		this.cet = cet;
	}
	public double getCet_per() {
		return cet_per;
	}
	public void setCet_per(double cet_per) {
		this.cet_per = cet_per;
	}
	public double getPcm() {
		return pcm;
	}
	public void setPcm(double pcm) {
		this.pcm = pcm;
	}
	public int getMerit_rank() {
		return merit_rank;
	}
	public void setMerit_rank(int merit_rank) {
		this.merit_rank = merit_rank;
	}
	public String getDt() {
		return dt;
	}
	public void setDt(String dt) {
		this.dt = dt;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getCollegeid() {
		return collegeid;
	}
	public void setCollegeid(String collegeid) {
		this.collegeid = collegeid;
	}
	public String getUsernm() {
		return usernm;
	}
	public void setUsernm(String usernm) {
		this.usernm = usernm;
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
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public List<CollegeDetails> getLstdetails() {
		return lstdetails;
	}
	public void setLstdetails(List<CollegeDetails> lstdetails) {
		this.lstdetails = lstdetails;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	
	public List<CollegeDetails> getColgDetails(String colgid){
		
		
		GetConnection gc = new GetConnection();
		Statement st;
		List<CollegeDetails> lst = new ArrayList<CollegeDetails>();
		ResultSet rs;
		
		try {
			
			con=gc.getConnection();
			st=con.createStatement();
			String qr="select * from college_details where collegeid='"+collegeid+"'";
			
			rs=st.executeQuery(qr);
			System.out.println("qr="+qr);
			CollegeDetails vsl;
			
			while(rs.next()) {
				
				vsl= new CollegeDetails();
				vsl.setUserid(rs.getString("collegeid"));
			 
				vsl.setTitle(rs.getString("title"));
				vsl.setDetails(rs.getString("details"));
				vsl.setPath(rs.getString("docpath"));
				vsl.setDt(rs.getString("dt"));
				 
				lst.add(vsl);
				
				
			}
			
			
		}
		
		catch(Exception ex) {
			ex.printStackTrace();
		}
	
		return(lst);
	}
	
	public String regCutoff() {
		 
		PreparedStatement pst;
		GetConnection gc = new GetConnection();
		String sts="";
		
		try {
			con=gc.getConnection();
			
			pst=con.prepareStatement("insert into college_admission_cutoff values(?,?,?,?,?,?,?,?,?);");
			pst.setInt(1, getIdCutoff());
			pst.setString(2, userid);
			pst.setDouble(3, hsc);
			pst.setDouble(4, pcm);
			pst.setDouble(5, cet);
			pst.setDouble(6, cet_per);
			pst.setString(7, fromyr+"-"+toyr);
			pst.setString(8, branch);
			pst.setInt(9, merit_rank);
		 
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
	public String regCutoffS() {
		 
		PreparedStatement pst;
		GetConnection gc = new GetConnection();
		String sts="";
		
		try {
			con=gc.getConnection();
			
			pst=con.prepareStatement("insert into studentmarks values(?,?,?,?,?,?,?,?,?);");
			pst.setInt(1, getIdCutoffS());
			pst.setString(2, usernm);
			pst.setDouble(3, hsc);
			pst.setDouble(4, pcm);
			pst.setDouble(5, cet);
			pst.setDouble(6, cet_per);
			pst.setString(7, fromyr+"-"+toyr);
			pst.setString(8, branch);
			pst.setInt(9, merit_rank);
		 
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
	public String uploadDetails() {
		 
		PreparedStatement pst;
		GetConnection gc = new GetConnection();
		String sts="";
		
		try {
			con=gc.getConnection();
			
			pst=con.prepareStatement("insert into college_details values(?,?,?,?,?,?);");
			pst.setInt(1, getId());
			pst.setString(2, userid);
			pst.setString(3, title);
			pst.setString(4, details);
			pst.setString(5, path);
			java.util.Date d=new java.util.Date();
			dt=d.getDate()+"/"+(d.getMonth()+1 )+"/"+(d.getYear()+1900);
			pst.setString(6, dt); 
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
	          CallableStatement csmt=con.prepareCall("{call getMaxIdColgDetails()}");
	           
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
	 	public int getIdCutoff()
	    {
	 		int mxid=1000;
	        try
	        {
	    	PreparedStatement pst;
	    	GetConnection gc = new GetConnection();
	    	
	             
	            con=gc.getConnection();
	          CallableStatement csmt=con.prepareCall("{call getMaxIdColgCutoff()}");
	           
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
	 	public int getIdCutoffS()
	    {
	 		int mxid=1000;
	        try
	        {
	    	PreparedStatement pst;
	    	GetConnection gc = new GetConnection();
	    	
	             
	            con=gc.getConnection();
	          CallableStatement csmt=con.prepareCall("{call getMaxIdstudentmarks()}");
	           
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
