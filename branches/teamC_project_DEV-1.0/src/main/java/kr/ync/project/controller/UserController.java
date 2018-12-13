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
	@PostMapping("/index")
	public void loginPost(LoginDTO dto, HttpSession session, Model model) throws Exception {

		UserVO vo = service.login(dto);
		System.out.println("넘어왔니?:  "+ vo);
		// 로그인 실패시
		if (vo == null) {
			return;
		}
		log.info(vo.getmId());
		model.addAttribute("UserVO", vo);
		
		if (dto.isUseCookie()) {

			int amount = 60 * 60 * 24 * 7;

			Date sessionLimit = new Date(System.currentTimeMillis() + (1000 * amount));

			service.keepLogin(vo.getmId(), session.getId(), sessionLimit);

		}
		
	
	}

	@GetMapping(value = "/logout")
	//@RequestMapping(value = "/logout", method=RequestMethod.GET)
	public void logout(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws Exception {

		log.info("logout.................................1");

		Object obj = session.getAttribute("login");

		if (obj != null) {
			UserVO vo = (UserVO) obj;
			log.info("logout.................................2");
			session.removeAttribute("login");
			session.invalidate();

			log.info("logout.................................3");
			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");

			if (loginCookie != null) {
				log.info("logout.................................4");
				loginCookie.setPath("/");
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);
				service.keepLogin(vo.getmId(), session.getId(), new Date());
				log.info("logout success................");
			}
		}
		response.sendRedirect("/index");
	}
	
}
