package com.hobbyshare.dao;

import java.util.List;

import com.hobbyshare.domain.FashionItem;

public interface FashionItemDao {
	List<FashionItem> findAll() throws Exception;

	FashionItem findBy() throws Exception;
}