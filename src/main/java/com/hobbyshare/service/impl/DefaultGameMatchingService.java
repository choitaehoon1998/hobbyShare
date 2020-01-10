package com.hobbyshare.service.impl;

import java.util.List;
import javax.annotation.Resource;

import com.hobbyshare.dao.GameMatchingDao;
import com.hobbyshare.domain.GameMatching;
import com.hobbyshare.service.GameMatchingService;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
public class DefaultGameMatchingService implements GameMatchingService {

  @Resource
  private GameMatchingDao gameMatchingDao;

  // @Transactional
  @Override
  public void insert(GameMatching gameMatching) throws Exception {
    gameMatchingDao.insert(gameMatching);
  }
  
  @Transactional
  @Override
  public void delete(int no) throws Exception {
    gameMatchingDao.delete(no);
  }

  @Override
  public GameMatching get(int no) throws Exception {
    GameMatching gameMatching = gameMatchingDao.findBy(no);
    if (gameMatching == null) {
      throw new Exception("해당 번호의 데이터가 없습니다!");
    }
    return gameMatching;
  }

  @Override
  public List<GameMatching> list() throws Exception {
    return gameMatchingDao.findAll();
  }
  
  @Transactional
  @Override
  public void update(GameMatching gameMatching) throws Exception {
    gameMatchingDao.update(gameMatching);
  }

}
