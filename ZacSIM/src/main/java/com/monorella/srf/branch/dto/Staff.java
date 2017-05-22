package com.monorella.srf.branch.dto;

public class Staff {
	private String staff_id;
	private String branch_owner_cd;
	private String staff_pw;
	private String staff_name;
	private String staff_tel;
	private String staff_addr;
	private String staff_in_date;
	public String getStaff_id() {
		return staff_id;
	}
	public void setStaff_id(String staff_id) {
		this.staff_id = staff_id;
	}
	public String getBranch_owner_cd() {
		return branch_owner_cd;
	}
	public void setBranch_owner_cd(String branch_owner_cd) {
		this.branch_owner_cd = branch_owner_cd;
	}
	public String getStaff_pw() {
		return staff_pw;
	}
	public void setStaff_pw(String staff_pw) {
		this.staff_pw = staff_pw;
	}
	public String getStaff_name() {
		return staff_name;
	}
	public void setStaff_name(String staff_name) {
		this.staff_name = staff_name;
	}
	public String getStaff_tel() {
		return staff_tel;
	}
	public void setStaff_tel(String staff_tel) {
		this.staff_tel = staff_tel;
	}
	public String getStaff_addr() {
		return staff_addr;
	}
	public void setStaff_addr(String staff_addr) {
		this.staff_addr = staff_addr;
	}
	public String getStaff_in_date() {
		return staff_in_date;
	}
	public void setStaff_in_date(String staff_in_date) {
		this.staff_in_date = staff_in_date;
	}
	@Override
	public String toString() {
		return "Staff [staff_id=" + staff_id + ", branch_owner_cd=" + branch_owner_cd + ", staff_pw=" + staff_pw
				+ ", staff_name=" + staff_name + ", staff_tel=" + staff_tel + ", staff_addr=" + staff_addr
				+ ", staff_in_date=" + staff_in_date + "]";
	}
	
	
}
