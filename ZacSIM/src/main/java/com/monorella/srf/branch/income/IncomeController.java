package com.monorella.srf.branch.income;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.monorella.srf.branch.dto.BranchOwner;
import com.monorella.srf.branch.dto.Payment;

@Controller
public class IncomeController {
	
	@Autowired
	private IncomeDao incomeDao; 
	
	// 수입 목록 검색
	@RequestMapping(value="/income_list_search_pro", method=RequestMethod.POST)
	public String selectIncomeList(Model model
			, @RequestParam(value="startDate") String startDate
			, @RequestParam(value="endDate") String endDate 
			, HttpSession session){
		System.out.println("IncomeController-> SelectIncomeList()-> startDate: "+ startDate+ ", endDate: "+endDate);
		// 오늘 날짜 및 해당 월 구하기 -----------------------------------------------------------
		Date today = new Date();
	    SimpleDateFormat simpleToday = new SimpleDateFormat("yyyy-MM-dd");
	    SimpleDateFormat month = new SimpleDateFormat("M");	     
	    
		// 세선에서 사업자 코드 받기
		BranchOwner branchOwner = (BranchOwner)session.getAttribute("branchOwner");
		String branch_owner_cd = branchOwner.getBranch_owner_cd();
		System.out.println("IncomeController-> SelectIncomeList()-> branch_owner_cd: "+ branch_owner_cd);
		
		// 기간별 수입 목록 검색
		List<Payment> pay = incomeDao.selectIncomeList(startDate, endDate, branch_owner_cd);
		System.out.println("IncomeController-> selectIncomeList()-> pay: "+ pay);
			
		if(pay.isEmpty()){
			String getNull = "선택하신 기간에는 수입 항목이 없습니다.";
			model.addAttribute("getNull", getNull);
		    		
		    //기간 수입 합계
 			int total = 0;
 			
 			model.addAttribute("total", total);
 			model.addAttribute("today", simpleToday.format(today));
		    model.addAttribute("month", month.format(today));	    
		    model.addAttribute("startDate", startDate);
			model.addAttribute("endDate", endDate);
 			
			return "/account/income";
		}else{
			// 기간 수입 합계
			int total = incomeDao.selectIncomeSum(startDate, endDate, branch_owner_cd);
			System.out.println("IncomeController-> selectIncomeList()-> total: "+ total);
			
			model.addAttribute("today", simpleToday.format(today));
		    model.addAttribute("month", month.format(today));
			model.addAttribute("total", total);		
			model.addAttribute("startDate", startDate);
			model.addAttribute("endDate", endDate);
			model.addAttribute("pay", pay);
			
			return "/account/income";
		}
	}
	
	// 수입 목록 폼
	@RequestMapping(value="/account/income", method=RequestMethod.GET)
	public String incomeForm(Model model){
		System.out.println("AccountController-> selectIncomeList()");
		
		// 오늘 날짜 및 해당 월 구하기 -----------------------------------------------------------
		Date today = new Date();
	    SimpleDateFormat simpleToday = new SimpleDateFormat("yyyy-MM-dd");
	    SimpleDateFormat month = new SimpleDateFormat("M");	    
	    
	    //System.out.println("IncomeController-> IncomeForm()-> simpleToday: "+ simpleToday.format(today));
 		//System.out.println("IncomeController-> IncomeForm()-> month: "+ month.format(today));
	    
	    model.addAttribute("today", simpleToday.format(today));
	    model.addAttribute("month", month.format(today));
	    
	    return "/account/income";
	}
}
