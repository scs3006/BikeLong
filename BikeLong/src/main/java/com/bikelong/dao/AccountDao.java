package com.bikelong.dao;

import com.bikelong.vo.Member;

public interface AccountDao {

	Member selectMemberByIdAndPasswd(String id, String passwd);
	void insertMember(Member member);
	void updateMember(Member member);
	Member selectMemberById(String id);
	void updatePassword(String id, String hashedPassword);
	String selectPasswordById(String id);

}