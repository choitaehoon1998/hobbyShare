package com.hobbyshare.service;

import java.util.HashMap;
import java.util.List;
import com.hobbyshare.domain.SoccerProduct;

public interface SoccerProductService {
  void insert(SoccerProduct soccerProduct) throws Exception;
  List<SoccerProduct> list() throws Exception;
  SoccerProduct get(int no) throws Exception;
  void delete(int no) throws Exception;
  void update(HashMap<String, Object> map) throws Exception;
  void deletephoto(int no) throws Exception;
  void insertphotos(SoccerProduct soccerProduct) throws Exception;

}
