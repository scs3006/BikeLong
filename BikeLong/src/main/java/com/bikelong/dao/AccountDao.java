package com.bikelong.dao;

import com.bikelong.vo.Member;

public interface AccountDao {

	Member selectMemberByIdAndPasswd(String id, String passwd);

}