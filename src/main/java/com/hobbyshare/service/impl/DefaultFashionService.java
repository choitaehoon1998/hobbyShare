package com.hobbyshare.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hobbyshare.dao.FashionDao;
import com.hobbyshare.dao.FashionItemDao;
import com.hobbyshare.domain.FashionFeedback;
import com.hobbyshare.domain.FashionItem;
import com.hobbyshare.service.FashionService;

@Service
public class DefaultFashionService implements FashionService {
	@Resource 
	FashionDao fashionDao;
	@Resource
	FashionItemDao fashionItemDao;
	
	@Override
	public List<FashionFeedback> list() throws Exception {
	return fashionDao.findAll();
	}


	@Override
	public List<FashionItem> itemList() throws Exception {
		return fashionItemDao.findAll();
	}


	@Override
	public FashionItem fashionItem() throws Exception {
		return fashionItemDao.findBy();
	}



}
