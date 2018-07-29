package com.bikelong.dao;

import com.bikelong.mapper.HistoryMapper;
import com.bikelong.vo.History;

public class MySqlHistoryDao implements HistoryDao {
	
	private HistoryMapper historyMapper;
	public void setHistoryMapper(HistoryMapper historyMapper) {
		this.historyMapper = historyMapper;
	}
	@Override
	public void insertHistory(History history) {
		historyMapper.insertHistory(history);
	}

}
