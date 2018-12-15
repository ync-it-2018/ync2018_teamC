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

import kr.ync.project.admin.domain.CategoryBigVO;
import kr.ync.project.admin.service.CategoryBigService;

@Controller
@RequestMapping("/admin/*")
public class CategoryBigController {

	private static final Logger logger = LoggerFactory.getLogger(CategoryBigController.class);

	@Inject
	private CategoryBigService service;

	@RequestMapping(value = "/categorybigList", method = RequestMethod.GET)
	public String BigList(Model model) throws Exception {

		logger.info("리스트목록보기");

		model.addAttribute("biglist", service.BiglistAll());

		return "admin/categorybigList";
	}

	// 글 작성 get
	@RequestMapping(value = "/categorybigRegister", method = RequestMethod.GET)
	public void getCategoryBig(CategoryBigVO vo, Model model) throws Exception {
		logger.info("get categorybig");
	}

	// 글 작성 post
	@RequestMapping(value = "/categorybigRegister", method = RequestMethod.POST)
	public String postCategoryBig(CategoryBigVO vo, RedirectAttributes rttr) throws Exception {

		logger.info("post categorybig");
		logger.info(vo.toString());

		service.createCategoryBig(vo);

		rttr.addFlashAttribute("msg", "success");

		return "redirect:/admin/categorybigList";
	}

	// 상세
	@RequestMapping(value = "/categorybigRead", method = RequestMethod.GET)
	public void categorybigRead(@RequestParam("pBig") int pBig, Model model) throws Exception {

		logger.info("리스트상세보기");

		model.addAttribute(service.readCategoryBig(pBig));

	}

	// 삭제
	@RequestMapping(value = "/deleteCategoryBig", method = RequestMethod.POST)
	public String remove(@RequestParam("pBig") int pBig, RedirectAttributes rttr) throws Exception {

		logger.info("대분류 카테고리 삭제");

		service.deleteCategoryBig(pBig);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/admin/categorybigList";
	}

	// 글 수정 get
	@RequestMapping(value = "/categorybigModify", method = RequestMethod.GET)
	public void getModify(int pBig, Model model) throws Exception {
		logger.info("대분류 카테고리 수정 get");

		model.addAttribute(service.readCategoryBig(pBig));
	}

	// 글 수정 post
	@RequestMapping(value = "/categorybigModify", method = RequestMethod.POST)
	public String postModify(CategoryBigVO vo, RedirectAttributes rttr) throws Exception {

		logger.info("대분류 카테고리 수정 post");

		service.updateCategoryBig(vo);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/admin/categorybigList";
	}

}
