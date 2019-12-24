package com.hobbyshare.dao;

import java.util.Map;

import com.hobbyshare.domain.Member;

public interface MypageDao {
	Member login(Map<String, Object> params) throws Exception;
	int updateNickName(Member member) throws Exception;
	int updateName(Member member) throws Exception;
	int updatePw(Member member) throws Exception;
}
