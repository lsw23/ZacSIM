package com.monorella.srf.branch.room;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.monorella.srf.branch.dto.Room;
import com.monorella.srf.branch.dto.Seat;

@Repository
public class RoomDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
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
