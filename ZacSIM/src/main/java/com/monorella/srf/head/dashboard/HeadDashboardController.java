package com.monorella.srf.head.dashboard;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HeadDashboardController {
	
	@Autowired
	HeadDashboardDao headDashboardDao;
	
	@RequestMapping(value="/head/dashboard/dashboard", method = RequestMethod.GET)
	public String dashboard(Model model){
		System.out.println("DashboardController-> dashboard()");
		// 오늘 날짜 및 해당 월 구하기 -----------------------------------------------------------
		Date today = new Date();
	    SimpleDateFormat simpleToday = new SimpleDateFormat("yyyy-MM-dd");
	    SimpleDateFormat month = new SimpleDateFormat("M");
		
	    //System.out.println("DashboardController-> selectTodayStatus()-> simpleToday: "+ simpleToday.format(today));
 		//System.out.println("DashboardController-> selectTodayStatus()-> month: "+ month.format(today));
	    
	    model.addAttribute("today", simpleToday.format(today));
	    model.addAttribute("month", month.format(today));
	    
		return "head/dashboard/dashboard";
	}
}
