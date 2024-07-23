package com.unifo;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.http.HttpServletRequest;

import jakarta.servlet.ServletRequest;
import jakarta.servlet.http.HttpSession;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import models.ApproveCollege;
import models.ApproveStudents;
import models.CheckUser;
import models.College;
import models.CollegeDetails;
import models.JavaFuns;
import models.Notes;
import models.Pass;
import models.PasswordRecovery;
import models.RegisterBranch;
 
import models.Student;
import models.ViewColg;
import models.ViewColgList;
import models.ViewStudent;
import models.ViewStudentList;

@Controller
public class UnifoController implements ErrorController{
	@RequestMapping("/home")
	public String index()
	{
		return "index.jsp";
	}
	@RequestMapping("/logout")
	public String logout(HttpSession ses)
	{
		ses.invalidate();
		return "index.jsp";
	}
	@RequestMapping("/logout1")
	public String logout1(HttpSession ses)
	{
		ses.invalidate();
		return "index1.jsp";
	}
	@RequestMapping("/home1")
	public String index1()
	{
		return "index1.jsp";
	}
	@RequestMapping("/check1")
	public String check1(CheckUser cu,jakarta.servlet.http.HttpServletRequest request) {
		
		String st=cu.checkUser1(request);
		
		return st;
	}
	@RequestMapping("/check")
	public String check(CheckUser cu,jakarta.servlet.http.HttpServletRequest request) {
		
		String st=cu.checkUser(request);
		
		return st;
	}
	@RequestMapping("/registerstudent")
	public String registerstudent()
	{
		return "Register.jsp";
	}
	@RequestMapping("/studentHome")
	public String studentHome()
	{
		return "Student1.jsp";
	}
	@RequestMapping("/student")
	public String student()
	{
		return "Student.jsp";
	}
	@RequestMapping("/college")
	public String admin()
	{
		return "Admin.jsp";
	}
	@RequestMapping("/admin")
	public String cloudadmin()
	{
		return "Admin.jsp";
	}
	 @RequestMapping("/error")
    public String handleError() {
        //do something like logging
		return "home";
    }
  
    public String getErrorPath() {
        return "/error";
    }
    @RequestMapping("/registercolg")
   	public ModelAndView registercolg(College stu,ServletRequest request)
   	{
   		ModelAndView mv=new ModelAndView();
   		 try
   		 {MultipartFile file=stu.getFile();
   		 String filepath=request.getServletContext().getRealPath("/")+"/Uploads/";
   		 
   		 
   		 System.out.println("path="+filepath);
   		 File f=new File(filepath);
   		 f.mkdir();
   		  
   		 try {
   			  
   			 String fileName=stu.getUserid()+"."+ file.getOriginalFilename().split("\\.")[1];
   			 file.transferTo(new File(filepath+"/"+fileName));
   			 stu.setPath(fileName);
   			 String st=stu.addNewCollege();
   				if(st.equals("success"))
   					mv.setViewName("Success.jsp");
   				else
   					mv.setViewName("Failure.jsp");
   		 }
   		 catch (Exception e) {
   			// TODO: handle exception
   			 mv.setViewName("Failure.jsp");
   		}}
   		 catch (Exception e) {
   				// TODO: handle exception
   			 e.printStackTrace();
   			 mv.setViewName("Failure.jsp");
   			}
   		 mv.addObject("activity","ColgReg");
   		 return mv;
   		
   	}
	@RequestMapping("/uploadNotes")
   	public ModelAndView uploadNotes(Notes stu,ServletRequest request)
   	{
   		ModelAndView mv=new ModelAndView();
   		 try
   		 {MultipartFile file=stu.getFile();
   		 String filepath=request.getServletContext().getRealPath("/")+"/Notes/";
   		 int id=stu.getId();
   		 
   		 System.out.println("path="+filepath);
   		 File f=new File(filepath);
   		 f.mkdir();
   		  
   		 try {
   			  
   			 String fileName=id+"."+ file.getOriginalFilename().split("\\.")[1];
   			 file.transferTo(new File(filepath+"/"+fileName));
   			 stu.setPath(fileName);
   			 
   			 String st=stu.uploadNotes();
   			System.out.println("sts="+st);
   				if(st.equals("Success.jsp"))
   					mv.setViewName("Success1.jsp");
   				else
   					mv.setViewName("Failure1.jsp");
   		 }
   		 catch (Exception e) {
   			// TODO: handle exception
   			 mv.setViewName("Failure1.jsp");
   		}}
   		 catch (Exception e) {
   				// TODO: handle exception
   			 mv.setViewName("Failure1.jsp");
   			}
   		 mv.addObject("activity","uploadNotes");
   		 return mv;
   		
   	}
	@RequestMapping("/RegCutoffS")
   	public ModelAndView RegCutoffS(CollegeDetails stu,HttpServletRequest request)
   	{
   		ModelAndView mv=new ModelAndView();
   		  
   		 try {
   			  
   			  JavaFuns jf=new JavaFuns();
   			  if(jf.execute("delete from studentmarks"));
   			 String st=stu.regCutoffS();
   			System.out.println("sts="+st);
   				if(st.equals("Success.jsp"))
   				{
   					List<ViewColg> lst = new ArrayList<ViewColg>();
   					ViewColg vs = new ViewColg();
   					lst=vs.getColgReportRecomm();
   					 
   					mv.addObject("std",lst);
   					System.out.println("list="+lst.size());
   					mv.setViewName("viewRecommColleges.jsp");
   				}
   				else
   					mv.setViewName("Failure.jsp");
   		 }
   		 catch (Exception e) {
   				// TODO: handle exception
   			 mv.setViewName("Failure.jsp");
   			}
   		 mv.addObject("activity","uploadCutoffs");
   		 return mv;
   		
   	}
   	@RequestMapping("/RegCutoff")
   	public ModelAndView RegCutoff(CollegeDetails stu,HttpServletRequest request)
   	{
   		ModelAndView mv=new ModelAndView();
   		  
   		 try {
   			  
   			  
   			 String st=stu.regCutoff();
   			System.out.println("sts="+st);
   				if(st.equals("Success.jsp"))
   					mv.setViewName("Success.jsp");
   				else
   					mv.setViewName("Failure.jsp");
   		 }
   		 catch (Exception e) {
   				// TODO: handle exception
   			 mv.setViewName("Failure.jsp");
   			}
   		 mv.addObject("activity","uploadColgCutoff");
   		 return mv;
   		
   	}
	@RequestMapping("/uploadColgDetails11")
   	public ModelAndView uploadColgDetails1(CollegeDetails stu,HttpServletRequest request)
   	{
   		ModelAndView mv=new ModelAndView();
   		 try
   		 {MultipartFile file=stu.getFile();
   		 String filepath=request.getServletContext().getRealPath("/")+"/CollegeDetails/";
   		 int id=stu.getId();
   		 
   		 System.out.println("path="+filepath);
   		 File f=new File(filepath);
   		 f.mkdir();
   		  
   		 try {
   			  
   			 String fileName=id+"."+ file.getOriginalFilename().split("\\.")[1];
   			 file.transferTo(new File(filepath+"/"+fileName));
   			 stu.setPath(fileName);
   			 
   			 String st=stu.uploadDetails();
   			System.out.println("sts="+st);
   				if(st.equals("Success.jsp"))
   					mv.setViewName("Success.jsp");
   				else
   					mv.setViewName("Failure.jsp");
   		 }
   		 catch (Exception e) {
   			// TODO: handle exception
   			 mv.setViewName("Failure.jsp");
   		}}
   		 catch (Exception e) {
   				// TODO: handle exception
   			 mv.setViewName("Failure.jsp");
   			}
   		 mv.addObject("activity","uploadColgDetails");
   		 return mv;
   		
   	}
   	@RequestMapping("/registeruser")
   	public ModelAndView registeruser(Student stu,ServletRequest request)
   	{
   		ModelAndView mv=new ModelAndView();
   		 try
   		 {MultipartFile file=stu.getFile();
   		 String filepath=request.getServletContext().getRealPath("/")+"/Uploads/";
   		 
   		 
   		 System.out.println("path="+filepath);
   		 File f=new File(filepath);
   		 f.mkdir();
   		  
   		 try {
   			  
   			 String fileName=stu.getUserid()+"."+ file.getOriginalFilename().split("\\.")[1];
   			 file.transferTo(new File(filepath+"/"+fileName));
   			 stu.setPath(fileName);
   			 String st=stu.addNewStudent();
   				if(st.equals("success"))
   					mv.setViewName("Success.jsp");
   				else
   					mv.setViewName("Failure.jsp");
   		 }
   		 catch (Exception e) {
   			// TODO: handle exception
   			 mv.setViewName("Failure.jsp");
   		}}
   		 catch (Exception e) {
   				// TODO: handle exception
   			 mv.setViewName("Failure.jsp");
   			}
   		 mv.addObject("activity","StudReg");
   		 return mv;
   		
   	}
   	@RequestMapping("/updateuser")
   	public ModelAndView updateuser(Student stu,ServletRequest request,HttpSession ses)
   	{String fileName="NA";
   		
   	ModelAndView mv=new ModelAndView();
   	try
   		 {
   			 stu.setUserid(ses.getAttribute("userid").toString().trim());
   			 
   		  
   		 try {
   			 MultipartFile file=stu.getFile();
   			 String filepath=request.getServletContext().getRealPath("/")+"/Uploads/";
   			 
   			 
   			 System.out.println("path="+filepath);
   			 File f=new File(filepath);
   			 f.mkdir();
   			  fileName=stu.getUserid()+"."+ file.getOriginalFilename().split("\\.")[1];
   			 file.transferTo(new File(filepath+"/"+fileName));
   			 
   		 }
   		 catch (Exception e) {
   			// TODO: handle exception
   			// return "UserRegFailure.jsp";
   		}
   		 if(!fileName.equals("NA"))
   		 {
   			 ses.setAttribute("photo", fileName);
   		 }
   		 stu.setPath(fileName);
   		 String st=stu.updateStudent(stu.getUserid());
   		 if(st.equals("success"))
   				mv.setViewName("Success.jsp");
   			else
   				mv.setViewName("Failure.jsp");
   		 }
   		 catch (Exception e) {
   			 System.out.println("in update="+e.getMessage());
   				// TODO: handle exception
   			 mv.setViewName("Failure.jsp");
   			}
   		 mv.addObject("activity","StudProfile");
   		 return mv;
   	}
   	@RequestMapping("/forgetpassword")
	public String forgetpassword() {
		
		return("ForgetPassword.jsp");
	}
	@RequestMapping("/recoverpassword")
	public String recoverpassword(PasswordRecovery pr) {
		
		String sts=pr.getNewPassword();
		
		return(sts);
	}
	@RequestMapping("/ChangePass")
	public String ChangePass()
	{
		return "ChangePass.jsp";
	}
	@RequestMapping("/ChangePassService")
	public ModelAndView ChangePassService(Pass eobj,HttpSession ses)
	{
		ModelAndView mv=new ModelAndView();
		 try
		 {
			 
			 eobj.setUserid(ses.getAttribute("userid").toString().trim());
			 if(eobj.changePassword())
			 { 
				 mv.setViewName("Success.jsp");
			 }
			 else
			 { 
				 mv.setViewName("Failure.jsp");
			 }
		 }
		 catch (Exception e) {
			// TODO: handle exception
			 System.out.println("err="+e.getMessage());
			 mv.setViewName("Failure.jsp");
		}
		 mv.addObject("activity","changePass");
		 return mv;
		 
	}
	@RequestMapping("/registerbranch")
	@SessionScope
	public String registerbranch() {
		
		return("RegisterBranch.jsp");
		
	}
	@RequestMapping("/registernewbranch")
	public ModelAndView registernewbranch(RegisterBranch rb) {
		
		String st=rb.registerBranch();
		ModelAndView mv=new ModelAndView();
		mv.setViewName(st);
		mv.addObject("activity","branchReg");
		return mv;
	}

	@RequestMapping("/activatestudent")
	public ModelAndView activatestudent(HttpServletRequest request) {
		ModelAndView mv=new ModelAndView();
		ApproveStudents ap=new ApproveStudents();
		String sts=ap.updateStudentStatus(request.getParameter("uid").trim());
		if(sts.equals("success"))
			 mv.setViewName("Success.jsp");
		else
			 mv.setViewName("Failure.jsp");
		mv.addObject("activity","studActivation");
		 return mv;
	}
	@RequestMapping("/activateColg")
	public ModelAndView activateColg(HttpServletRequest request) {
		ModelAndView mv=new ModelAndView();
		String uid=request.getParameter("uid").toString().trim();
		System.out.println("uid="+uid);
		ApproveCollege ap=new ApproveCollege();
		String sts=ap.updateColgStatus(uid);
		if(sts.equals("success"))
			 mv.setViewName("Success.jsp");
		else
			 mv.setViewName("Failure.jsp");
		mv.addObject("activity","ColgActivation");
		 return mv;
	}
	@RequestMapping("/viewColg")
	@SessionScope
	public ModelAndView viewColg() {
		
		List<ViewColg> lst = new ArrayList<ViewColg>();
		ViewColg vs = new ViewColg();
		lst=vs.getColgReport();
		ModelAndView mv=new ModelAndView();
		mv.addObject("std",lst);
		mv.setViewName("ViewColgReport.jsp");
		return mv;
	}
	@RequestMapping("/viewstudent")
	@SessionScope
	public ModelAndView viewstudent(HttpSession ses) {
		
		List<ViewStudent> lst = new ArrayList<ViewStudent>();
		ViewStudent vs = new ViewStudent();
		if(ses.getAttribute("usertype").toString().trim().equals("tnpadmin"))
		{
			lst=vs.getStudentReport1(ses.getAttribute("collegeid").toString().trim(),ses.getAttribute("branch").toString().trim());
			
		}
		else
		{
			lst=vs.getStudentReport(ses.getAttribute("userid").toString().trim());
			
		}
	//System.out.println("colg="+ses.getAttribute("collegeid").toString().trim());
	//	lst=vs.getStudentReport(ses.getAttribute("collegeid").toString().trim());
		ModelAndView mv=new ModelAndView();
		mv.addObject("std",lst);
		mv.setViewName("ViewStudentReport.jsp");
		return mv;
	}
	
	@RequestMapping("/editProfile")
	@SessionScope
	public ModelAndView editProfile(HttpSession ses) {
		ModelAndView mv=new ModelAndView();
		try
		{
		List<Student> lst = new ArrayList<Student>();
		Student vs = new Student();
		lst=vs.getStudentReport(ses.getAttribute("userid").toString().trim());
		
		mv.addObject("std",lst);
		}
		catch (Exception e) {
		System.out.println("errr in edit="+e.getMessage());
		}
		mv.setViewName("EditProfileStud.jsp");
		return mv;
	}
	@RequestMapping("/viewColgDetails1")
	@SessionScope
	public ModelAndView viewColgDetails1(HttpSession ses,HttpServletRequest request) {
		
		List<CollegeDetails> lst = new ArrayList<CollegeDetails>();
		CollegeDetails vls= new CollegeDetails();
		vls.setCollegeid(request.getParameter("userid").toString().trim());
		 
		lst=vls.getColgDetails(vls.getCollegeid());
		ModelAndView mv=new ModelAndView();
		mv.addObject("stf",lst);
		System.out.println("lkttt="+lst.size());
		mv.setViewName("viewColgDetails1.jsp");
		return mv;
	
	}
	@RequestMapping("/viewColgDetails")
	@SessionScope
	public ModelAndView viewColgDetails(HttpSession ses) {
		
		List<CollegeDetails> lst = new ArrayList<CollegeDetails>();
		CollegeDetails vls= new CollegeDetails();
		vls.setCollegeid(ses.getAttribute("userid").toString().trim());
		 
		lst=vls.getColgDetails(vls.getCollegeid());
		ModelAndView mv=new ModelAndView();
		mv.addObject("stf",lst);
		System.out.println("lkttt="+lst.size());
		mv.setViewName("viewColgDetails.jsp");
		return mv;
	
	}
	@RequestMapping("/viewNotes")
	@SessionScope
	public ModelAndView viewNotes(HttpSession ses) {
		
		List<Notes> lst = new ArrayList<Notes>();
		Notes vls= new Notes();
		vls.setCollegeid(ses.getAttribute("collegeid").toString().trim());
		vls.setSem(ses.getAttribute("sem").toString().trim());
		vls.setBranch(ses.getAttribute("branch").toString().trim());
		
		lst=vls.getNotes();
		ModelAndView mv=new ModelAndView();
		mv.addObject("stf",lst);
		System.out.println("lkttt="+lst.size());
		mv.setViewName("viewNotes.jsp");
		return mv;
	
	}
	@RequestMapping("/viewNotes1")
	@SessionScope
	public ModelAndView viewNotes1(HttpSession ses) {
		
		List<Notes> lst = new ArrayList<Notes>();
		Notes vls= new Notes();
		vls.setCollegeid(ses.getAttribute("collegeid").toString().trim());
		vls.setSem(ses.getAttribute("sem").toString().trim());
		vls.setBranch(ses.getAttribute("branch").toString().trim());
		vls.setUserid(ses.getAttribute("userid").toString().trim());
		
		lst=vls.getNotes1();
		ModelAndView mv=new ModelAndView();
		mv.addObject("stf",lst);
		System.out.println("lkttt="+lst.size());
		mv.setViewName("viewNotes.jsp");
		return mv;
	
	}
	@RequestMapping("/approvestudentlist")
	@SessionScope
	public ModelAndView approvestudentlist(HttpSession ses) {
		
		List<ViewStudentList> lst = new ArrayList<ViewStudentList>();
		ViewStudentList vls= new ViewStudentList();
		vls.setCollegeid(ses.getAttribute("userid").toString().trim());
		lst=vls.getapprovalList();
		ModelAndView mv=new ModelAndView();
		mv.addObject("stf",lst);
		System.out.println("lkttt="+lst.size());
		mv.setViewName("UpdateStudentStatus.jsp");
		return mv;
	
	}
	@RequestMapping("/approveColglist")
	@SessionScope
	public ModelAndView approvecolglist() {
		
		List<ViewColgList> lst = new ArrayList<ViewColgList>();
		ViewColgList vls= new ViewColgList();
		
		lst=vls.getapprovalList();
		ModelAndView mv=new ModelAndView();
		mv.addObject("stal",lst);
		mv.setViewName("UpdateColgStatus.jsp");
		return mv;
	
	}
}
