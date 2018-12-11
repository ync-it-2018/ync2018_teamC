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
import kr.ync.project.service.EventService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class AeventController {
	
	private static final Logger logger = LoggerFactory.getLogger(AeventController.class);
	
	@Inject
	private EventService eventservice;
	/**
	 * Simply selects the home view to render by returning its name.
	 */	
	
	/*@RequestMapping(value = "/aevent", method = {RequestMethod.GET,RequestMethod.POST})
	public String aevent(Locale locale, Model model) throws Exception {
		
		logger.info("리스트목록보기", locale);
		
		model.addAttribute("eventlist", eventservice.elistAll());
		
		
		return "admin/aevent";
	}
	
	
	@RequestMapping(value = "/aeventRead", method = {RequestMethod.GET,RequestMethod.POST})
	public String aeventRead(@RequestParam("eNum")Integer eNum, Model model) throws Exception {
		
		logger.info("리스트상세보기");	
		
		model.addAttribute("list",eventservice.read(eNum));
		
		return "admin/aeventRead";
	}*/
	
	
}
