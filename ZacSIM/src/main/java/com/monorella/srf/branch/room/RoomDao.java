package com.monorella.srf.branch.room;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.monorella.srf.branch.dto.Room;
import com.monorella.srf.branch.dto.RoomDashBoard;
import com.monorella.srf.branch.dto.Seat;

@Repository
public class RoomDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//열람석 code 전체 조회 
	public List<Room> selectRoomAllCd(){
		return sqlSessionTemplate.selectList("com.monorella.srf.branch.room.RoomMapper.selectRoomAllCd");
	}
	
	//열람석 code에 일치하는 열람실 Code 조회
	public String selectRoomCdeqSeatCd(int seat_cd){
		return sqlSessionTemplate.selectOne("com.monorella.srf.branch.room.RoomMapper.selectRoomCdeqSeatCd", seat_cd);
	}
	
	//열람실 입실 현황 modify
	public int modifySeatRoomDashBoard(RoomDashBoard roomDashBoard){
		return sqlSessionTemplate.update("com.monorella.srf.branch.room.RoomMapper.modifySeatRoomDashBoard", roomDashBoard);
	}
	
	//열람실 결제& 미결제 현황  modify
	public int modifyRoomDashBoard(RoomDashBoard roomDashboard){
		return sqlSessionTemplate.update("com.monorella.srf.branch.room.RoomMapper.modifyRoomDashBoard", roomDashboard);
	}
	
	//열람실 현황 조회
	public List<RoomDashBoard> selectRoomDashBoardNow(){
		return sqlSessionTemplate.selectList("com.monorella.srf.branch.room.RoomMapper.selctRoomDashBoardNow");
	}
	
	//열람실 현황 입력데이터 조회
	public RoomDashBoard selectRoomDashBoard(String room_cd){
		return sqlSessionTemplate.selectOne("com.monorella.srf.branch.room.RoomMapper.selectRoomDashBoard", room_cd);
	}
	
	//열람실 코드 전체 조회
	public List<Room> selectRoomCdAll(){
		return sqlSessionTemplate.selectList("");
	}
	
	//열람실 코드 조회
	public String selectRoomCd(){
		return sqlSessionTemplate.selectOne("com.monorella.srf.branch.room.RoomMapper.selectRoomCd");
	}
	
	//열람실별 열람석 조회
	public List<Seat> selectRoomSeat(Room room){
		return sqlSessionTemplate.selectList("com.monorella.srf.branch.room.RoomMapper.selectRoomSeat", room);
	}
	
	//열람실 열람석 배치
	public int modifyRoomSeat(Seat seat){
		System.out.println("modifyRoomSeat()");
		return sqlSessionTemplate.update("com.monorella.srf.branch.room.RoomMapper.modifyRoomSeat", seat);
	}
	
	//열람석 삭제
	public int deleteSeat(String room_cd){
		System.out.println("deleteSeat()");
		return sqlSessionTemplate.delete("com.monorella.srf.branch.room.RoomMapper.deleteSeat", room_cd);
	}
	
	//열람실 삭제
	public int deleteRoom(String room_cd){
		System.out.println("deleteRoom()");
		return sqlSessionTemplate.delete("com.monorella.srf.branch.room.RoomMapper.deleteRoom", room_cd);
	}
	
	//열람석 select
	public List<Seat> selectSeat(){
		System.out.println("selectSeat()");
		return sqlSessionTemplate.selectList("com.monorella.srf.branch.room.RoomMapper.selectSeat");
	}
	
	//열람실 select
	public List<Room> selectRoom(){
		System.out.println("selectRoom()");
		return sqlSessionTemplate.selectList("com.monorella.srf.branch.room.RoomMapper.selectRoom");
	}
	
	//열람실 현황 insert
	public int insertRoomDashBoard(RoomDashBoard roomdash){
		return sqlSessionTemplate.insert("com.monorella.srf.branch.room.RoomMapper.insertRoomDashBoard", roomdash);
	}
	
	//열람석 insert
	public int insertSeat(Seat seat){
		return sqlSessionTemplate.insert("com.monorella.srf.branch.room.RoomMapper.insertSeat", seat);
	}
	
	//열람실 insert
	public int insertRoom(Room room){
		System.out.println(room);
		return sqlSessionTemplate.insert("com.monorella.srf.branch.room.RoomMapper.insertRoom", room);
	}
}
