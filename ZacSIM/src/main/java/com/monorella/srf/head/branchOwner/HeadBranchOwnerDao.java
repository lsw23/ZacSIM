package com.monorella.srf.head.branchOwner;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.monorella.srf.head.dto.HeadBranchOwner;

@Repository
public class HeadBranchOwnerDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate; 
	
	// 사업자 삭제시 insert_num_list 테이블에 branch_owner_cd 및 레코드 한 줄 삭제
	public int deleteBranchOwnerCode(String branch_owner_cd){
		System.out.println("HeadBranchOwnerDao-> deleteBranchOwnerCode-> branch_owner_cd: "+ branch_owner_cd);
		return sqlSessionTemplate.insert("com.monorella.srf.head.branchOwner.HeadBranchOwnerMapper.deleteBranchOwnerCode", branch_owner_cd);
	}
	
	// 사업자 등록시 insert_num_list 테이블에 branch_owner_cd 및 레코드 한 줄 생성
	public int insertBranchOwnerCode(String branch_owner_cd){
		System.out.println("HeadBranchOwnerDao-> insertBranchOwnerCode-> branch_owner_cd: "+ branch_owner_cd);
		return sqlSessionTemplate.insert("com.monorella.srf.head.branchOwner.HeadBranchOwnerMapper.insertBranchOwnerCode", branch_owner_cd);
	}

	//사업자 정보 삭제 처리
	public int deleteBranchOwner(String branch_owner_cd){
		System.out.println("BranchOwnerDao-> deleteBranchOwner()-> branchOwner: "+branch_owner_cd);
		return sqlSessionTemplate.delete("com.monorella.srf.head.branchOwner.HeadBranchOwnerMapper.deleteBranchOwner", branch_owner_cd);
	}
	
	//사업자 정보 수정 처리
	public int modifyBranchOwner(HeadBranchOwner branchOwner){
		System.out.println("BranchOwnerDao-> ModifyBranchOwner()-> branchOwner: "+branchOwner);
		return sqlSessionTemplate.update("com.monorella.srf.head.branchOwner.HeadBranchOwnerMapper.modifyBranchOwner", branchOwner);
	}
	
	//사업자 정보 단일 조회
	public HeadBranchOwner selectOneBranchOwner(String branch_owner_cd){
		System.out.println("BranchOwnerDao-> selectOneBranchOwner()-> branch_owner_cd: "+branch_owner_cd);
		return sqlSessionTemplate.selectOne("com.monorella.srf.head.branchOwner.HeadBranchOwnerMapper.selectOneBranchOwner", branch_owner_cd);
	}
	
	//사업자 목록
	public List<HeadBranchOwner> selectBranchOwnerList(){
		//System.out.println("BranchOwnerDao-> selectBranchOwnerList()");
		return sqlSessionTemplate.selectList("com.monorella.srf.head.branchOwner.HeadBranchOwnerMapper.selectBranchOwnerList");
	}
	
	//사업자 등록
	public int insertBranchOwner(HeadBranchOwner branchOwner){
		//System.out.println("BranchOwnerDao-> insertBranchOwner-> branchOwner: "+branchOwner);
		return sqlSessionTemplate.insert("com.monorella.srf.head.branchOwner.HeadBranchOwnerMapper.insertBranchOwner", branchOwner);
	}
}
