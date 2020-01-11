package com.hobbyshare.service.impl;

import java.util.List;
import javax.annotation.Resource;

import com.hobbyshare.dao.SummonerDao;
import com.hobbyshare.domain.Summoner;
import com.hobbyshare.service.SummonerService;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
public class DefaultSummonerService implements SummonerService {

  @Resource
  private SummonerDao summonerDao;

  @Transactional
  @Override
  public void insert(Summoner summoner) throws Exception {
    summonerDao.insert(summoner);
  }
  
  @Transactional
  @Override
  public void delete(int no) throws Exception {
    summonerDao.delete(no);
  }

  @Override
  public Summoner get(int no) throws Exception {
    Summoner summoner = summonerDao.findBy(no);
    // if (summoner == null) {
    //   throw new Exception("해당 번호의 데이터가 없습니다!");
    // }
    // 없을시 summoner 등록 페이지로 이동!
    return summoner;
  }

  @Override
  public List<Summoner> list() throws Exception {
    return summonerDao.findAll();
  }
  
  @Transactional
  @Override
  public void update(Summoner summoner) throws Exception {
    summonerDao.update(summoner);
  }

}
