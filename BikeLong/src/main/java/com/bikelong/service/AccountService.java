package com.bikelong.service;

import com.bikelong.vo.Member;

public interface AccountService {

	Member login(String id, String password);
	void signUpMember(Member member);
	void updateMember(Member member);
	Member getMember(String id);
	void changePassword(String id, String newPassword);
	String getPassword(String id);
}