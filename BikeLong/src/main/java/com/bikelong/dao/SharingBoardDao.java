package com.bikelong.dao;

import java.util.List;

import com.bikelong.vo.History;
import com.bikelong.vo.SharingBoard;

public interface SharingBoardDao {

	void insertBoard(SharingBoard sharingBoard);

	SharingBoard selectBoard(int boardNo);

	List<SharingBoard> selectBoardList();

	void updateBoard(SharingBoard sharingBoard);

	void deleteBoard(int boardNo);

	List<History> selectHistory(String id);

	List<History> selectgps(History history);



}