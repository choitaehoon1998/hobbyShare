package com.hobbyshare.service;

import org.springframework.stereotype.Service;
import com.hobbyshare.domain.Member;

@Service
public interface MemberService {
  Member get(String email, String password) throws Exception;
  int loginCheck(String email, String password) throws Exception;

}
