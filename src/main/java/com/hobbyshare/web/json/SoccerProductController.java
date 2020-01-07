package com.hobbyshare.web.json;

import javax.annotation.Resource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.hobbyshare.service.MemberService;
import com.hobbyshare.service.SoccerProductService;

@RestController("json.SoccerProductController")
@RequestMapping("/json/soccerproduct")
public class SoccerProductController {
  
  @Resource private MemberService memberService;
  @Resource private SoccerProductService soccerProductService;
  
  @GetMapping("deletephoto")
  public JsonResult deletephotos(int no) throws Exception{
    try {
      soccerProductService.deletephoto(no);
      return new JsonResult().setState(JsonResult.SUCCESS);
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }

}
