package com.bikelong.vo;

//데이터베이스의 Member 테이블의 데이터를 저장하기 위한 클래스
public class History {

	private int historyNo;
	private String id;
	private int bikeNo;
	private String startTime;
	private String endTime;
	
	private int rentalTime;
	private int distance;
	private int calorie;
	
	private int gpsNo; 
	private float latitude;
	private float longitude;
	
	
	public int getGpsNo() {
		return gpsNo;
	}
	public void setGpsNo(int gpsNo) {
		this.gpsNo = gpsNo;
	}
	public float getLatitude() {
		return latitude;
	}
	public void setLatitude(float latitude) {
		this.latitude = latitude;
	}
	public float getLongitude() {
		return longitude;
	}
	public void setLongitude(float longitude) {
		this.longitude = longitude;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getBikeNo() {
		return bikeNo;
	}
	public void setBikeNo(int bikeNo) {
		this.bikeNo = bikeNo;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public int getRentalTime() {
		return rentalTime;
	}
	public void setRentalTime(int rentalTime) {
		this.rentalTime = rentalTime;
	}
	public int getDistance() {
		return distance;
	}
	public void setDistance(int distance) {
		this.distance = distance;
	}
	public int getCalorie() {
		return calorie;
	}
	public void setCalorie(int calorie) {
		this.calorie = calorie;
	}
	public int getHistoryNo() {
		return historyNo;
	}
	public void setHistoryNo(int historyNo) {
		this.historyNo = historyNo;
	}
}
