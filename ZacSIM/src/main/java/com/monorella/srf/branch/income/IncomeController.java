package com.monorella.srf.branch.income;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class IncomeController {
	
	@Autowired
	private IncomeDao incomeDao; 
	
	// 수입 목록 폼
	@RequestMapping(value="/account/income", method=RequestMethod.GET)
	public String selectIncomeList(Model model
			, @RequestParam(value="startDate") String startDate
			, @RequestParam(value="endDate") String endDate ){
		System.out.println("AccountController-> selectIncomeList()");
		// 오늘 날짜 및 해당 월 구하기 -----------------------------------------------------------
		Date today = new Date();
	    SimpleDateFormat simpleToday = new SimpleDateFormat("yyyy-MM-dd");
	    SimpleDateFormat month = new SimpleDateFormat("M");
	    
	    // 기간 별 수입 목록 검색
	    
	    
	    //System.out.println("DashboardController-> selectTodayStatus()-> simpleToday: "+ simpleToday.format(today));
 		//System.out.println("DashboardController-> selectTodayStatus()-> month: "+ month.format(today));
		
	    model.addAttribute("today", simpleToday.format(today));
	    model.addAttribute("month", month.format(today));
	    
	    return "/account/income";
	}
}
