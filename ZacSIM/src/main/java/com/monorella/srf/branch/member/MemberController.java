package com.monorella.srf.branch.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.monorella.srf.branch.dto.Member;
import com.monorella.srf.branch.member.MemberDao;

@Controller
public class MemberController {
	@Autowired
	private MemberDao memberDao;

	// 신규 회원 알림 요청
	@RequestMapping(value="/module2/left", method = RequestMethod.GET)
	public String MemberNew(Model model
			, @RequestParam(value="member_date", required=true) String member_date) {
		System.out.println("/module2/left 요청");
		Member member = memberDao.newMember(member_date);
		model.addAttribute("member", member);
		return "module2/left";
	}
	
	// 회원 삭제 폼 요청
	@RequestMapping(value="/member/member_remove", method = RequestMethod.GET)
	public String MemberRemove(@RequestParam(value="member_cd", required=true) String member_cd){
		System.out.println("/member/member_remove 요청");
		return "member/member_remove";
	}
	
	// 회원 삭제 요청
	@RequestMapping(value ="/member/member_remove", method = RequestMethod.POST)
	public String MemberRemove(@RequestParam(value="member_cd") String member_cd
			, @RequestParam(value="branch_owner_cd") String branch_owner_cd) {
		memberDao.removeMember(member_cd, branch_owner_cd);
		System.out.println("삭제 완료");
		return "redirect:/member/member_list";
	}
	
	// 회원 수정 폼 요청
	@RequestMapping(value="/member/member_modify", method = RequestMethod.GET)
	public String MemberModify(Model model
			, @RequestParam(value="member_cd", required=true) String member_cd) {
		System.out.println("/member/member_modify2 요청");
		Member member = memberDao.getMember(member_cd);
		model.addAttribute("member", member);
		return "member/member_modify";	
	}
	
	// 회원 수정 요청
	@RequestMapping(value ="/member/member_modify", method = RequestMethod.POST)
	public String MemberModify(Member member){
		System.out.println("/member/member_modify1 요청");
		memberDao.modifyMember(member);
		return "redirect:/member/member_view?member_cd="+member.getMember_cd();		
	}
		
	// 회원 상세 요청
	@RequestMapping(value="/member/member_view", method = RequestMethod.GET)
	public String MemberView(Model model 
			, @RequestParam(value="member_cd")String member_cd){
		System.out.println("/member/member_view 요청");
		Member member = memberDao.getMember(member_cd);
		model.addAttribute("member", member);
		return "member/member_view";
	}
	
	//회원 검색 요청
	@RequestMapping(value="/member/member_search", method = {RequestMethod.GET, RequestMethod.POST})
	public String MemberSearch(Model model
			, @RequestParam("so") String so
			, @RequestParam("sv") String sv){
		System.out.println("MemberController->MemberSearch()" + so + sv);
		List<Member> searchlist = memberDao.searchMember(so, sv);
		System.out.println(searchlist);
		model.addAttribute("searchlist", searchlist);
		model.addAttribute("so", so);
		model.addAttribute("sv", sv);
		return "member/member_search";
	}

	// 리스트 및 페이징 요청
	@RequestMapping(value="/member/member_list", method = RequestMethod.GET)
	public String selectMemberList(Model model
            , @RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage) {
		System.out.println("/member/member_list 요청");
		
		if(currentPage < 1){
			currentPage = 1;
            }
		int joinCount = 0;
		joinCount = memberDao.selectMemberCount();
		int pagePerRow = 10;
		List<Member> list = memberDao.selectMemberList(currentPage, pagePerRow);
		int lastPage = (int)(Math.ceil(joinCount / pagePerRow));
		if(joinCount%pagePerRow != 0) {
			lastPage++;
		}
		
		int countPage = 5;
		int startPage = ((currentPage - 1)/10)*10+1;
		int endPage = startPage + countPage-1;
		int nextPage = ((currentPage - 1)/10)*10+2;
		int previousPage = ((currentPage - 1)/10)*10-10+1;
		
		if(previousPage <= 0) {
			previousPage = 1;
		}
		
		if(endPage > lastPage) {
			previousPage = 1;
		}
		
		if(nextPage > lastPage) {
			nextPage = lastPage;
		}
		
		model.addAttribute("joinCount", joinCount);
		model.addAttribute("list", list);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("nextPage", nextPage);
		model.addAttribute("previousPage", previousPage);
		model.addAttribute("lastPage", lastPage);
		
		return "member/member_list";
	}
	
	// 독서실 회원 코드 자동 증가 및 POST 요청
	@RequestMapping(value="/member/member_pro", method= RequestMethod.POST)
	public String MemberPro(Member member) {
		System.out.println("회원코드 자동증가 폼");
		System.out.println(member);
			
		//코드 MAX select
		int code = memberDao.selectMemberCode();
			
		if(code == 0){ 
			member.setMember_cd("member_cd1");
			memberDao.insertMember(member);
			
		} else {
			int result = memberDao.autoMemberCode(member);
			if(result == 1) {
				System.out.println("요금제 등록 성공");
				return "redirect:/member/member_form";
			} else {
				System.out.println("요금제 등록 실패");
			}
		}
		return "redirect:/member/member_form";
	}

	// 회원 등록 폼
	@RequestMapping(value="/member/member_form", method = RequestMethod.GET)
	public String MemberForm(Model model) {
		System.out.println("member_form 요청");
		List<Member> memberlist = memberDao.selectMember();
		model.addAttribute("memberlist", memberlist);
		return "member/member_form";
	}
}