package com.monorella.srf.branch.dashboard;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.monorella.srf.branch.dto.BranchOwner;
import com.monorella.srf.branch.dto.InsertNumList;
import com.monorella.srf.branch.dto.Member;

@Controller
public class DashboardController {
	
	@Autowired
	DashboardDao dashboardDao;
	
	// test
	@RequestMapping(value="/test" , method = RequestMethod.GET)
	public String test(){
		return "/dashboard/test";
	}
	
	// 메뉴 - 통계 폼
	@RequestMapping(value="/dashboard/all_status" , method = RequestMethod.GET)
	public String selectAllStatus(Model model, HttpSession session){
		System.out.println("DashboardController-> selectAllStatus()");
		
		// 세션에서 오너코드 받기
		BranchOwner branchOwner = (BranchOwner)session.getAttribute("branchOwner");
		String branch_owner_cd = branchOwner.getBranch_owner_cd();
		System.out.println("DashboardController-> selectAllStatus() branch_owner_cd: "+ branch_owner_cd);
		
		// 오너 코드를 통한 월별 남녀 가입자수 받기------------------------------------------------
		InsertNumList monthMen = dashboardDao.selectInsertNumMen(branch_owner_cd);
		InsertNumList monthWoman = dashboardDao.selectInsertNumWoman(branch_owner_cd);
		
		// 오늘 날짜 및 해당 월 구하기 -----------------------------------------------------------
		Date today = new Date();
	    SimpleDateFormat simpleToday = new SimpleDateFormat("yyyy-MM-dd");
	    SimpleDateFormat month = new SimpleDateFormat("M");
	    
	    // 주 이용 목적
	    int languageNo = dashboardDao.selectPurposeLanguage(branch_owner_cd); //외국어
	    int CSATNo = dashboardDao.selectPurposeCSAT(branch_owner_cd); //수능
 		int publicOfficialNo = dashboardDao.selectPurposePublicOfficial(branch_owner_cd); //공무원
 		int licenseNo = dashboardDao.selectPurposeLicense(branch_owner_cd); //자격증
 		int purposeEtcNo = dashboardDao.selectPurposeEtc(branch_owner_cd); //기타
	    
	    // 회원----------------------------------------------------------------------------
	    int monthMemberNo = dashboardDao.selectMonthInsertMemberCount(branch_owner_cd); // 당월 가입 회원 수
	    int MemberNo = dashboardDao.selectMemberCount(branch_owner_cd); //전체 회원 수
 		int MenNo = dashboardDao.selectMenCount(branch_owner_cd); //남성
 		int womanNo = dashboardDao.selectWomanCount(branch_owner_cd); //여성
 		
 		// 등록경로------------------------------------------------------------
		int pamphletNo = dashboardDao.selectPamphletCount(branch_owner_cd); //전단지
		int placardNo = dashboardDao.selectPlacardCount(branch_owner_cd); //플래카드
		int introductionNo = dashboardDao.selectIntroductionCount(branch_owner_cd); //지인소개
		int internetNo = dashboardDao.selectInternetCount(branch_owner_cd); //인터넷
		int pathEtcNo = dashboardDao.selectEtcCount(branch_owner_cd); //기타
		
		System.out.println("DashboardController-> selectTodayStatus()-> monthMen: "+ monthMen);
 		System.out.println("DashboardController-> selectTodayStatus()-> monthWoman: "+ monthWoman);
		
 		//System.out.println("DashboardController-> selectTodayStatus()-> simpleToday: "+ simpleToday.format(today));
 		//System.out.println("DashboardController-> selectTodayStatus()-> month: "+ month.format(today));
	    
		//System.out.println("DashboardController-> selectTodayStatus()-> languageNo: "+languageNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> CSATNo: "+CSATNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> publicOfficialNo: "+publicOfficialNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> licenseNo: "+licenseNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> purposeEtcNo: "+purposeEtcNo);
		
		//System.out.println("DashboardController-> selectTodayStatus()-> monthMemberNo: "+monthMemberNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> MemberNo: "+MemberNo);
 		//System.out.println("DashboardController-> selectTodayStatus()-> MenNo: "+MenNo);
 		//System.out.println("DashboardController-> selectTodayStatus()-> womanNo: "+womanNo);
		
		//System.out.println("DashboardController-> selectTodayStatus()-> pamphletNo: "+pamphletNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> placardNo: "+placardNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> introductionNo: "+introductionNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> internetNo: "+internetNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> pathEtcNo: "+pathEtcNo);
		
 		model.addAttribute("monthMen", monthMen);
		model.addAttribute("monthWoman", monthWoman);
 		
	    model.addAttribute("today", simpleToday.format(today));
	    model.addAttribute("month", month.format(today));
	    
	    model.addAttribute("languageNo", languageNo);
		model.addAttribute("CSATNo", CSATNo);
		model.addAttribute("publicOfficialNo", publicOfficialNo);
		model.addAttribute("licenseNo", licenseNo);
		model.addAttribute("purposeEtcNo", purposeEtcNo);
	    
	    model.addAttribute("monthMemberNo", monthMemberNo);
	    model.addAttribute("MemberNo", MemberNo);
	    model.addAttribute("MenNo", MenNo);
		model.addAttribute("womanNo", womanNo);
		
		model.addAttribute("pamphletNo", pamphletNo);
		model.addAttribute("placardNo", placardNo);
		model.addAttribute("introductionNo", introductionNo);
		model.addAttribute("internetNo", internetNo);
		model.addAttribute("pathEtcNo", pathEtcNo);
		
		return "dashboard/all_status";
	}
	
	// 메뉴 - 오늘의 현황 폼
	@RequestMapping(value="/dashboard/today_status" , method = RequestMethod.GET)
	public String selectTodayStatus(Model model, HttpSession session){
		System.out.println("DashboardController-> selectTodayStatus()");
		
		// 세션에서 오너코드 받기
		BranchOwner branchOwner = (BranchOwner)session.getAttribute("branchOwner");
		String branch_owner_cd = branchOwner.getBranch_owner_cd();
		System.out.println("DashboardController-> selectAllStatus() branch_owner_cd: "+ branch_owner_cd);
		
		// 오늘 날짜
		Date today = new Date();
	    SimpleDateFormat simpleToday = new SimpleDateFormat("yyyy-MM-dd");
	    //System.out.println("현재날짜 : "+ simpleToday.format(today));
		
		// 열람석 상태-------------------------------------------
		int useMemberNo = dashboardDao.selectUseSeatCount(branch_owner_cd); //사용중 열람석
		int absenceMemberNo = dashboardDao.selectAbsenceSeatCount(branch_owner_cd); //부재중 열람석 
		int unpaidMemberNo = dashboardDao.selectUnpaidSeatCount(branch_owner_cd); // 미결제 열람석
		
		// 이용중 회원----------------------------------------------------------------------------
		int useTeensWomanMemberNo = dashboardDao.selectUseTeensWomanMemberCount(branch_owner_cd); // 이용중 10대 여자
		int useTeensMenMemberNo = dashboardDao.selectUseTeensMenMemberCount(branch_owner_cd);     // 이용중 10대 남자
		int useTwentyWomanMemberNo = dashboardDao.selectUseTwentyWomanMemberCount(branch_owner_cd); // 이용중 20대 여자
		int useTwentyMenMemberNo = dashboardDao.selectUseTwentyMenMemberCount(branch_owner_cd);     // 이용중 20대 남자
		int useThirtyWomanMemberNo = dashboardDao.selectUseThirtyWomanMemberCount(branch_owner_cd); // 이용중 30대 여자
		int useThirtyMenMemberNo = dashboardDao.selectUseThirtyMenMemberCount(branch_owner_cd);     // 이용중 30대 남자
		int useFortyWomanMemberNo = dashboardDao.selectUseFortyWomanMemberCount(branch_owner_cd); // 이용중 40대 여자
		int useFortyMenMemberNo = dashboardDao.selectUseFortyMenMemberCount(branch_owner_cd);     // 이용중 40대 남자
		int useEtcWomanMemberNo = dashboardDao.selectUseEtcWomanMemberCount(branch_owner_cd); // 이용중 기타연령 여자
		int useEtcMenMemberNo = dashboardDao.selectUseEtcMenMemberCount(branch_owner_cd);     // 이용중 기타연령 남자
		List<Member> useMemberList = dashboardDao.selectUseMemberList(branch_owner_cd); //이용중 회원 목록
		
		// 회원-------------------------------------------------------------------------------
		int todayMemberNo = dashboardDao.selectTodayInsertMemberCount(branch_owner_cd); //금일 등록 회원

		
		//System.out.println("DashboardController-> selectTodayStatus()-> useMemberNo: "+useMemberNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> absenceMemberNo: "+absenceMemberNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> unpaidMemberNo: "+unpaidMemberNo);
		
		//System.out.println("DashboardController-> selectTodayStatus()-> useTeensWomanMemberNo: "+useTeensWomanMemberNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> useTeensMenMemberNo: "+useTeensMenMemberNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> useTwentyWomanMemberNo: "+useTwentyWomanMemberNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> useTwentyMenMemberNo: "+useTwentyMenMemberNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> useThirtyWomanMemberNo: "+useThirtyWomanMemberNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> useThirtyMenMemberNo: "+useThirtyMenMemberNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> useFortyWomanMemberNo: "+useFortyWomanMemberNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> useFortyMenMemberNo: "+useFortyMenMemberNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> useEtcWomanMemberNo: "+useEtcWomanMemberNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> useEtcMenMemberNo: "+useEtcMenMemberNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> useMemberList: "+useMemberList);
		
		//System.out.println("DashboardController-> selectTodayStatus()-> todayMemberNo: "+todayMemberNo);
		
		
		model.addAttribute("today", simpleToday.format(today));
		
		model.addAttribute("useMemberNo", useMemberNo);
		model.addAttribute("absenceMemberNo", absenceMemberNo);
		model.addAttribute("unpaidMemberNo", unpaidMemberNo);
			
		model.addAttribute("useTeensWomanMemberNo", useTeensWomanMemberNo);
		model.addAttribute("useTeensMenMemberNo", useTeensMenMemberNo);
		model.addAttribute("useTwentyWomanMemberNo", useTwentyWomanMemberNo);
		model.addAttribute("useTwentyMenMemberNo", useTwentyMenMemberNo);
		model.addAttribute("useThirtyWomanMemberNo", useThirtyWomanMemberNo);
		model.addAttribute("useThirtyMenMemberNo", useThirtyMenMemberNo);
		model.addAttribute("useFortyWomanMemberNo", useFortyWomanMemberNo);
		model.addAttribute("useFortyMenMemberNo", useFortyMenMemberNo);
		model.addAttribute("useEtcWomanMemberNo", useEtcWomanMemberNo);
		model.addAttribute("useEtcMenMemberNo", useEtcMenMemberNo);
		model.addAttribute("useMemberList", useMemberList);
		
		model.addAttribute("todayMemberNo", todayMemberNo);
				
		return "dashboard/today_status";
	}
}
