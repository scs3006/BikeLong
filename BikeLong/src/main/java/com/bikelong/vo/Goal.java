package com.bikelong.vo;

//데이터베이스의 Goal 테이블의 데이터를 저장하기 위한 클래스
public class Goal {

	private int goalNo;
	private String goalName;
	private int goalAmount;
	private String goalInfo;
	private String date;
	
	public int getGoalNo() {
		return goalNo;
	}
	public void setGoalNo(int goalNo) {
		this.goalNo = goalNo;
	}
	public String getGoalName() {
		return goalName;
	}
	public void setGoalName(String goalName) {
		this.goalName = goalName;
	}
	public int getGoalAmount() {
		return goalAmount;
	}
	public void setGoalAmount(int goalAmount) {
		this.goalAmount = goalAmount;
	}
	public String getGoalInfo() {
		return goalInfo;
	}
	public void setGoalInfo(String goalInfo) {
		this.goalInfo = goalInfo;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	

	
	
	
}
