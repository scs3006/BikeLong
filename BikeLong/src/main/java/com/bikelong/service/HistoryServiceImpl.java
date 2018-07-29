package com.bikelong.service;

import com.bikelong.dao.HistoryDao;
import com.bikelong.vo.History;

public class HistoryServiceImpl implements HistoryService {

	private HistoryDao historyDao;
	public void setHistoryDao(HistoryDao historyDao) {
		this.historyDao = historyDao;
	}

	@Override
	public void InsertHistory(History history) {
		historyDao.insertHistory(history);
	}

}
