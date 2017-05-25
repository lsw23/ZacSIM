package com.monorella.srf.branch.dashboard;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.monorella.srf.branch.dto.InsertNumList;
import com.monorella.srf.branch.dto.Member;

@Repository
public class DashboardDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 월별 여자 가입자수 
	public InsertNumList selectInsertNumWoman(String branch_owner_cd){
		System.out.println("DashboardDao-> selectInsertNumWoman() branch_owner_cd: "+branch_owner_cd);
		return sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectInsertNumWoman", branch_owner_cd);
	}
	// 월별 남자 가입자수 
	public InsertNumList selectInsertNumMen(String branch_owner_cd){
		System.out.println("DashboardDao-> selectInsertNumMen() branch_owner_cd: "+branch_owner_cd);
		return sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectInsertNumMen", branch_owner_cd);
	}

	//----------------------------------------------------주 이용 목적--------------------------------------------------
	//토익
	public int selectPurposeLanguage(String branch_owner_cd){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectPurposeLanguage", branch_owner_cd);
		return row;
	}
	//수능
	public int selectPurposeCSAT(String branch_owner_cd){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectPurposeCSAT", branch_owner_cd);
		return row;
	}
	//공무원
	public int selectPurposePublicOfficial(String branch_owner_cd){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectPurposePublicOfficial", branch_owner_cd);
		return row;
	}
	//자격증
	public int selectPurposeLicense(String branch_owner_cd){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectPurposeLicense", branch_owner_cd);
		return row;
	}
	//기타
	public int selectPurposeEtc(String branch_owner_cd){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectPurposeEtc", branch_owner_cd);
		return row;
	}
	

	//----------------------------------------------------회원 등록 경로-------------------------------------------------
	// 전단지
	public int selectPamphletCount(String branch_owner_cd){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectPamphletCount", branch_owner_cd);
		return row;
	}
	// 지인소개
	public int selectIntroductionCount(String branch_owner_cd){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectIntroductionCount", branch_owner_cd);
		return row;
	}
	// 인터넷
	public int selectInternetCount(String branch_owner_cd){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectInternetCount", branch_owner_cd);
		return row;
	}
	// 플래카드
	public int selectPlacardCount(String branch_owner_cd){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectPlacardCount", branch_owner_cd);
		return row;
	}
	// 기타
		public int selectEtcCount(String branch_owner_cd){
			int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectEtcCount", branch_owner_cd);
			return row;
	}
	
	
	//----------------------------------------------------열람석 상태-------------------------------------------------
	//미결제 열람석
	public int selectUnpaidSeatCount(String branch_owner_cd){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUnpaidSeatCount", branch_owner_cd);
		return row;
	}
	//부재중 열람석
	public int selectAbsenceSeatCount(String branch_owner_cd){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectAbsenceSeatCount", branch_owner_cd);
		return row;
	}
	//사용중 열람석
	public int selectUseSeatCount(String branch_owner_cd){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseSeatCount", branch_owner_cd);
		return row;
	}		
	
	
	//----------------------------------------------------연령대별 회원-------------------------------------------------
	//이용중 기타연령 회원 남
	public int selectUseEtcMenMemberCount(String branch_owner_cd){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseEtcMenMemberCount", branch_owner_cd);
		return row;
	}
	//이용중 기타연령 회원 여
	public int selectUseEtcWomanMemberCount(String branch_owner_cd){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseEtcWomanMemberCount", branch_owner_cd);
		return row;
	}
	//이용중 40대 회원 남
	public int selectUseFortyMenMemberCount(String branch_owner_cd){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseFortyMenMemberCount", branch_owner_cd);
		return row;
	}
	//이용중 40대 회원 여
	public int selectUseFortyWomanMemberCount(String branch_owner_cd){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseFortyWomanMemberCount", branch_owner_cd);
		return row;
	}
	//이용중 30대 회원 남
	public int selectUseThirtyMenMemberCount(String branch_owner_cd){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseThirtyMenMemberCount", branch_owner_cd);
		return row;
	}
	//이용중 30대 회원 여
	public int selectUseThirtyWomanMemberCount(String branch_owner_cd){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseThirtyWomanMemberCount", branch_owner_cd);
		return row;
	}
	//이용중 20대 회원 남
	public int selectUseTwentyMenMemberCount(String branch_owner_cd){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseTwentyMenMemberCount", branch_owner_cd);
		return row;
	}
	//이용중 20대 회원 여
	public int selectUseTwentyWomanMemberCount(String branch_owner_cd){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseTwentyWomanMemberCount", branch_owner_cd);
		return row;
	}
	//이용중 10대 회원 여
	public int selectUseTeensWomanMemberCount(String branch_owner_cd){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseTeensWomanMemberCount", branch_owner_cd);
		return row;
	}
	//이용중 10대 회원 남
	public int selectUseTeensMenMemberCount(String branch_owner_cd){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseTeensMenMemberCount", branch_owner_cd);
		return row;
	}
	//이용중 회원 목록
	public List<Member> selectUseMemberList(String branch_owner_cd){
		List<Member> useMember = sqlSessionTemplate.selectList("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseMemberList", branch_owner_cd);
		return useMember;
	}
	
	
	//----------------------------------------------------회원-------------------------------------------------
	//당월 등록회원
	public int selectMonthInsertMemberCount(String branch_owner_cd){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectMonthInsertMemberCount", branch_owner_cd);
		return row;
	}
	//금일 등록회원
	public int selectTodayInsertMemberCount(String branch_owner_cd){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectTodayInsertMemberCount", branch_owner_cd);
		return row;
	}
	//남자
	public int selectMenCount(String branch_owner_cd){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectMenCount", branch_owner_cd);
		return row;
	}
	//여자
	public int selectWomanCount(String branch_owner_cd){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectWomanCount", branch_owner_cd);
		return row;
	}
	//전체 회원
	public int selectMemberCount(String branch_owner_cd) {
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectMemberCount", branch_owner_cd);
		return row;
	}
}
