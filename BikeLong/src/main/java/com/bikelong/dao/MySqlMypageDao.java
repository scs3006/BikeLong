package com.bikelong.dao;

import java.util.HashMap;
import java.util.List;

import com.bikelong.mapper.MypageMapper;
import com.bikelong.vo.History;

public class MySqlMypageDao implements MypageDao {
	
	private MypageMapper mypageMapper;
	public void setMypageMapper(MypageMapper mypageMapper) {
		this.mypageMapper = mypageMapper;
	}
	
	@Override
	public List<History> selectTotalActivity(HashMap<String, Object> params) {
		return mypageMapper.selectTotalActivity(params);
	}

}
