package com.hobbyshare.service;

import org.springframework.stereotype.Service;
import com.hobbyshare.domain.Member;

@Service
public interface MemberService {
  Member loginCheck(String email, String password) throws Exception;
  String findId(Member member) throws Exception;
  int findPw(Member member) throws Exception;
  Member get(String email, String password);
  void update(Member member) throws Exception;
  Member getPassword(String email)  throws Exception;
}
