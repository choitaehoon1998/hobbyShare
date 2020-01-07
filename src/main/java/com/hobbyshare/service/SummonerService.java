package com.hobbyshare.service;

import java.util.List;

import com.hobbyshare.domain.Summoner;

public interface SummonerService {
  List<Summoner> list() throws Exception;
  Summoner get(int no) throws Exception;
  void insert(Summoner summoner) throws Exception;
  void update(Summoner summoner) throws Exception;
  void delete(int no) throws Exception;
}


