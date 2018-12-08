package kr.ync.project.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ync.project.service.AnoticeService;
import kr.ync.project.service.BoardService;
import kr.ync.project.service.TestService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class AnoticeController {
	
	private static final Logger logger = LoggerFactory.getLogger(AnoticeController.class);
	
	@Inject
	private AnoticeService service;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/aNotice", method = RequestMethod.GET)
	public String home(Locale locale, Model model) throws Exception {
		//saehee
		// 가나다
		//바꼈니
		logger.info("리스트목록보기", locale);
		
		model.addAttribute("serverTime", service.listAll());
		
		return "admin/aNotice";
	}
	
	
}
