package com.hobbyshare.service;

import java.util.List;
import com.hobbyshare.domain.FashionFeedback;

public interface FashionService {
	List<FashionFeedback> list()throws Exception;
    void insert(FashionFeedback fashionFeedback) throws Exception;;
}
