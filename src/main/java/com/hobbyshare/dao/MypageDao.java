package com.hobbyshare.dao;

import com.hobbyshare.domain.Member;

public interface MypageDao {
	int checkNickName(String NickName) throws Exception;
	int updateNickName(Member member) throws Exception;
	int checkPw(Member member) throws Exception;
	int updatePw(Member member) throws Exception;
	int checkTel(String tel) throws Exception;
	int updateTel(Member member) throws Exception;
	int updateBasicAddress(Member member) throws Exception;
}
