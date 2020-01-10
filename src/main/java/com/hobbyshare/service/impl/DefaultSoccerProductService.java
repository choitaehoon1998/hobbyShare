package com.hobbyshare.service.impl;

import java.util.HashMap;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.hobbyshare.dao.PhotoFileDao;
import com.hobbyshare.dao.SoccerProductDao;
import com.hobbyshare.domain.PhotoFile;
import com.hobbyshare.domain.SoccerProduct;
import com.hobbyshare.service.SoccerProductService;

@Service
public class DefaultSoccerProductService implements SoccerProductService {

  @Resource private SoccerProductDao soccerProductDao;
  @Resource private PhotoFileDao photoFileDao;
  
  @Transactional
  @Override
  public void insert(SoccerProduct soccerProduct) throws Exception {
    if (soccerProduct.getFiles().size() == 0) {
      throw new Exception("사진 파일이 없습니다.");
    }
    
    soccerProductDao.insert(soccerProduct);
    for (PhotoFile file : soccerProduct.getFiles()) {
      file.setSoccerProductNo(soccerProduct.getSoccerProductNo());
      photoFileDao.insert(file);
    }
  }

  @Override
  public List<SoccerProduct> list() throws Exception {
    return soccerProductDao.findAll();
  }

  @Override
  public SoccerProduct get(int no) throws Exception {
    SoccerProduct soccerProduct = soccerProductDao.findWithFilesBy(no);
    if (soccerProduct == null) {
      throw new Exception("해당 번호의 데이터가 없습니다. ");
    }
    return soccerProduct;
  }

  @Override
  public void delete(int no) throws Exception {
    soccerProductDao.delete(no);
    soccerProductDao.delete2(no);
  }

  @Override
  public void update(HashMap<String, Object> map) throws Exception {
    soccerProductDao.update(map);
  }

  @Override
  public void deletephoto(int no) throws Exception {
    soccerProductDao.deletephoto(no);
  }

  @Override
  public void insertphotos(SoccerProduct soccerProduct) throws Exception {
    for (PhotoFile file : soccerProduct.getFiles()) {
      file.setSoccerProductNo(soccerProduct.getSoccerProductNo());
      photoFileDao.insert(file);

    }
    
  }

}
