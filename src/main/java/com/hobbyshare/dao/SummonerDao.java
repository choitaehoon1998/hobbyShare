package com.hobbyshare.dao;

import java.util.List;
import com.hobbyshare.domain.Summoner;

public interface SummonerDao {
  int insert(Summoner summoner) throws Exception;
  List<Summoner> findAll() throws Exception;
  Summoner findBy(int no) throws Exception;
  int update(Summoner summoner) throws Exception;
  int delete(int no) throws Exception;
}
