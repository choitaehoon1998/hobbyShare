package com.hobbyshare.service.impl;

import java.util.HashMap;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.hobbyshare.dao.MemberDao;
import com.hobbyshare.domain.Member;
import com.hobbyshare.service.MemberService;


@Service
public class DefaultMemberService implements MemberService {

  @Resource
  private MemberDao memberDao;

  @Transactional
  @Override
  public void insert(Member member) throws Exception {
    memberDao.insert(member);
  }
  
  @Transactional
  @Override
  public void delete(int no) throws Exception {
    memberDao.delete(no);
  }
  
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

  @Override
  public List<Member> list() throws Exception {
    return memberDao.findAll();
  }
  
  @Transactional
  @Override
  public void update(Member member) throws Exception {
    memberDao.update(member);
  }

  @Override
  public int emailCheck(String email) throws Exception {
    return memberDao.emailCheckOver(email);
  }

  @Override
  public int nicknameCheck(String nickname) throws Exception {
    return memberDao.nicknameCheckOver(nickname);
  }

  @Override
  public int telCheck(String tel) throws Exception {
    return memberDao.telCheckOver(tel);
  }
  
}
