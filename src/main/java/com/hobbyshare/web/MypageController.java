package com.hobbyshare.web;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hobbyshare.dao.MypageDao;
import com.hobbyshare.domain.Member;

@Controller
@RequestMapping("/mypage")
public class MypageController {
	
	@Autowired
	MypageDao mypageDao;
	
	@GetMapping("form")
	public void form(HttpSession session) throws Exception {
	  Map<String, Object> params = new HashMap<>();
	  params.put("email", "s_swwhh@naver.com");
	  params.put("pw", 1111);
	
	  Member member = mypageDao.login(params);
	  session.setAttribute("loginUser", member);
	}
	
	@PostMapping("updateNickName")
	@ResponseBody
	public int updateNickName(HttpSession session, String nickname) throws Exception {
		Member member = new Member();
		member.setMemberNo(((Member) session.getAttribute("loginUser")).getMemberNo());
		member.setNickName(nickname);
		return mypageDao.updateNickName(member);
	}
	
	@PostMapping("updateName")
	@ResponseBody
	public int updateName(HttpSession session, String name) throws Exception {
		Member member = new Member();
		member.setMemberNo(((Member) session.getAttribute("loginUser")).getMemberNo());
		member.setName(name);
		return mypageDao.updateName(member);
	}
	
	@PostMapping("updatePw")
	@ResponseBody
	public int updatePw(HttpSession session, String password) throws Exception {
		Member member = new Member();
		member.setMemberNo(((Member) session.getAttribute("loginUser")).getMemberNo());
		member.setPassword(password);
		return mypageDao.updatePw(member);
	}
	
}