package kr.ync.project.admin.controller;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ync.project.admin.domain.CategoryBigVO;
import kr.ync.project.admin.service.CategoryBigService;

@Controller
@RequestMapping("/categorybig/*")
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

	@RequestMapping(value="/categorybig.do", method=RequestMethod.GET)
    public void categorybigGET() {
        
    }
    
    //SignUp POST
    @RequestMapping(value="/categorybig.do", method=RequestMethod.POST)
    public String categorybigPOST(CategoryBigVO categorybigVO) {
            
    	service.insert(categorybigVO);
            
        return "admin/index";
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
	
	@RequestMapping(value = "/categorybigRead", method = RequestMethod.GET)
	public String CateBigRead(@RequestParam("pBig")int pBig, Model model) throws Exception {
		
		logger.info("리스트상세보기");	
		
		model.addAttribute("list",service.read(pBig));
		
		return "admin/categorybigRead";
	}
	
	/*
	@GetMapping(value = "/categorybigRegister")
	public void registGET() throws Exception {

		logger.info("regist get ...........");
	}*/
/*
	@PostMapping(value = "/categorybigRegister")
	public String registPOST(CategoryBigVO categorybigVO, RedirectAttributes rttr) throws Exception {

		logger.info("regist post ...........");
		logger.info(categorybigVO.toString());

		service.insert(categorybigVO);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/categorylist";

	}*/
	
}
