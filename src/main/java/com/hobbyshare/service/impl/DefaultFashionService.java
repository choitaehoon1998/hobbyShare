package com.hobbyshare.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.hobbyshare.dao.FashionDao;
import com.hobbyshare.dao.FashionFeedbackphotoDao;
import com.hobbyshare.domain.FashionFeedback;
import com.hobbyshare.domain.FashionFeedbackPhoto;
import com.hobbyshare.service.FashionService;

@Service
public class DefaultFashionService implements FashionService {
	@Resource 
	FashionDao fashionDao;
	@Resource
	FashionFeedbackphotoDao fashionFeedbackPhotoDao;
	
	@Override
	public List<FashionFeedback> list() throws Exception {
	return fashionDao.findAll();
	}

  @Transactional
  @Override
  public void insert(FashionFeedback fashionFeedback) throws Exception {
    fashionDao.insert(fashionFeedback);
    
    for(FashionFeedbackPhoto  photo : fashionFeedback.getFashionFeedbackPhoto()) {
      photo.setFashionFeedbackNo(fashionFeedback.getFashionFeedbackNo());
      fashionFeedbackPhotoDao.insert(photo);
    }
  }



}
