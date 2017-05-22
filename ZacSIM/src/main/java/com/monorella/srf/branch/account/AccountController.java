package com.monorella.srf.branch.account;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AccountController {
	
	// 수입 목록 폼
	@RequestMapping(value="/account/income", method=RequestMethod.GET)
	public String selectIncomeList(){
		return "/account/income";
	}
}
