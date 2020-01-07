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
  public Member login(HashMap<String, Object> params) throws Exception {
    return memberDao.login(params);
  }

  @Override
  public String findId(Member member) throws Exception {
    return memberDao.findId(member);
  }

  @Override
  public Member get(int no) throws Exception {
    Member member = memberDao.findBy(no);
    if (member == null) {
      throw new Exception("해당 번호의 데이터가 없습니다!");
    }
    return member;
  }

//  @Override
//  public int findPw(Member member) throws Exception {
//    return memberDao.findPw(member);
//  }
//  @Override
//  public Member get(String email, String password) throws Exception {
//    HashMap<String, Object> params = new HashMap<>();
//    params.put("email", email);
//    params.put("password", password);
//    Member member = memberDao.findByEmailPassword(params);
//    if (member == null) {
//    } 
//    return member;
//  }
}
