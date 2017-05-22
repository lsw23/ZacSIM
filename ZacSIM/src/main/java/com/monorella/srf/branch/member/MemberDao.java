package com.monorella.srf.branch.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.monorella.srf.branch.dto.Member;

@Repository
public class MemberDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 신규회원알림 메서드
	public Member newMember(String member_date) {
		System.out.println("11st newMember");
		return sqlSessionTemplate.selectOne("com.monorella.srf.branch.member.MemberMapper.newMember", member_date);
	}
	
	// 회원삭제 메서드
    public int removeMember(String member_cd, String branch_owner_cd) {
    	Member member = new Member();
    	member.setMember_cd(member_cd);
    	member.setBranch_owner_cd(branch_owner_cd);
    	System.out.println("10st removeMember");
        return sqlSessionTemplate.delete("com.monorella.srf.branch.member.MemberMapper.removeMember", member);
    }
	
	//회원수정 메서드
	public int modifyMember(Member member) {
		System.out.println("9st modifyMember");
		return sqlSessionTemplate.update("com.monorella.srf.branch.member.MemberMapper.modifyMember", member);
	}
	
	//하나의 게시글 보기
	public Member getMember(String member_cd) {
		System.out.println("8st getMember");
        return sqlSessionTemplate.selectOne("com.monorella.srf.branch.member.MemberMapper.getMember", member_cd);
    }
	
	// 회원검색 메서드
	public List<Member> searchMember(String so, String sv){
		Map<String, String> map = new HashMap<String, String>();
		map.put("so", so);
		map.put("sv", sv);
		List<Member> memberList = null;
		System.out.println("7st searchMember");
		memberList = sqlSessionTemplate.selectList("com.monorella.srf.branch.member.MemberMapper.searchMember", map);
		return memberList;
	}	
	
	// 회원리스트 메서드
	public List<Member> selectMemberList(int currentPage, int pagePerRow) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("beginRow", (currentPage-1)*pagePerRow);
		map.put("pagePerRow", pagePerRow);
		System.out.println("6st selectMemberList");
		return sqlSessionTemplate.selectList("com.monorella.srf.branch.member.MemberMapper.selectMemberList", map);
	}
	
	// 회원 select
	public List<Member> selectMember() {
		System.out.println("5st selectMember");
		return sqlSessionTemplate.selectList("com.monorella.srf.branch.member.MemberMapper.selectMember");
	}
	
	public int selectMemberCount() {
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.member.MemberMapper.selectMemberCount");
		System.out.println("4st selectMemberCount");
		return row;
	}
	
	// 회원 code select
	public int selectMemberCode(){
		System.out.println("3st selectMemberCode");
		return sqlSessionTemplate.selectOne("com.monorella.srf.branch.member.MemberMapper.selectMemberCode");
	}
	
	//회원코드 자동증가 메서드
	public int autoMemberCode(Member member){
		System.out.println("2st autoMemberCode");
		return sqlSessionTemplate.insert("com.monorella.srf.branch.member.MemberMapper.autoMemberCode", member);
	}
	
	// 회원추가 메서드
	public int insertMember(Member member) {
		System.out.println("1st insertMember");
		return sqlSessionTemplate.insert("com.monorella.srf.branch.member.MemberMapper.insertMember", member);
	}
}