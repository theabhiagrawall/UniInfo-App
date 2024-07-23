package com.unifo;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import models.CheckUser;
import models.Notes;
 

@RestController
public class UniInfoRestController {
	@RequestMapping(value = "/getNotes", method = RequestMethod.GET )
	public ResponseEntity getNotes() {
		 
		Notes obj=new Notes();
		try { 
			 
			 obj.getNotes1(); 
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("err in usergroupapi="+e.getMessage());
		 
		}
		return ResponseEntity.ok(obj);
		 
	//	return Response.status(201).entity(result).build();
	}
	@PostMapping("/checkAuth")
	 public String checkAuth(@RequestBody CheckUser obj) {
	    return obj.checkUser2();
	  }
}
