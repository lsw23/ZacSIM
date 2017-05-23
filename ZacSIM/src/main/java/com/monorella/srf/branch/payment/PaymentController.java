package com.monorella.srf.branch.payment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.monorella.srf.branch.dto.Member;
import com.monorella.srf.branch.dto.Payment;
import com.monorella.srf.branch.dto.RoomDashBoard;
import com.monorella.srf.branch.room.RoomDao;

@Controller
public class PaymentController {
		
	@Autowired PaymentDao paymentDao;
	@Autowired RoomDao roomDao;
	//결제 form
	@RequestMapping(value="/payment/newwinpayment", method = RequestMethod.GET)
	public String paymentFrom(Model model,
			@RequestParam(value="branch_owner_cd", required=true) String branch_owner_cd,	
			@RequestParam(value="room_cd", required=true) String room_cd,
			@RequestParam(value="seat_cd", required=true) String seat_cd,
			@RequestParam(value="member_cd", required=true) String member_cd){
		
		//지점명 , 열람실 이름, 열람석 번호
		

		model.addAttribute("branch_owner_cd", branch_owner_cd);
		model.addAttribute("room_cd", room_cd);
		model.addAttribute("seat_cd", seat_cd);
		model.addAttribute("member_cd", member_cd);
		return "payment/newwinpayment";
	}
	
	@RequestMapping(value="/payment/newwinmember", method = RequestMethod.GET)
	public String winmember(){
		return "payment/newwinmember";
	}
	
	// 상세정보 요청
	@RequestMapping(value="/payment/newwindetail", method = RequestMethod.GET)
	public String newwindetail(Model model 
			, @RequestParam(value="member_nm")String member_nm){
		System.out.println(member_nm);
		Member member = paymentDao.detailMember(member_nm);
		System.out.println("member: "+ member);
		model.addAttribute("member", member);
		return "payment/newwindetail";
	}
	
	// 결제완료
	@RequestMapping(value="/payment/paymentend", method = RequestMethod.POST)
	public String paymentpro(Payment payment, Member member, Model model){
		System.out.println("paymentpro 요청");
		int result = paymentDao.insertPayment(payment);
		System.out.println("insertPayment 요청");
		if(result == 1){
			//성공시
			paymentDao.modifyPaymentSeat(payment);
			//결제코드 조회
			int resulting = paymentDao.paycddetail(payment);
			System.out.println("resulting :" + resulting);			
			payment.setPay_cd(resulting);			
			//출결번호 테이블 insert
			paymentDao.insertPaymentinout(payment);
			//멤버테이블 요일 update
			paymentDao.modifyPaymentMember(payment);
			System.out.println("modifyPaymentMemberresulting 요청");
			System.out.println("modifyPaymentMembermember 요청"+ member);
			//inout 코드 조회
			int inouting = paymentDao.inoutingdetail(payment);
			System.out.println("inouting :" + inouting);
			
			member.setInout_num(inouting);
			System.out.println("Paymentinoutupmember 요청"+ member);
			paymentDao.Paymentinoutup(member);
			System.out.println("Paymentinoutupmember 요청"+ member);
			
			//열람실현황 조회
			RoomDashBoard roomdash = roomDao.selectRoomDashBoard(payment.getRoom_cd());
			System.out.println(roomdash);
			//열람실현황 수정
			roomDao.modifyRoomDashBoard(roomdash);
			
			
			//출결번호
			model.addAttribute("inouting", inouting);
			
		}else{
			//실패시 			
		}
		return "payment/paymentend";
		}
}
