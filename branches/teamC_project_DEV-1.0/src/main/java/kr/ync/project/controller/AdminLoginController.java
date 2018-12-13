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

import kr.ync.project.domain.AUserVO;
import kr.ync.project.dto.ALoginDTO;
import kr.ync.project.service.AUserService;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/admin/*")
@Slf4j
public class AdminLoginController {

	@Autowired
	private AUserService service;

	@GetMapping(value = "/alogin")
	public String aloginGET(@ModelAttribute("dto") ALoginDTO dto) {
		log.info("AdminLoginController valueGET");
		return "admin/alogin";
	}
	
	
/*	@GetMapping(value = "/avalue")
	public String valueGET(@ModelAttribute("AUserVO") AUserVO vo , Model model) {
		log.info("AdminLoginController valueGET");
		model.addAttribute("AUserVO", vo);
		return "admin/aindex";
	}*/
	
	
	//postHandle 실행
	@PostMapping("/aloginPost")
	//@ResponseStatus(value=HttpStatus.OK)
	public void loginPOST(ALoginDTO dto, HttpSession session, Model model) throws Exception {

		AUserVO vo = service.alogin(dto);

		if (vo == null) {
			return  ;
		}
		log.info(vo.getAID());
		model.addAttribute("AUserVO", vo);
		//JOptionPane.showMessageDialog(frame, "Eggs are not supposed to be green.");
		

		if (dto.isUseCookie()) {

			int amount = 60 * 60 * 24 * 7;

			Date sessionLimit = new Date(System.currentTimeMillis() + (1000 * amount));

			service.keepALogin(vo.getAID(), session.getId(), sessionLimit);
	
			
			 
		}
		
		
	}
	
	@GetMapping(value = "/aloginError")
	public String aloginError(@ModelAttribute("dto") ALoginDTO dto) {
		log.info("Error");
		return "admin/aloginError";
	}

	@GetMapping(value = "/alogout")
	public void alogout(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws Exception {

		log.info("alogout.................................1");

		Object obj = session.getAttribute("alogin");

		if (obj != null) {
			AUserVO vo = (AUserVO) obj;
			log.info("alogout.................................2");
			session.removeAttribute("alogin");
			session.invalidate();

			log.info("alogout.................................3");
			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");

			if (loginCookie != null) {
				log.info("alogout.................................4");
				loginCookie.setPath("/");
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);
				service.keepALogin(vo.getAID(), session.getId(), new Date());
				log.info("logout success................");
			}
		}
		response.sendRedirect("/admin/alogin");
	}
	
	
}
