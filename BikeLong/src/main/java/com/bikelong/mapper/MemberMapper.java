package com.bikelong.mapper;

import java.util.HashMap;

import com.bikelong.vo.Member;

public interface MemberMapper {
	
	Member selectMemberByIdAndPasswd(HashMap<String, Object> params);
	void insertMember(Member member);
	void updateMember(Member member);
	Member selectMemberById(String id);

}
