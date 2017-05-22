package com.monorella.srf.branch.attendance;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AttendanceController {
	//출결번호 창
	@RequestMapping(value="/attendance/attendance_form" , method=RequestMethod.GET)
	public String attendance_from(){
		System.out.println("attendance_from()");
		return "attendance/attendance_form";
	}
	
	@RequestMapping(value="/attendance/attendance_input")
	public String attendance_input(){
		return "attendance/attendance_input";
	}
}
