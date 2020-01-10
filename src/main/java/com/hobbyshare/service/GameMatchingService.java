package com.hobbyshare.service;

import java.util.List;

import com.hobbyshare.domain.GameMatching;

public interface GameMatchingService {
  List<GameMatching> list() throws Exception;
  GameMatching get(int no) throws Exception;
  void insert(GameMatching gameMatching) throws Exception;
  void update(GameMatching gameMatching) throws Exception;
  void delete(int no) throws Exception;
}


