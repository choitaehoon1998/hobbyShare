package com.hobbyshare.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.hobbyshare.dao.SoccerProductCommentDao;
import com.hobbyshare.domain.SoccerProductComment;
import com.hobbyshare.service.SoccerProductCommentService;

@Service
public class DefaultSoccerProductCommentService implements SoccerProductCommentService {

  @Resource private SoccerProductCommentDao soccerProductCommentDao;
  
  @Override
  public List<SoccerProductComment> list() throws Exception {
    return soccerProductCommentDao.findAll();
  }

  @Override
  public void insert(SoccerProductComment soccerProductComment) throws Exception {
    soccerProductCommentDao.insert(soccerProductComment);
  }

}
