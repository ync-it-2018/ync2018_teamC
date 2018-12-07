/*package kr.ync.project.controller;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ync.project.domain.ProductVO;
import kr.ync.project.service.ProductService;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/product")
@Slf4j
public class ProductController {
	@Autowired
	private ProductService service;

	//상품 전체 목록
	@RequestMapping("/list.do")
	public ModelAndView list(ModelAndView mav) {
		mav.setViewName("/productlist");
		mav.addObject("list");
		return mav;
	}
	
	@RequestMapping("insert.do")
	public String insert(ProductVO vo) {
		String filename = "";
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
			vo.setProductUrl(filename);
			service.insertProduct(vo);
		} 
		
		return "redirect:/product/list.do";
	}
}
*/