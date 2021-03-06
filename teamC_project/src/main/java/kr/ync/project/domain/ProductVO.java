package kr.ync.project.domain;

/*@Getter
@Setter
@ToString*/
public class ProductVO {
	//상품
	private String pCode; //상품코드  넘어오는 컬럼값을 카멜이 바꿔줌(P_CODE -> pCode)
	private String pName; //상품명
	private String pDetail; //상품상세설명
	private int pSmall; //카테고리 소 fk
	private int pMiddle; //카테고리 중 fk
	private int pBig; //카테고리 대 fk	
	private String pSize; //사이즈
	private int price; //가격
	private int salePrice; //세일가격
	private int pPoint; //적립률
	private int stock; //재고
	private int eNum; //이벤트num fk

	private String pMain;//main product 구분
	private String pImageSrc;//이미지 경로

	public String getpMain() {

		return pMain;
	}

	public void setpMain(String pMain) {
		this.pMain = pMain;
	}

	public String getpCode() {
		return pCode;
	}

	public void setpCode(String pCode) {
		this.pCode = pCode;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getpDetail() {
		return pDetail;
	}

	public void setpDetail(String pDetail) {
		this.pDetail = pDetail;
	}

	public int getpSmall() {
		return pSmall;
	}

	public void setpSmall(int pSmall) {
		this.pSmall = pSmall;
	}

	public int getpMiddle() {
		return pMiddle;
	}

	public void setpMiddle(int pMiddle) {
		this.pMiddle = pMiddle;
	}

	public int getpBig() {
		return pBig;
	}

	public void setpBig(int pBig) {
		this.pBig = pBig;
	}

	public String getpSize() {
		return pSize;
	}

	public void setpSize(String pSize) {
		this.pSize = pSize;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(int salePrice) {
		this.salePrice = salePrice;
	}

	public int getpPoint() {
		return pPoint;
	}

	public void setpPoint(int pPoint) {
		this.pPoint = pPoint;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public int geteNum() {
		return eNum;
	}

	public void seteNum(int eNum) {
		this.eNum = eNum;
	}

	public String getpImageSrc() {
		return pImageSrc;
	}

	public void setpImageSrc(String pImageSrc) {
		this.pImageSrc = pImageSrc;
	}
	
	
	
}
