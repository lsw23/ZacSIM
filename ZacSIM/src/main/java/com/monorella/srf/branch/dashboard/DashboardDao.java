package com.monorella.srf.branch.dashboard;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.monorella.srf.branch.dto.Member;

@Repository
public class DashboardDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//----------------------------------------------------주 이용 목적--------------------------------------------------
	//토익
	public int selectPurposeLanguage(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectPurposeLanguage");
		return row;
	}
	//수능
	public int selectPurposeCSAT(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectPurposeCSAT");
		return row;
	}
	//공무원
	public int selectPurposePublicOfficial(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectPurposePublicOfficial");
		return row;
	}
	//자격증
	public int selectPurposeLicense(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectPurposeLicense");
		return row;
	}
	//기타
	public int selectPurposeEtc(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectPurposeEtc");
		return row;
	}
	
	
	//----------------------------------------------------월별 등록자 수-------------------------------------------------
	//1월
	public int selectJanuaryInsertMember(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectJanuaryInsertMember");
		return row;
	}
	//2월
	public int selectFebruaryInsertMember(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectFebruaryInsertMember");
		return row;
	}
	//3월
	public int selectMarchInsertMember(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectMarchInsertMember");
		return row;
	}
	//4월
	public int selectAprilInsertMember(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectAprilInsertMember");
		return row;
	}
	//5월
	public int selectMayInsertMember(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectMayInsertMember");
		return row;
	}
	//6월
	public int selectJuneInsertMember(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectJuneInsertMember");
		return row;
	}
	//7월
	public int selectJulyInsertMember(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectJulyInsertMember");
		return row;
	}
	//8월
	public int selectAugustInsertMember(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectAugustInsertMember");
		return row;
	}
	//9월
	public int selectSeptemberInsertMember(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectSeptemberInsertMember");
		return row;
	}
	//10월
	public int selectOctoberInsertMember(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectOctoberInsertMember");
		return row;
	}
	//11월
	public int selectNovemberInsertMember(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectNovemberInsertMember");
		return row;
	}
	//12월
	public int selectDecemberInsertMember(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectDecemberInsertMember");
		return row;
	}
	
	//1월 남자
	public int selectJanuaryInsertMenMember(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectJanuaryInsertMenMember");
		return row;
	}
	//2월 남자
	public int selectFebruaryInsertMenMember(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectFebruaryInsertMenMember");
		return row;
	}
	//3월 남자
	public int selectMarchInsertMenMember(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectMarchInsertMenMember");
		return row;
	}
	//4월 남자
	public int selectAprilInsertMenMember(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectAprilInsertMenMember");
		return row;
	}
	//5월 남자
	public int selectMayInsertMenMember(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectMayInsertMenMember");
		return row;
	}
	//6월 남자
	public int selectJuneInsertMenMember(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectJuneInsertMenMember");
		return row;
	}
	//7월 남자
	public int selectJulyInsertMenMember(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectJulyInsertMenMember");
		return row;
	}
	//8월 남자
	public int selectAugustInsertMenMember(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectAugustInsertMenMember");
		return row;
	}
	//9월 남자
	public int selectSeptemberInsertMenMember(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectSeptemberInsertMenMember");
		return row;
	}
	//10월 남자
	public int selectOctoberInsertMenMember(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectOctoberInsertMenMember");
		return row;
	}
	//11월 남자
	public int selectNovemberInsertMenMember(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectNovemberInsertMenMember");
		return row;
	}
	//12월 남자
	public int selectDecemberInsertMenMember(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectDecemberInsertMenMember");
		return row;
	}
	

	//----------------------------------------------------회원 등록 경로-------------------------------------------------
	// 전단지
	public int selectPamphletCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectPamphletCount");
		return row;
	}
	// 지인소개
	public int selectIntroductionCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectIntroductionCount");
		return row;
	}
	// 인터넷
	public int selectInternetCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectInternetCount");
		return row;
	}
	// 플래카드
	public int selectPlacardCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectPlacardCount");
		return row;
	}
	// 기타
		public int selectEtcCount(){
			int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectEtcCount");
			return row;
	}
	
	
	//----------------------------------------------------열람석 상태-------------------------------------------------
	//미결제 열람석
	public int selectUnpaidSeatCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUnpaidSeatCount");
		return row;
	}
	//부재중 열람석
	public int selectAbsenceSeatCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectAbsenceSeatCount");
		return row;
	}
	//사용중 열람석
	public int selectUseSeatCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseSeatCount");
		return row;
	}		
	
	
	//----------------------------------------------------연령대별 회원-------------------------------------------------
	//이용중 기타연령 회원 남
	public int selectUseEtcMenMemberCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseEtcMenMemberCount");
		return row;
	}
	//이용중 기타연령 회원 여
	public int selectUseEtcWomanMemberCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseEtcWomanMemberCount");
		return row;
	}
	//이용중 40대 회원 남
	public int selectUseFortyMenMemberCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseFortyMenMemberCount");
		return row;
	}
	//이용중 40대 회원 여
	public int selectUseFortyWomanMemberCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseFortyWomanMemberCount");
		return row;
	}
	//이용중 30대 회원 남
	public int selectUseThirtyMenMemberCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseThirtyMenMemberCount");
		return row;
	}
	//이용중 30대 회원 여
	public int selectUseThirtyWomanMemberCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseThirtyWomanMemberCount");
		return row;
	}
	//이용중 20대 회원 남
	public int selectUseTwentyMenMemberCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseTwentyMenMemberCount");
		return row;
	}
	//이용중 20대 회원 여
	public int selectUseTwentyWomanMemberCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseTwentyWomanMemberCount");
		return row;
	}
	//이용중 10대 회원 여
	public int selectUseTeensWomanMemberCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseTeensWomanMemberCount");
		return row;
	}
	//이용중 10대 회원 남
	public int selectUseTeensMenMemberCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseTeensMenMemberCount");
		return row;
	}
	//이용중 회원 목록
	public List<Member> selectUseMemberList(){
		List<Member> useMember = sqlSessionTemplate.selectList("com.monorella.srf.branch.dashboard.DashboardMapper.selectUseMemberList");
		return useMember;
	}
	
	
	//----------------------------------------------------회원-------------------------------------------------
	//당월 등록회원
	public int selectMonthInsertMemberCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectMonthInsertMemberCount");
		return row;
	}
	//금일 등록회원
	public int selectTodayInsertMemberCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectTodayInsertMemberCount");
		return row;
	}
	//남자
	public int selectMenCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectMenCount");
		return row;
	}
	//여자
	public int selectWomanCount(){
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectWomanCount");
		return row;
	}
	//전체 회원
	public int selectMemberCount() {
		int row = sqlSessionTemplate.selectOne("com.monorella.srf.branch.dashboard.DashboardMapper.selectMemberCount");
		return row;
	}
}
