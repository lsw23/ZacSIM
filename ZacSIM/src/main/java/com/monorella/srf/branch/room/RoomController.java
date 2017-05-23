package com.monorella.srf.branch.room;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.monorella.srf.branch.dto.Room;
import com.monorella.srf.branch.dto.RoomDashBoard;
import com.monorella.srf.branch.dto.Seat;
import com.monorella.srf.branch.dto.SeatRowCol;
import org.json.*;

@Controller
public class RoomController {
	@Autowired
	private RoomDao roomDao;
	
	//열람실 현황 보기
	@RequestMapping(value="/room/room_dashboard" , method = RequestMethod.GET)
	public String room_dashboard(Model model){
		System.out.println("room_dashboard()");
		//열람실 모든 코드 조회
		//List<Room> roomCdlist = roomDao.selectRoomAllCd();
		//RoomDashBoard roomdash = roomDao.selectRoomDashBoard(roomCdlist.get(0).getRoom_cd());

		List<RoomDashBoard> roomdashlist = roomDao.selectRoomDashBoardNow();
		for(RoomDashBoard rl : roomdashlist){
			System.out.println(rl);
		}
		model.addAttribute("roomdashlist", roomdashlist);
		return "room/room_dashboard";
	}
	
	//열람실 배치도 상세보기
	@RequestMapping(value="/room/room_view" , method = RequestMethod.GET)
	public String room_view(Room room, Model model){
		System.out.println("room_view()");
		System.out.println(room);
		List<Seat> seatlist = roomDao.selectRoomSeat(room);
		System.out.println(seatlist.get(0).getSeat_row());
		
		/*//제일 상위 객체
		JSONObject obj = new JSONObject();
		//Person의 JSON정보를 담을 Array 선언
		JSONArray personArray = new JSONArray();
		//Person의 한명 정보가 들어갈 JSONObject 선언
		JSONObject personInfo = new JSONObject();
		//정보 입력
		personInfo.put("name", "송강호");
		personInfo.put("age", "25");
		//Array에 입력
		personArray.put(personInfo);
		
		personInfo = new JSONObject();
		personInfo.put("name", "전지현");
		personInfo.put("age", "21");
		
		personArray.put(personInfo);
		obj.put("persons", personArray);
		//전체 입력한 값 확인
		System.out.println(obj);*/
		
		
		JSONObject seat = new JSONObject();
		JSONArray seatArray = new JSONArray();
		JSONObject seatRowCol = new JSONObject();
		
		
		String row = seatlist.get(0).getSeat_row()+"";
		String col = seatlist.get(0).getSeat_col()+"";
		seatRowCol.put("row", row);
		seatRowCol.put("col", col);
		seatArray.put(seatRowCol);
		seat.put("seat", seatArray);
		System.out.println(seat);
		
				
		model.addAttribute("seatlist", seatlist);
		model.addAttribute("room", room);
	
		return "room/room_view";
	}
	
	//열람실 배치도 등록
	@RequestMapping(value="/room/room_placement" , method = RequestMethod.POST)
	public String room_placement(SeatRowCol seatrowcol){
		System.out.println(seatrowcol);
		String[] seat_col = seatrowcol.getSeat_col().split(",");
		String[] seat_row = seatrowcol.getSeat_row().split(",");
	/*	
	    for(String col : seat_col){
			System.out.println(col);
		}
		for(String row : seat_row){
			System.out.println(row);
		}
	*/
		for(int i=0; i<seatrowcol.getSeat_cnumber().size(); i++){
			Seat seat = new Seat();
			seat.setRoom_cd(seatrowcol.getRoom_cd().get(i));
			seat.setSeat_cnumber(seatrowcol.getSeat_cnumber().get(i));
			seat.setSeat_col(Integer.parseInt(seat_col[i+1]));
			seat.setSeat_row(Integer.parseInt(seat_row[i+1]));
			System.out.println("번호 :" + seat.getSeat_cnumber() +", row : "+ seat.getSeat_row() + ", col: " + seat.getSeat_col());
			roomDao.modifyRoomSeat(seat);
		}
		return "redirect:/room/room_main";
	}
	
	
	//열람실 삭제
	@RequestMapping(value="/room/room_delete" , method = RequestMethod.GET)
	public String room_Delete(@RequestParam(value="room_cd", required=true) String room_cd){
		
		System.out.println("room_cd :" + room_cd);
		try{
			System.out.println("열람실 & 열람석 삭제");
			roomDao.deleteSeat(room_cd);
			roomDao.deleteRoom(room_cd);
		
			return "redirect:/room/room_form";
		}catch(Exception e){
			e.printStackTrace();
		}
		return "redirect:/room/room_form";
	}
	
	//열람실 등록
	@RequestMapping(value="/room/room_pro", method = RequestMethod.POST)
	public String room_pro(Room room, Model model){
		System.out.println("room_pro 열람실 등록");
		int result = roomDao.insertRoom(room);
		//열람실 등록 성공시
		if(result == 1){
			System.out.println("열람실 등록 성공");
			//열람석 등록
			ArrayList<Seat> seatli = new ArrayList<Seat>();
			//열람석 총 수 만큼 반복문
			for(int i=0; i<room.getSeat_num(); i++){
				Seat seat = new Seat();
				seat.setBranch_owner_cd(room.getBranch_owner_cd());
				seat.setRoom_cd(room.getRoom_cd());
				seat.setSeat_cnumber(i+1);
				roomDao.insertSeat(seat);
				seatli.add(seat);
			}
			//열람실 현황 데이터 
			RoomDashBoard roomdash = new RoomDashBoard();
			//열람실 코드 조회
			String room_cd = roomDao.selectRoomCd();
			System.out.println("room_cd : " + room_cd);
			//열람실 현황 입력데이터 조회
			roomdash = roomDao.selectRoomDashBoard(room_cd);
			System.out.println(roomdash);
			//열람실 현황 입력 초기화
			roomDao.insertRoomDashBoard(roomdash);
			
			model.addAttribute("room", room);
			model.addAttribute("seat", seatli);
			return "room/chair_form";
		//열람실 등록실패시	
		}else{
			System.out.println("열람실 등록 실패");
		}
		return "room/room_form"; 
	}
	
	//열람실 등록폼
   @RequestMapping(value="/room/room_form", method = RequestMethod.GET)
	public String room_form(Model model){
		System.out.println("room_form 요청");
		model.addAttribute("roomlist", roomDao.selectRoom());
		return "room/room_form";
	}
	//좌석등록
	@RequestMapping(value="/room/chair_form", method = RequestMethod.GET)
	public String chair_form() {
		System.out.println("chair_form 요청");
		return "room/chair_form";
	}
	//열람실 관리
	@RequestMapping(value="/room/room_main", method = RequestMethod.GET)
	public String room_main(Model model){
		List<Seat> seatlist = roomDao.selectSeat();
		model.addAttribute("roomlist", roomDao.selectRoom());
		model.addAttribute("seatlist", seatlist);
		return "room/room_main";
	}
}
