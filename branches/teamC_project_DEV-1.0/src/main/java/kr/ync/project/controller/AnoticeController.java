package kr.ync.project.controller;

import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ync.project.service.AnoticeService;

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
	public String aNotice(Locale locale, Model model) throws Exception {
		
		logger.info("리스트목록보기", locale);
		
		model.addAttribute("serverTime", service.listAll());
		
		
		return "admin/aNotice";
	}
	
	
	@RequestMapping(value = "/aNoticeRead", method = {RequestMethod.GET,RequestMethod.POST})
	public String aNoticeRead(@RequestParam("nCode")Integer nCode, Model model) throws Exception {
		
		logger.info("리스트상세보기");	
		
		model.addAttribute("list",service.read(nCode));
		
		return "admin/aNoticeRead";
	}
	
	
}
