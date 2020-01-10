package com.hobbyshare.dao;

import java.util.List;
import com.hobbyshare.domain.FashionFeedback;

public interface FashionDao {
	List<FashionFeedback> findAll() throws Exception;
    void insert(FashionFeedback fashionFeedback)throws Exception;
    FashionFeedback findBy(int no)throws Exception;
}