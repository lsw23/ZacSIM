package com.monorella.srf.branch.dto;

import java.util.List;

public class SeatRowCol {
	private List<String> room_cd;
	private List<Integer> seat_cnumber; // 열람석 번호
	private String seat_row; // 열람석 행
	private String seat_col; // 열람석 열
	
	public List<String> getRoom_cd() {
		return room_cd;
	}
	public void setRoom_cd(List<String> room_cd) {
		this.room_cd = room_cd;
	}
	public List<Integer> getSeat_cnumber() {
		return seat_cnumber;
	}
	public void setSeat_cnumber(List<Integer> seat_cnumber) {
		this.seat_cnumber = seat_cnumber;
	}
	public String getSeat_row() {
		return seat_row;
	}
	public void setSeat_row(String seat_row) {
		this.seat_row = seat_row;
	}
	public String getSeat_col() {
		return seat_col;
	}
	public void setSeat_col(String seat_col) {
		this.seat_col = seat_col;
	}
	
	@Override
	public String toString() {
		return "SeatRowCol [room_cd=" + room_cd + ", seat_cnumber=" + seat_cnumber + ", seat_row=" + seat_row
				+ ", seat_col=" + seat_col + "]";
	}
	
	
}
