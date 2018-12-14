package kr.ync.project.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ync.project.domain.ProductVO;
import kr.ync.project.service.ProductService;

@Controller
@RequestMapping("/admin/*")
public class ProductController {

	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

	@Inject
	private ProductService service;

	// 글 작성 get
	@RequestMapping(value = "/productup", method = RequestMethod.GET)
	public void getProduct(ProductVO vo, Model model) throws Exception {
		logger.info("get product");
	}

	// 글 작성 post
	@RequestMapping(value = "/productup", method = RequestMethod.POST)
	public String postProduct(ProductVO vo, RedirectAttributes rttr) throws Exception {

		logger.info("post product");
		logger.info(vo.toString());

		service.createProduct(vo);

		rttr.addFlashAttribute("msg", "success");

		return "redirect:/admin/productlist";
	}

	// 목록
	@RequestMapping(value = "/productlist", method = RequestMethod.GET)
	public void productlist(Model model) throws Exception {

		logger.info("리스트목록보기");

		model.addAttribute("list", service.listAll());

	}

	// 상세
	@RequestMapping(value = "/productRead", method = RequestMethod.GET)
	public void ProductRead(@RequestParam("pCode") String pCode, Model model) throws Exception {

		logger.info("리스트상세보기");

		model.addAttribute("productVO",service.readProduct(pCode));

	}

	// 삭제
	@RequestMapping(value = "/deleteProduct", method = RequestMethod.POST)
	public String remove(@RequestParam("pCode") String pCode, RedirectAttributes rttr) throws Exception {

		logger.info("공지사항 삭제");

		service.deleteProduct(pCode);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/admin/productlist";
	}

	// 글 수정 get
	@RequestMapping(value = "/productModify", method = RequestMethod.GET)
	public void getModify(String pCode, Model model) throws Exception {
		
		logger.info("상품 수정 get");

		model.addAttribute(service.readProduct(pCode));
	}

	// 글 수정 post
	@RequestMapping(value = "/productModify", method = RequestMethod.POST)
	public String postModify(ProductVO vo, RedirectAttributes rttr) throws Exception {

		logger.info("상품 수정 post");

		service.updateProduct(vo);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/admin/productlist";
	}


}
