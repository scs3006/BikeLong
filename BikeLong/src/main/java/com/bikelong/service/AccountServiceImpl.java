package com.bikelong.service;

import com.bikelong.common.Util;
import com.bikelong.dao.AccountDao;
import com.bikelong.vo.Member;

public class AccountServiceImpl implements AccountService {

	private AccountDao accountDao;
	public void setAccountDao(AccountDao accountDao) {
		this.accountDao = accountDao;
	}

	@Override
	public Member login(String id, String password) {
		String hashedPasswd = Util.getHashedString(password, "SHA-256");
		Member member = accountDao.selectMemberByIdAndPasswd(id, hashedPasswd);
		return member;
	}

	@Override
	public void signUpMember(Member member) {
		String hashedPasswd = Util.getHashedString(member.getPassword(), "SHA-256");
		member.setPassword(hashedPasswd);		
		accountDao.insertMember(member);
	}

	@Override
	public void updateMember(Member member) {
		accountDao.updateMember(member);
	}

	@Override
	public Member getMember(String id) {
		return accountDao.selectMemberById(id);
	}	

}
