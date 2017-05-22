package com.monorella.srf.branch.payment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.monorella.srf.branch.dto.Member;
import com.monorella.srf.branch.dto.Payment;
import com.monorella.srf.branch.dto.Seat;

@Controller
public class PaymentController {
		
	@Autowired PaymentDao paymentDao;
	
	@RequestMapping(value="/payment/newwinpayment", method = RequestMethod.GET)
	public String paymentFrom(Model model,
			@RequestParam(value="branch_owner_cd", required=true) String branch_owner_cd,	
			@RequestParam(value="room_cd", required=true) String room_cd,
			@RequestParam(value="seat_cd", required=true) String seat_cd,
			@RequestParam(value="member_cd", required=true) String member_cd){
		
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
	
	// newwindetail.jsp 요청
	@RequestMapping(value="/payment/newwindetail", method = RequestMethod.GET)
	public String newwindetail(Model model 
			, @RequestParam(value="member_nm")String member_nm){
		System.out.println(member_nm);
		Member member = paymentDao.detailMember(member_nm);
		System.out.println("member: "+ member);
		model.addAttribute("member", member);
		return "payment/newwindetail";
	}
	
	// 입력 post 요청
	@RequestMapping(value="/payment/paymentend", method = RequestMethod.POST)
	public String paymentpro(Payment payment){
		System.out.println("post 요청");
		int result = paymentDao.insertPayment(payment);
		if(result == 1){
			//성공시
			paymentDao.modifyPaymentSeat(payment);
			paymentDao.modifyPaymentMember(payment);
		}else{
			//실패시 			
		}
		return "payment/paymentend";
	}

}
