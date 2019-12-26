package com.hobbyshare.dao;

import java.util.HashMap;
import com.hobbyshare.domain.Member;

// 회원 관리 DAO의 사용 규칙을 정의한다.
public interface MemberDao {
  Member findByEmailPassword(HashMap<String, Object> params) throws Exception;
  int loginCheck(HashMap<String, Object> params) throws Exception;
  
}








