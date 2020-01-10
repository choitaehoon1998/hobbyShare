package com.hobbyshare.service;

import java.util.List;
import com.hobbyshare.domain.SoccerProductComment;

public interface SoccerProductCommentService {
  List<SoccerProductComment> list() throws Exception;
  void insert(SoccerProductComment soccerProductComment) throws Exception;


}
