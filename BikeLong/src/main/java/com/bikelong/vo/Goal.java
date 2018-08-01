package com.bikelong.vo;

import java.sql.Date;

//데이터베이스의 Goal 테이블의 데이터를 저장하기 위한 클래스
public class Goal {

	private int goalNo;
	private int goalAmount;
	private int percent;
	private String id;
	private Date date;
	private int status;
	
	public int getGoalNo() {
		return goalNo;
	}
	public void setGoalNo(int goalNo) {
		this.goalNo = goalNo;
	}
	
	public int getGoalAmount() {
		return goalAmount;
	}
	public void setGoalAmount(int goalAmount) {
		this.goalAmount = goalAmount;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getPercent() {
		return percent;
	}
	public void setPercent(int percent) {
		this.percent = percent;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	

	
}
