package kr.ync.project.domain;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ProductVO {
	private String p_name; //상품명
	private String p_detail; //상품상세설명
	private String p_small; //카테고리 소 fk
	private String p_middle; //카테고리 중 fk
	private String p_big; //카테고리 대 fk
	private String p_code; //상품코드
	private String size_s; //사이즈 소
	private String size_m; //사이즈 중
	private String size_l; //사이즈 대
	private int price; //가격
	private int sale_price; //세일가격
	private int p_point; //포인트
	private int stock; //재고
	private int e_num; //이벤트num fk
	private MultipartFile productPhoto; //상품이미지
}
