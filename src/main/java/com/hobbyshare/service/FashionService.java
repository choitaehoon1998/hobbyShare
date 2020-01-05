package com.hobbyshare.service;

import java.util.List;
import com.hobbyshare.domain.FashionFeedback;
import com.hobbyshare.domain.FashionItem;

public interface FashionService {
	List<FashionFeedback> list()throws Exception;

	List<FashionItem> itemList() throws Exception;

	FashionItem fashionItem()throws Exception;
}
