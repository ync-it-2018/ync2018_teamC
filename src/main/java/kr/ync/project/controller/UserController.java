package kr.ync.project.controller;

import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.util.WebUtils;

import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;
import kr.ync.project.service.UserService;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/front/*")
@Slf4j
public class UserController {

	@Autowired
	private UserService service;

	@GetMapping(value = "/login")
	public String loginGET(@ModelAttribute("dto") LoginDTO dto) {
		log.info("UserController loginGET");
		return "front/login";
	}
	
	@GetMapping(value = "/loginError")
	public String loginError(@ModelAttribute("dto") LoginDTO dto) {
		log.info("Login Error");
		return "front/loginError";
	}
	@GetMapping(value = "/value")
	public String valueGET(@ModelAttribute("UserVO") UserVO vo , Model model) {
		log.info("UserController valueGET");
		
		model.addAttribute("UserVO", vo);
		
		return "front/loginPost2";

	}
	
	
	//postHandle 실행
	@PostMapping("/loginPost")
	public String loginPost(LoginDTO dto, HttpSession session, Model model) throws Exception {
		// 세션 초기화
		session.removeAttribute("login");
		
		// 로그인 처리
		UserVO vo = service.login(dto);
		
		// 로그인 실패시
		if (vo == null) {
			return "redirect:/login";
		}else {// 로그인 성공시
			// 세션 생성
			session.setAttribute("login", vo);
			
			System.out.println("세션 : " + session.getAttribute("login"));
		}
		
		//model.addAttribute("UserVO", vo);
		
		return "redirect:/index";
	}

	@GetMapping(value = "/logout")
	//@RequestMapping(value = "/logout", method=RequestMethod.GET)
	public void logout(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws Exception {

		// 세션 삭제
		session.removeAttribute("login");

		response.sendRedirect("/index");
	}
	
}
