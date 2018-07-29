package com.bikelong.service;

import com.bikelong.dao.HistoryDao;

public class HistoryServiceImpl implements HistoryService {

	private HistoryDao historyDao;
	public void setHistoryDao(HistoryDao historyDao) {
		this.historyDao = historyDao;
	}

}
