package com.bikelong.service;

import java.util.HashMap;
import java.util.List;

import com.bikelong.dao.MypageDao;
import com.bikelong.vo.History;

public class MypageServiceImpl implements MypageService {

	private MypageDao mypageDao;
	public void setMypageDao(MypageDao mypageDao) {
		this.mypageDao = mypageDao;
	}

	@Override
	public List<History> getTotalActivity(HashMap<String, Object> params) {
		return mypageDao.selectTotalActivity(params);
	}
	
}
