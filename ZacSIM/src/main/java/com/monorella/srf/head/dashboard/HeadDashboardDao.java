package com.monorella.srf.head.dashboard;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HeadDashboardDao {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	 
}
