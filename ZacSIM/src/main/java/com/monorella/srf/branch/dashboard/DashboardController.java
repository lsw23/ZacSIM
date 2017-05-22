package com.monorella.srf.branch.dashboard;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	public String selectAllStatus(Model model){
		System.out.println("DashboardController-> selectAllStatus()");
		
		// 오늘 날짜 및 해당 월 구하기 -----------------------------------------------------------
		Date today = new Date();
	    SimpleDateFormat simpleToday = new SimpleDateFormat("yyyy-MM-dd");
	    SimpleDateFormat month = new SimpleDateFormat("M");
	    
	    // 주 이용 목적
	    int languageNo = dashboardDao.selectPurposeLanguage(); //외국어
	    int CSATNo = dashboardDao.selectPurposeCSAT(); //수능
 		int publicOfficialNo = dashboardDao.selectPurposePublicOfficial(); //공무원
 		int licenseNo = dashboardDao.selectPurposeLicense(); //자격증
 		int purposeEtcNo = dashboardDao.selectPurposeEtc(); //기타
	    
	    // 회원----------------------------------------------------------------------------
	    int monthMemberNo = dashboardDao.selectMonthInsertMemberCount(); // 당월 가입 회원 수
	    int MemberNo = dashboardDao.selectMemberCount(); //전체 회원 수
 		int MenNo = dashboardDao.selectMenCount(); //남성
 		int womanNo = dashboardDao.selectWomanCount(); //여성
 		
 		// 등록경로------------------------------------------------------------
		int pamphletNo = dashboardDao.selectPamphletCount(); //전단지
		int placardNo = dashboardDao.selectPlacardCount(); //플래카드
		int introductionNo = dashboardDao.selectIntroductionCount(); //지인소개
		int internetNo = dashboardDao.selectInternetCount(); //인터넷
		int pathEtcNo = dashboardDao.selectEtcCount(); //기타
		
		// 월별 등록자 수----------------------------------------------------------
		int januaryInsertNo = dashboardDao.selectJanuaryInsertMember();
		int februaryInsertNo = dashboardDao.selectFebruaryInsertMember();
		int marchInsertNo = dashboardDao.selectMarchInsertMember();
		int aprilInsertNo = dashboardDao.selectAprilInsertMember();
		int mayInsertNo = dashboardDao.selectMayInsertMember();
		int juneInsertNo = dashboardDao.selectJuneInsertMember();
		int julyInsertNo = dashboardDao.selectJulyInsertMember();
		int augustInsertNo = dashboardDao.selectAugustInsertMember();
		int septemberInsertNo = dashboardDao.selectSeptemberInsertMember();
		int octoberInsertNo = dashboardDao.selectOctoberInsertMember();
		int novemberInsertNo = dashboardDao.selectNovemberInsertMember();
		int decemberInsertNo = dashboardDao.selectDecemberInsertMember();
		
		int januaryInsertMenNo = dashboardDao.selectJanuaryInsertMenMember();
		int februaryInsertMenNo = dashboardDao.selectFebruaryInsertMenMember();
		int marchInsertMenNo = dashboardDao.selectMarchInsertMenMember();
		int aprilInsertMenNo = dashboardDao.selectAprilInsertMenMember();
		int mayInsertMenNo = dashboardDao.selectMayInsertMenMember();
		int juneInsertMenNo = dashboardDao.selectJuneInsertMenMember();
		int julyInsertMenNo = dashboardDao.selectJulyInsertMenMember();
		int augustInsertMenNo = dashboardDao.selectAugustInsertMenMember();
		int septemberInsertMenNo = dashboardDao.selectSeptemberInsertMenMember();
		int octoberInsertMenNo = dashboardDao.selectOctoberInsertMenMember();
		int novemberInsertMenNo = dashboardDao.selectNovemberInsertMenMember();
		int decemberInsertMenNo = dashboardDao.selectDecemberInsertMenMember();
		
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
		
		//System.out.println("DashboardController-> selectTodayStatus()-> januaryInsertNo: "+januaryInsertNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> februaryInsertNo: "+februaryInsertNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> marchInsertNo: "+marchInsertNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> aprilInsertNo: "+aprilInsertNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> mayInsertNo: "+mayInsertNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> juneInsertNo: "+juneInsertNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> julyInsertNo: "+julyInsertNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> augustInsertNo: "+augustInsertNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> septemberInsertNo: "+septemberInsertNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> octoberInsertNo: "+octoberInsertNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> novemberInsertNo: "+novemberInsertNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> decemberInsertNo: "+decemberInsertNo);
		
		//System.out.println("DashboardController-> selectTodayStatus()-> januaryInsertMenNo: "+januaryInsertMenNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> februaryInsertMenNo: "+februaryInsertMenNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> marchInsertMenNo: "+marchInsertMenNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> aprilInsertMenNo: "+aprilInsertMenNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> mayInsertMenNo: "+mayInsertMenNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> juneInsertMenNo: "+juneInsertMenNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> julyInsertMenNo: "+julyInsertMenNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> augustInsertMenNo: "+augustInsertMenNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> septemberInsertMenNo: "+septemberInsertMenNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> octoberInsertMenNo: "+octoberInsertMenNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> novemberInsertMenNo: "+novemberInsertMenNo);
		//System.out.println("DashboardController-> selectTodayStatus()-> decemberInsertMenNo: "+decemberInsertMenNo);
		
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
		
		model.addAttribute("januaryInsertNo", januaryInsertNo);
		model.addAttribute("februaryInsertNo", februaryInsertNo);
		model.addAttribute("marchInsertNo", marchInsertNo);
		model.addAttribute("aprilInsertNo", aprilInsertNo);
		model.addAttribute("mayInsertNo", mayInsertNo);
		model.addAttribute("juneInsertNo", juneInsertNo);
		model.addAttribute("julyInsertNo", julyInsertNo);
		model.addAttribute("augustInsertNo", augustInsertNo);
		model.addAttribute("septemberInsertNo", septemberInsertNo);
		model.addAttribute("octoberInsertNo", octoberInsertNo);
		model.addAttribute("novemberInsertNo", novemberInsertNo);
		model.addAttribute("decemberInsertNo", decemberInsertNo);
		
		model.addAttribute("januaryInsertMenNo", januaryInsertMenNo);
		model.addAttribute("februaryInsertMenNo", februaryInsertMenNo);
		model.addAttribute("marchInsertMenNo", marchInsertMenNo);
		model.addAttribute("aprilInsertMenNo", aprilInsertMenNo);
		model.addAttribute("mayInsertMenNo", mayInsertMenNo);
		model.addAttribute("juneInsertMenNo", juneInsertMenNo);
		model.addAttribute("julyInsertMenNo", julyInsertMenNo);
		model.addAttribute("augustInsertMenNo", augustInsertMenNo);
		model.addAttribute("septemberInsertMenNo", septemberInsertMenNo);
		model.addAttribute("octoberInsertMenNo", octoberInsertMenNo);
		model.addAttribute("novemberInsertMenNo", novemberInsertMenNo);
		model.addAttribute("decemberInsertMenNo", decemberInsertMenNo);
		
		
		return "dashboard/all_status";
	}
	
	// 메뉴 - 오늘의 현황 폼
	@RequestMapping(value="/dashboard/today_status" , method = RequestMethod.GET)
	public String selectTodayStatus(Model model){
		System.out.println("DashboardController-> selectTodayStatus()");
		
		// 오늘 날짜
		Date today = new Date();
	    SimpleDateFormat simpleToday = new SimpleDateFormat("yyyy-MM-dd");
	    //System.out.println("현재날짜 : "+ simpleToday.format(today));
		
		// 열람석 상태-------------------------------------------
		int useMemberNo = dashboardDao.selectUseSeatCount(); //사용중 열람석
		int absenceMemberNo = dashboardDao.selectAbsenceSeatCount(); //부재중 열람석 
		int unpaidMemberNo = dashboardDao.selectUnpaidSeatCount(); // 미결제 열람석
		
		// 이용중 회원----------------------------------------------------------------------------
		int useTeensWomanMemberNo = dashboardDao.selectUseTeensWomanMemberCount(); // 이용중 10대 여자
		int useTeensMenMemberNo = dashboardDao.selectUseTeensMenMemberCount();     // 이용중 10대 남자
		int useTwentyWomanMemberNo = dashboardDao.selectUseTwentyWomanMemberCount(); // 이용중 20대 여자
		int useTwentyMenMemberNo = dashboardDao.selectUseTwentyMenMemberCount();     // 이용중 20대 남자
		int useThirtyWomanMemberNo = dashboardDao.selectUseThirtyWomanMemberCount(); // 이용중 30대 여자
		int useThirtyMenMemberNo = dashboardDao.selectUseThirtyMenMemberCount();     // 이용중 30대 남자
		int useFortyWomanMemberNo = dashboardDao.selectUseFortyWomanMemberCount(); // 이용중 40대 여자
		int useFortyMenMemberNo = dashboardDao.selectUseFortyMenMemberCount();     // 이용중 40대 남자
		int useEtcWomanMemberNo = dashboardDao.selectUseEtcWomanMemberCount(); // 이용중 기타연령 여자
		int useEtcMenMemberNo = dashboardDao.selectUseEtcMenMemberCount();     // 이용중 기타연령 남자
		List<Member> useMemberList = dashboardDao.selectUseMemberList(); //이용중 회원 목록
		
		// 회원-------------------------------------------------------------------------------
		int todayMemberNo = dashboardDao.selectTodayInsertMemberCount(); //금일 등록 회원

		
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
