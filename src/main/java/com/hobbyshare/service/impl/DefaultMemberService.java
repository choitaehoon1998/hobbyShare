package com.hobbyshare.service.impl;

import java.util.HashMap;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.hobbyshare.dao.MemberDao;
import com.hobbyshare.domain.Member;
import com.hobbyshare.service.MemberService;

@Service
public class DefaultMemberService implements MemberService {
  
  @Resource
  private MemberDao memberDao;

  @Override
  public Member get(String email, String password) throws Exception {
    HashMap<String, Object> params = new HashMap<>();
    params.put("email", email);
    params.put("password", password);
    Member member = memberDao.findByEmailPassword(params);
    if (member == null) {
    } 
    return member;
  }


  @Override
  public int loginCheck(String email, String password) throws Exception {
    HashMap<String, Object> params = new HashMap<>();
    params.put("email", email);
    params.put("password", password);
    return memberDao.loginCheck(params);
  }
}
