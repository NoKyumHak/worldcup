package com.hos.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hos.model.CheckVO;
import com.hos.model.MemberVO;
import com.hos.service.MemberService;

@Controller
@RequestMapping(value = "/member")
public class MemberController {
	@Autowired
	private MemberService memberservice;

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	// 회원가입 페이지 이동
	@RequestMapping(value = "join", method = RequestMethod.GET)
	public void joinGET() {

		logger.info("회원가입 페이지 진입");

	}

	// 로그인 페이지 이동
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public void loginGET() {

		logger.info("로그인 페이지 진입");

	}

	// 회원가입
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String joinPOST(MemberVO member) throws Exception {

		logger.info("join 진입");

		// 회원가입 서비스 실행
		memberservice.memberJoin(member);

		logger.info("join Service 성공");

		return "redirect:/main";

	}

	// 예약
	@RequestMapping(value = "reserve", method = RequestMethod.GET)
	public void reserveGET() {

		logger.info("reserve 진입");

		// 예약 서비스 실행
		

	}

}