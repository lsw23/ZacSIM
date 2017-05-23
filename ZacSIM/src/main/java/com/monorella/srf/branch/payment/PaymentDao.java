package com.monorella.srf.branch.payment;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.monorella.srf.branch.dto.Member;
import com.monorella.srf.branch.dto.Payment;

@Repository
public class PaymentDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 열람실 좌석 추가 메서드
	public int insertPayment(Payment payment) {
		System.out.println("insertpayment");
		System.out.println(payment);
		return sqlSessionTemplate.insert("com.monorella.srf.branch.payment.PaymentMapper.insertPayment", payment);
	}
	//열람실 좌석 수정 메서드
	public int modifyPaymentSeat(Payment payment) {
		System.out.println("Seat table modify");
		return sqlSessionTemplate.update("com.monorella.srf.branch.payment.PaymentMapper.modifyPaymentSeat", payment);
	}
	//열람실 회원 수정 메서드
	public int modifyPaymentMember(Payment payment) {
		System.out.println("modifyPaymentMember modify");
		return sqlSessionTemplate.update("com.monorella.srf.branch.payment.PaymentMapper.modifyPaymentMember", payment);
	}
	//열람실 회원 수정 메서드
	public int paycddetail(Payment payment) {
		System.out.println("paycddetail modify");
		return sqlSessionTemplate.selectOne("com.monorella.srf.branch.payment.PaymentMapper.paycddetail", payment);
	}

	//열람실 출결 번호 수정 메서드
	public int insertPaymentinout(Payment payment) {
		System.out.println("insertPaymentinout modify");
		return sqlSessionTemplate.update("com.monorella.srf.branch.payment.PaymentMapper.insertPaymentinout", payment);
	}
	//열람실 회원 수정 메서드
	public int inoutingdetail(Payment payment) {
		System.out.println("inoutingdetail modify");
		return sqlSessionTemplate.selectOne("com.monorella.srf.branch.payment.PaymentMapper.inoutingdetail", payment);
	}
	//열람실 출결 번호 멤버테이블 업데이트 메서드
	public int Paymentinoutup(Member member) {
		System.out.println("Paymentinoutup modify");
		return sqlSessionTemplate.update("com.monorella.srf.branch.payment.PaymentMapper.Paymentinoutup", member);
	}
	// newwindetail.jsp 요청
	public Member detailMember(String member_nm) {
		System.out.println("windetailMember"+member_nm);
        return sqlSessionTemplate.selectOne("com.monorella.srf.branch.payment.PaymentMapper.detailMember", member_nm);
    }
}
