package com.hobbyshare.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hobbyshare.dao.FashionDao;
import com.hobbyshare.domain.FashionFeedback;
import com.hobbyshare.service.FashionService;

@Service
public class DefaultFashionService implements FashionService {
	@Resource 
	FashionDao fashionDao;
	
	
	@Override
	public List<FashionFeedback> list() throws Exception {
	return fashionDao.findAll();
	}



}
