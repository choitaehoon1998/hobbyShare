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
		params.put("pw", 1234);

		Member member = mypageDao.login(params);
		session.setAttribute("loginUser", member);
	}

	@PostMapping("checkNickName")
	@ResponseBody
	public int checkNickName(String nickname) throws Exception {
		return mypageDao.checkNickName(nickname);
	}

	@PostMapping("updateNickName")
	@ResponseBody
	public int updateNickName(HttpSession session, String nickname) throws Exception {
		Member member = new Member();
		member.setMemberNo(((Member) session.getAttribute("loginUser")).getMemberNo());
		member.setNickName(nickname);
		return mypageDao.updateNickName(member);
	}

	@PostMapping("checkPw")
	@ResponseBody
	public int checkPw(HttpSession session, String password) throws Exception {
		Member member = new Member();
		member.setMemberNo(((Member) session.getAttribute("loginUser")).getMemberNo());
		member.setPassword(password);
		return mypageDao.checkPw(member);
	}

	@PostMapping("updatePw")
	@ResponseBody
	public int updatePw(HttpSession session, String password) throws Exception {
		Member member = new Member();
		member.setMemberNo(((Member) session.getAttribute("loginUser")).getMemberNo());
		member.setPassword(password);
		return mypageDao.updatePw(member);
	}

	@PostMapping("checkTel")
	@ResponseBody
	public int checkTel(String tel) throws Exception {
		return mypageDao.checkTel(tel);
	}

	@PostMapping("updateTel")
	@ResponseBody
	public int updateTel(HttpSession session, String tel) throws Exception {
		Member member = new Member();
		member.setMemberNo(((Member) session.getAttribute("loginUser")).getMemberNo());
		member.setTel(tel);
		return mypageDao.updateTel(member);
	}
	
	@PostMapping("updateBasicAddress")
	@ResponseBody
	public int updateBasicAddress(HttpSession session, String address) throws Exception {
		Member member = new Member();
		member.setMemberNo(((Member) session.getAttribute("loginUser")).getMemberNo());
		member.setBasicAddress(address);
		return mypageDao.updateBasicAddress(member);
	}

}