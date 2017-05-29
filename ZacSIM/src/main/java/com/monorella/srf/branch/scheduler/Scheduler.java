package com.monorella.srf.branch.scheduler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.monorella.srf.branch.dto.Member;

@Component
public class Scheduler {
	@Autowired
	private SchedulerDao schedulerDao;
	
	@Scheduled(cron = "0 20 17 * * *")
	public void cronTest(){
		try{
			System.out.println("오후 5시 20분에 호출이 됩니다.");
			List<Member> memberlist = schedulerDao.selectEndDate();
			System.out.println(memberlist);
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}