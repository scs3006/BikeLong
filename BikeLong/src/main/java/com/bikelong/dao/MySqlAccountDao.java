package com.bikelong.dao;

import java.util.HashMap;

import com.bikelong.mapper.MemberMapper;
import com.bikelong.vo.Member;

public class MySqlAccountDao implements AccountDao {
	
	private MemberMapper memberMapper;
	public void setMemberMapper(MemberMapper memberMapper) {
		this.memberMapper = memberMapper;
	}

	@Override
	public Member selectMemberByIdAndPasswd(String id, String password) {
		HashMap<String, Object> params = new HashMap<>();
		params.put("id", id);
		params.put("password", password);
		Member member = memberMapper.selectMemberByIdAndPasswd(params);
		return member;
	}

	@Override
	public void insertMember(Member member) {
		memberMapper.insertMember(member);
	}

	@Override
	public void updateMember(Member member) {
		memberMapper.updateMember(member);
	}

	@Override
	public Member selectMemberById(String id) {
		return memberMapper.selectMemberById(id);
	}
	
}
