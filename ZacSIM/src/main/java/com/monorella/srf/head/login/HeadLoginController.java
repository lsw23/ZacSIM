package com.monorella.srf.head.login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.monorella.srf.head.dto.HeadManager;

@Controller
public class HeadLoginController {
	
	@Autowired
	HeadLoginDao headLoginDao;
	
	// 로그아웃
	@RequestMapping(value = "/head/login/login_logout", method = RequestMethod.GET)
	public String headLogout() {
		System.out.println("LoginController-> logout()");
		return "/head/login/login_logout";
	}
	
	// 로그인 처리
	@RequestMapping(value = "/head/login/login_pro", method = RequestMethod.POST)
	public String loginPro(HeadManager hm, HttpSession session) {
		System.out.println("LoginController-> loginPro() start");
		HeadManager headManager = headLoginDao.loginPro(hm);
		System.out.println(headManager);
		if(headManager == null){
			System.out.println("로그인 실패");
			return null;
		} else {
			System.out.println("로그인 성공");
			session.setAttribute("head_id", hm.getHead_id());
			session.setAttribute("head_pw", hm.getHead_pw());
			session.setAttribute("head_name", hm.getHead_name());
			session.setAttribute("head_manager", hm.getHead_manager());
			return "head/barach_owner/branch_owner_insert";
		}
	}
	// 로그인 폼
	@RequestMapping(value = "/head", method = RequestMethod.GET)
	public String loginForm() {
		System.out.println("LoginController-> loginForm()");
		return "head/login/login";
	}
	
}
