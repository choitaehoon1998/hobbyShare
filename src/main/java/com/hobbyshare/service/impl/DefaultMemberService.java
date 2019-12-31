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
  public Member get(String email, String password) {
    return null;
  }

  @Override
  public Member loginCheck(String email, String password) throws Exception {
    HashMap<String, Object> params = new HashMap<>();
    params.put("email", email);
    params.put("password", password);
    return memberDao.loginCheck(params);
  }
  @Override
  public String findId(Member member) throws Exception {
    return memberDao.findId(member);
  }

  @Override
  public int findPw(Member member) throws Exception {
    return memberDao.findPw(member);
  }

  @Override
  public void update(Member member) throws Exception {
    memberDao.update(member);
    
  }

  @Override
  public Member getPassword(String email) throws Exception {
    return memberDao.getPassword(email);
  }
}
