package com.bikelong.service;

import com.bikelong.vo.Member;

public interface AccountService {

	Member login(String id, String password);
	void signUpMember(Member member);
}