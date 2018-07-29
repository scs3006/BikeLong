package com.bikelong.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bikelong.service.HistoryService;
import com.bikelong.vo.History;

@Controller
@RequestMapping(value = "/history")
public class HistoryController {
	
	// 자동 의존성 주입
	@Autowired
	@Qualifier("historyService")
	private HistoryService historyService;
	
	@GetMapping(value = "/minserthistory.action")
	@ResponseBody
	public void getInsertHistory(History history, int weight) {
		
		SimpleDateFormat formate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		int minute=0;
		try {
			Date start = (Date) formate.parse(history.getStartTime());
			Date end = (Date) formate.parse(history.getEndTime());
			long startTime = start.getTime();
			long endTime = end.getTime();
			
			minute = (int)(endTime-startTime) / 60000;
		} catch (ParseException e) {
			e.printStackTrace();
		}
		history.setRentalTime(minute);
		///////////////////////////////////////////사용시간
		int calorie = (int)((10.0 * (3.5 * weight * minute)) * 0.005);
		history.setCalorie(calorie);
		////////////////////   칼로리 계산 공식    ////////////////////////////
		//					싸이클(약 20km/h) = 10.0 MET				  //
		// (운동강도(MET) * (3.5 * 몸무게(kg) * 운동시간(분))) * 0.005 = kcal //
		////////////////////////////////////////////////////////////////
		
		historyService.InsertHistory(history);
	}
	
}







