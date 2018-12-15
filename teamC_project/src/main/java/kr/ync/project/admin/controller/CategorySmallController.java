package kr.ync.project.admin.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ync.project.admin.domain.CategorySmallVO;
import kr.ync.project.admin.service.CategorySmallService;

@Controller
@RequestMapping("/admin/*")
public class CategorySmallController {
	
	private static final Logger logger = LoggerFactory.getLogger(CategorySmallController.class);

	@Inject
	private CategorySmallService service;

	// 소분류 리스트
	@RequestMapping(value = "/categorysmallList", method = RequestMethod.GET)
	public String smallList(Model model) throws Exception {

		logger.info("소분류 리스트목록보기");

		model.addAttribute("smalllist", service.SmalllistAll());

		return "admin/categorysmallList";
	}

// 글 작성 get
	@RequestMapping(value = "/categorysmallRegister", method = RequestMethod.GET)
	public void getCategorysmall(CategorySmallVO vo, Model model) throws Exception {
		logger.info("get categorysmall");
	}

// 글 작성 post
	@RequestMapping(value = "/categorysmallRegister", method = RequestMethod.POST)
	public String postCategorysmall(CategorySmallVO vo, RedirectAttributes rttr) throws Exception {

		logger.info("post categorysmall");
		logger.info(vo.toString());

		service.createCategorySmall(vo);

		rttr.addFlashAttribute("msg", "success");

		return "redirect:/admin/categorysmallList";
	}

// 상세
	@RequestMapping(value = "/categorysmallRead", method = RequestMethod.GET)
	public void categorysmallRead(@RequestParam("pSmall") int pSmall, Model model) throws Exception {

		logger.info("리스트상세보기");

		model.addAttribute(service.readCategorySmall(pSmall));

	}

// 삭제
	@RequestMapping(value = "/deleteCategorySmall", method = RequestMethod.POST)
	public String remove(@RequestParam("pSmall") int pSmall, RedirectAttributes rttr) throws Exception {

		logger.info("소분류 카테고리 삭제");

		service.deleteCategorySmall(pSmall);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/admin/categorysmallList";
	}

// 글 수정 get
	@RequestMapping(value = "/categorysmallModify", method = RequestMethod.GET)
	public void getModify(int pSmall, Model model) throws Exception {

		logger.info("소분류 카테고리 수정 get");

		model.addAttribute(service.readCategorySmall(pSmall));
	}

// 글 수정 post
	@RequestMapping(value = "/categorysmallModify", method = RequestMethod.POST)
	public String postModify(CategorySmallVO vo, RedirectAttributes rttr) throws Exception {

		logger.info("소분류 카테고리 수정 post");

		service.updateCategorySmall(vo);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/admin/categorysmallList";
	}
	 
}



