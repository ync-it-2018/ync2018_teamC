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
import kr.ync.project.domain.CategoryMiddleVO;
import kr.ync.project.domain.EventVO;
import kr.ync.project.service.CategoryBigService;
import kr.ync.project.service.CategoryMiddleService;
import net.sf.json.JSONArray;

@Controller
@RequestMapping("/categorymiddle/*")
public class CategoryMiddleController {
		
private static final Logger logger = LoggerFactory.getLogger(CategoryMiddleController.class);
	
	@Inject
	private CategoryMiddleService service;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = "/categorymiddlelist", method = RequestMethod.GET)
	public String categorymiddlelist(Locale locale, Model model) throws Exception {
		
		logger.info("대분류 카테고리보기", locale);
		
		model.addAttribute("blist", service.mlistAll());
		
		return "admin/categoryMiddleRegister";
	}
	
	
	@RequestMapping(value="/categorymiddle.do", method=RequestMethod.GET)
    public void categorymiddleGET() {
        
    }
    
    //SignUp POST
    @RequestMapping(value="/categorymiddle.do", method=RequestMethod.POST)
    public String categorymiddlePOST(CategoryMiddleVO categorymiddleVO) {
            
    	service.insert(categorymiddleVO);
            
        return "admin/index";
    }
	
}
