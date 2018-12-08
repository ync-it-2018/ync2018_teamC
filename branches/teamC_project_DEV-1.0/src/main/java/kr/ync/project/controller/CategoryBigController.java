package kr.ync.project.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ync.project.domain.CategoryBig;
import kr.ync.project.service.CategoryBigService;

@Controller
public class CategoryBigController {
		
	@Inject
	private CategoryBigService service;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	/*@RequestMapping(value = "/categorybig", method = RequestMethod.GET)
	public void CatebigGet(CategoryBig categoryBig) {
		
		
	}
	@RequestMapping(value = "/categorybig", method = RequestMethod.POST)
	public String CatebigPost(CategoryBig categoryBig) {
		
		service.insert(categoryBig);
		
		return "admin/categorybig";
	}*/
	
}
