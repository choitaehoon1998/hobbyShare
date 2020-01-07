package com.hobbyshare.dao;

import java.util.HashMap;
import com.hobbyshare.domain.Member;

// 회원 관리 DAO의 사용 규칙을 정의한다.
public interface MemberDao {
  Member login(HashMap<String, Object> params) throws Exception;
  String findId(Member member) throws Exception;
  int findPw(Member member) throws Exception;
  Member findBy(int no) throws Exception;
  
}








