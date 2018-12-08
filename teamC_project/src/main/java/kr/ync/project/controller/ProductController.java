package kr.ync.project.controller;

import java.awt.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ync.project.domain.PageMaker;
import kr.ync.project.domain.ProductVO;
import kr.ync.project.domain.SearchCriteria;
import kr.ync.project.service.ProductService;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/aproduct/*")
@Slf4j
public class ProductController {
	@Autowired
	private ProductService service;

	/*//상품 목록
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String productList(ProductVO productVO, Model model) {
		
		
		service.productList(productVO);
		
		return "aproduct/productlist";
	}*/
	
	
	@GetMapping(value = "/productlist")
	public void productList(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		log.info(cri.toString()); // SearchCriteria 객체의 값3

		//model.addAttribute("list", service.listCriteria(cri));
		model.addAttribute("productlist", service.listSearchCriteria(cri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		//pageMaker.setTotalCount(service.listCountCriteria(cri));
		pageMaker.setTotalCount(service.listSearchCount(cri));

		model.addAttribute("pageMaker", pageMaker);
	}
	
	@RequestMapping(value="/insert.do", method= {RequestMethod.POST,RequestMethod.GET})
	public String insert(ProductVO vo) throws Exception {
		/*String filename = "";
		//첨부파일 있을때
		if(!vo.getProductPhoto().isEmpty()) {
			filename = vo.getProductPhoto().getOriginalFilename();
			
			String path = "D:\\spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\teamC_project_DEV-1.0\\WEB-INF\\views\\images\\";
			
			try {
				new File(path).mkdirs(); //디렉토리 생성
				//임시디렉토리(서버)에 저장된 파일을 지정된 디렉토리로 전송
				vo.getProductPhoto().transferTo(new File(path + filename));
			} catch(Exception e) {
				e.printStackTrace();
			}
			//vo.p_image_src(filename);
			service.insertProduct(vo);
		} 
		
		return "redirect:/product/list.do";*/
		
		service.insertProduct(vo);
		
		return "admin/aindex";
	}
	
}
