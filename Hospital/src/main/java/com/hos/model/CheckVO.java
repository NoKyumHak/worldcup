package com.hos.model;

import java.sql.Timestamp;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class CheckVO {

	/* seq */
	private int checkNum;
	
	/* 인원(hos_member - memberNum 참조) */
	private int memberNum;
	
	/* 이름 */
	private String memberName;
	
	/* 진료 과 */
	private String subject;
	
	/* 날짜 */
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date checkDate;

	/* 시간 */
	@DateTimeFormat(pattern = "HH-mm")
	private String checkTime;
	
	/* 전화번호(hos_member - memberPhone 참조) */
	private String memberPhone;
	
	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public int getCheckNum() {
		return checkNum;
	}

	public void setCheckNum(int checkNum) {
		this.checkNum = checkNum;
	}

	public int getMemberNum() {
		return memberNum;
	}

	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public Date getCheckDate() {
		return checkDate;
	}

	public void setCheckDate(Date checkDate) {
		this.checkDate = checkDate;
	}

	public Timestamp getCheckTime() {
		return checkTime;
	}

	public void setCheckTime(Timestamp checkTime) {
		this.checkTime = checkTime;
	}

	public String getMemberPhone() {
		return memberPhone;
	}

	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}

	@Override
	public String toString() {
		return "CheckVO [checkNum=" + checkNum + ", memberNum=" + memberNum + ", memberName=" + memberName
				+ ", subject=" + subject + ", checkDate=" + checkDate + ", checkTime=" + checkTime + ", memberPhone="
				+ memberPhone + "]";
	}
	
}
