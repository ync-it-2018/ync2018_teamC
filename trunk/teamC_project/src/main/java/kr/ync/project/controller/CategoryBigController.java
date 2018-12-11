package kr.ync.project.controller;

import java.awt.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ync.project.domain.BoardVO;
import kr.ync.project.domain.CategoryBigVO;
import kr.ync.project.service.CategoryBigService;
import net.sf.json.JSONArray;

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
		
		model.addAttribute("list", service.listAll());
		
		return "admin/categorylist";
	}
	
	
	
	/*@RequestMapping(value = "/categorybigRegister", method = RequestMethod.GET)
	public String categorybigRegister(Locale locale, Model model) throws Exception{
		
		logger.info("카테고리 등록");
		
		List category = null;
		category = (List) service.insert(categorybigVO);
		
		//틀만 잡힘. 
		
		model.addAttribute("category",JSONArray.fromObject(categorybigVO));
		return "admin/categorybigRegister";
	}*/
	
	
	@GetMapping(value = "/categorybigRegister")
	public void registGET() throws Exception {

		logger.info("regist get ...........");
	}

	@PostMapping(value = "/categorybigRegister")
	public String registPOST(CategoryBigVO categorybigVO, RedirectAttributes rttr) throws Exception {

		logger.info("regist post ...........");
		logger.info(categorybigVO.toString());

		service.insert(categorybigVO);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/categorylist";

	}
	
}
