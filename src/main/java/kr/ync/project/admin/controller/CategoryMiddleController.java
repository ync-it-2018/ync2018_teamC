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

import kr.ync.project.admin.domain.CategoryMiddleVO;
import kr.ync.project.admin.service.CategoryMiddleService;

@Controller
@RequestMapping("/admin/*")
public class CategoryMiddleController {

	private static final Logger logger = LoggerFactory.getLogger(CategoryMiddleController.class);

	@Inject
	private CategoryMiddleService service;

	// 중분류 리스트
	@RequestMapping(value = "/categorymiddleList", method = RequestMethod.GET)
	public String MiddleList(Model model) throws Exception {

		logger.info("중분류 리스트목록보기");

		model.addAttribute("middlelist", service.MiddlelistAll());

		return "admin/categorymiddleList";
	}

// 글 작성 get
	@RequestMapping(value = "/categorymiddleRegister", method = RequestMethod.GET)
	public void getCategoryMiddle(CategoryMiddleVO vo, Model model) throws Exception {
		logger.info("get categorymiddle");
	}

// 글 작성 post
	@RequestMapping(value = "/categorymiddleRegister", method = RequestMethod.POST)
	public String postCategoryMiddle(CategoryMiddleVO vo, RedirectAttributes rttr) throws Exception {

		logger.info("post categorymiddle");
		logger.info(vo.toString());

		service.createCategoryMiddle(vo);

		rttr.addFlashAttribute("msg", "success");

		return "redirect:/admin/categorymiddleList";
	}

// 상세
	@RequestMapping(value = "/categorymiddleRead", method = RequestMethod.GET)
	public void categorymiddleRead(@RequestParam("pMiddle") int pMiddle, Model model) throws Exception {

		logger.info("리스트상세보기");

		model.addAttribute(service.readCategoryMiddle(pMiddle));

	}

// 삭제
	@RequestMapping(value = "/deleteCategoryMiddle", method = RequestMethod.POST)
	public String remove(@RequestParam("pMiddle") int pMiddle, RedirectAttributes rttr) throws Exception {

		logger.info("중분류 카테고리 삭제");

		service.deleteCategoryMiddle(pMiddle);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/admin/categorymiddleList";
	}

// 글 수정 get
	@RequestMapping(value = "/categorymiddleModify", method = RequestMethod.GET)
	public void getModify(int pMiddle, Model model) throws Exception {

		logger.info("중분류 카테고리 수정 get");

		model.addAttribute(service.readCategoryMiddle(pMiddle));
	}

// 글 수정 post
	@RequestMapping(value = "/categorymiddleModify", method = RequestMethod.POST)
	public String postModify(CategoryMiddleVO vo, RedirectAttributes rttr) throws Exception {

		logger.info("중분류 카테고리 수정 post");

		service.updateCategoryMiddle(vo);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/admin/categorymiddleList";
	}

}
