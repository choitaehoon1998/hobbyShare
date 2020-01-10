package com.hobbyshare.dao;

import java.util.List;
import com.hobbyshare.domain.SoccerProductComment;

public interface SoccerProductCommentDao {
  List<SoccerProductComment> findAll() throws Exception;
  int insert(SoccerProductComment soccerProductComment) throws Exception;

}
