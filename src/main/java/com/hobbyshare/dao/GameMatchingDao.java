package com.hobbyshare.dao;

import java.util.List;
import com.hobbyshare.domain.GameMatching;

public interface GameMatchingDao {
  int insert(GameMatching gameMatching) throws Exception;
  List<GameMatching> findAll() throws Exception;
  GameMatching findBy(int no) throws Exception;
  int update(GameMatching gameMatching) throws Exception;
  int delete(int no) throws Exception;
}
