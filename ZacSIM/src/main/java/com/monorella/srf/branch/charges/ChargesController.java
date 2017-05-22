package com.monorella.srf.branch.charges;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.monorella.srf.branch.dto.Charges;

@Controller
public class ChargesController {
	@Autowired
	private ChargesDao chargesDao;
	
	
	//요금제 수정
	@RequestMapping(value="/charges/charges_update", method= RequestMethod.POST)
	public String chargesUpdate(@RequestParam(value="charges_code", required=true) String charges_code){
		return "redirect:/charges/charges_form";                                                                                                                                                                                                                                                         
	}
	
	//요금제 삭제
	@RequestMapping(value="/charges/charges_delete", method= RequestMethod.GET)
	public String chargesDelete(@RequestParam(value="charges_code", required=true) String charges_code){
		System.out.println("charges_code :" + charges_code);
		chargesDao.deleteCharges(charges_code);
		return "redirect:/charges/charges_form";
	}
	
	//요금제 등록
	@RequestMapping(value="/charges/charges_pro", method= RequestMethod.POST)
	public String chargesPro(Charges charges){
		System.out.println("요금제 등록 폼");
		System.out.println(charges);
		
		//코드 MAX select 
		int code = chargesDao.selectChargesCode();
		
		if(code == 0){ 
			charges.setSeat_charges_code("seat_charges_code1");
			chargesDao.insertCharges(charges);
		}else{
			
			/*System.out.println("code 길이 :" + code.length());
			int subcode = Integer.parseInt(code.substring(code.length()-1))+1;                                                   
			System.out.println(subcode);
			String charescode = "charges_code100" + subcode;
			chares.setSeat_charges_code(charescode);*/
			
			int result = chargesDao.insertAutoCharges(charges);
			if(result == 1){
				System.out.println("요금제 등록 성공");
				return "redirect:/charges/charges_form";
			}else{
				System.out.println("요금제 등록 실패");
			}
		}
		return "redirect:/charges/charges_form";
	}
	
	//요금제 설정 폼
	@RequestMapping(value="/charges/charges_form", method= RequestMethod.GET)
	public String chargesFrom(Model model){
		System.out.println("요금제 설정 폼");
		List<Charges> chargeslist = chargesDao.selectCharges();
		model.addAttribute("chargeslist", chargeslist);
		return "charges/charges_form";
	}
}
