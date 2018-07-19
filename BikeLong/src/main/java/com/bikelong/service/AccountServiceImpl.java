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
		//String hashedPasswd = Util.getHashedString(password, "SHA-256");
		//Member member = accountDao.selectMemberByIdAndPasswd(id, hashedPasswd);
		Member member = accountDao.selectMemberByIdAndPasswd(id, password);
		return member;		
	}	

}
