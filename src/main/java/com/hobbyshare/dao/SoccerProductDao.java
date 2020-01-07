package com.hobbyshare.dao;

import java.util.HashMap;
import java.util.List;
import com.hobbyshare.domain.SoccerProduct;

public interface SoccerProductDao {
  int insert(SoccerProduct soccerProduct) throws Exception;
  List<SoccerProduct> findAll() throws Exception;
  SoccerProduct findWithFilesBy(int no) throws Exception;
  int delete(int no) throws Exception;
  int delete2(int no) throws Exception;
  int update(HashMap<String, Object> map) throws Exception;
  int deletephoto(int no) throws Exception;

}
