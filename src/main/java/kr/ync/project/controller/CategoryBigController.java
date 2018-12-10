package kr.ync.project.controller;

import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ync.project.service.CategoryBigService;

@Controller
public class CategoryBigController {
		
private static final Logger logger = LoggerFactory.getLogger(CategoryBigController.class);
	
	@Inject
	private CategoryBigService service;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/categorylist", method = RequestMethod.GET)
	public String categorylist(Locale locale, Model model) throws Exception {
		
		logger.info("카테고리보기", locale);
		
		model.addAttribute("serverTime", service.listAll());
		
		return "admin/categorylist";
	}
	
	@RequestMapping(value = "/categorybig", method = RequestMethod.GET)
	public String categorybig(Locale locale, Model model) {
		
		return "admin/categorybig";
	}
	
}
