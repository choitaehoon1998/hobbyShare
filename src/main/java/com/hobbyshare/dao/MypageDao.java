package com.hobbyshare.dao;

import java.util.Map;

import com.hobbyshare.domain.Member;

public interface MypageDao {
	Member login(Map<String, Object> params) throws Exception;
	int checkNickName(String NickName) throws Exception;
	int updateNickName(Member member) throws Exception;
	int checkPw(Member member) throws Exception;
	int updatePw(Member member) throws Exception;
	int checkTel(String tel) throws Exception;
	int updateTel(Member member) throws Exception;
	int updateBasicAddress(Member member) throws Exception;
}
