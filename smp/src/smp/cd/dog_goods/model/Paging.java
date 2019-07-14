package smp.cd.dog_goods.model;

public class Paging {	//페이징하기 위한 클래스
	private final static int pageCount = 5;		//한 블록당 페이지 수 ex)눈에 보이는 페이지 수는 총 5개! //이건 고정이므로 final로 지정한다
	private int blockStartNum = 0; //블록의 첫번째 넘버 / 예를 들어 지금 현재 페이지가 7이라면 5가 그 블록의 첫번째 페이지겠지...
	private int blockLastNum = 0;	//블록의 마지막 넘버 / 마찬가지로 현재페이지가 7쪽이라면 10이 그 블록의 마지막 페이지
	private int lastPageNum = 0;	//총 게시물의 마지막 페이지넘버... 만약 27개의 게시물이 있다면 27/5는 나머지가 있으므로 6페이지가 마지막 페이지넘버
	
	public int getBlockStartNum() {
		return blockStartNum;
	}
	public void setBlockStartNum(int blockStartNum) {
		this.blockStartNum = blockStartNum;
	}
	public int getBlockLastNum() {
		return blockLastNum;
	}
	public void setBlockLastNum(int blockLastNum) {
		this.blockLastNum = blockLastNum;
	}
	public int getLastPageNum() {
		return lastPageNum;
	}
	public void setLastPageNum(int lastPageNum) {
		this.lastPageNum = lastPageNum;
	}
	
	//블럭 생성
	//현재 페이지가 속한 블럭의 시작 번호와 끝번호를 구함
	public void makeBlock(int curPage) {	//여기서 curPage란 현재 보고있는 게시글의 페이지 넘버를 말함
		int blockNum = 0;	//blockNum은 시작번호와 끝번호를 구하기 위한 지역변수이다
		
		blockNum = (int)Math.floor((curPage-1)/pageCount);	//이걸로 시작번호를 구할 수 있다능...
		//만약 게시글은 5개마다 페이지가 추가 된다면 39번째 게시글은 39/5 = 7.8 즉, 8쪽에서 4번째 글이겠지? 그럼 curPage 받아온것은 분명 8이란 말이지... 
		//그럼 8에서 1를 빼면 7이 되겠지? 7를 페이지카운트인 5로 나눠봐라.. 그러면 1.4에다가 floor메소드에 의해 1이 된다
		blockStartNum = (pageCount * blockNum)+1;	//그 다음에 페이지카운트 5와 방금구한 블락넘버 1를 곱하면 그대로 5이고, 1를 더하면 6이 되지? 
		//그게 바로 해당 페이지의 시작블락넘버란 말씀!!!
		blockLastNum = blockStartNum+(pageCount-1);	//시작넘버 + 페이지카운트-1이면 끝번호가 나오겠죠?? 크크
	}
	public void makeLastPageNum() {
		DogGoodsService service = DogGoodsService.getInstance();
		int total = service.getCountS();
		
		if(total % pageCount == 0) {
			lastPageNum = (int)Math.floor(total/pageCount);	//lastPageNum 변수는 전체 page를 통틀어서 마지막 page 번호를 담는 변수입니다.
		}else {
			lastPageNum = (int)Math.floor(total/pageCount) + 1;
		}
	}
	public void makeLastPageNum(String is_keyword) {	//검색 기능때문에 오버라이딩을 함
		DogGoodsService service = DogGoodsService.getInstance();
		int total = service.getCountS(is_keyword);
		
		if(total % pageCount == 0) {
			lastPageNum = (int)Math.floor(total/pageCount);	//lastPageNum 변수는 전체 page를 통틀어서 마지막 page 번호를 담는 변수입니다.
		}else {
			lastPageNum = (int)Math.floor(total/pageCount) + 1;
		}
	}
}
