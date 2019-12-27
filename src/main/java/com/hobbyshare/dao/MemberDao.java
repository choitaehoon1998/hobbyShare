package com.hobbyshare.dao;

import java.util.List;
import com.hobbyshare.domain.Member;

public interface MemberDao {
  int insert(Member member) throws Exception;
  List<Member> findAll() throws Exception;
  Member findBy(int no) throws Exception;
  int update(Member member) throws Exception;
  int delete(int no) throws Exception;

  int emailCheckOver(String email) throws Exception; // 이메일 중복 체크
}
