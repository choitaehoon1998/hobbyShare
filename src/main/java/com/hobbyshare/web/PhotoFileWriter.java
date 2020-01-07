package com.hobbyshare.web;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import javax.servlet.ServletContext;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import com.hobbyshare.domain.PhotoFile;

@Component
public class PhotoFileWriter {
  String uploadDir;
  
  public PhotoFileWriter(ServletContext sc) {
    this.uploadDir = sc.getRealPath("/upload/soccerproduct");
  }
  
  public List<PhotoFile> getPhotoFiles(MultipartFile[] filePath) throws Exception {
    List<PhotoFile> photoFiles = new ArrayList<>();
    
    for (MultipartFile file : filePath) {
      if (file.isEmpty())
        continue;
      String filename = UUID.randomUUID().toString();
      file.transferTo(new File(uploadDir + "/" + filename));
      
      PhotoFile photoFile = new PhotoFile();
      photoFile.setFilePath(filename);
      photoFiles.add(photoFile);
    }
    return photoFiles;
  }
}
