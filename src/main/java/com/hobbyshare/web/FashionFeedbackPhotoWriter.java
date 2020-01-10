package com.hobbyshare.web;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import javax.servlet.ServletContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import com.hobbyshare.domain.FashionFeedbackPhoto;

@Controller
@RequestMapping("/fashion")
public class FashionFeedbackPhotoWriter {
  String uploadDir;
  public FashionFeedbackPhotoWriter(ServletContext sc) {
    uploadDir = sc.getRealPath("/upload/fashionfeedback");
  }
  
  public List<FashionFeedbackPhoto> getPhotoFiles (MultipartFile[] filepath) throws Exception {
    List<FashionFeedbackPhoto> photoFiles = new ArrayList<>(); 
    for (MultipartFile file : filepath) {
      if(file.isEmpty())
        continue ;
      
      String filename = UUID.randomUUID().toString();
      file.transferTo(new File(uploadDir +"/" +filename));
      FashionFeedbackPhoto fashionFeedbackPhoto = new FashionFeedbackPhoto();
      fashionFeedbackPhoto.setFilePath(filename);
      photoFiles.add(fashionFeedbackPhoto);
    }
    return photoFiles;
  
  }
  
}