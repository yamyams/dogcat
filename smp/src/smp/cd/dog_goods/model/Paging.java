package smp.cd.dog_goods.model;

public class Paging {	//����¡�ϱ� ���� Ŭ����
	private final static int pageCount = 5;		//�� ��ϴ� ������ �� ex)���� ���̴� ������ ���� �� 5��! //�̰� �����̹Ƿ� final�� �����Ѵ�
	private int blockStartNum = 0; //����� ù��° �ѹ� / ���� ��� ���� ���� �������� 7�̶�� 5�� �� ����� ù��° ����������...
	private int blockLastNum = 0;	//����� ������ �ѹ� / ���������� ������������ 7���̶�� 10�� �� ����� ������ ������
	private int lastPageNum = 0;	//�� �Խù��� ������ �������ѹ�... ���� 27���� �Խù��� �ִٸ� 27/5�� �������� �����Ƿ� 6�������� ������ �������ѹ�
	
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
	
	//�� ����
	//���� �������� ���� ���� ���� ��ȣ�� ����ȣ�� ����
	public void makeBlock(int curPage) {	//���⼭ curPage�� ���� �����ִ� �Խñ��� ������ �ѹ��� ����
		int blockNum = 0;	//blockNum�� ���۹�ȣ�� ����ȣ�� ���ϱ� ���� ���������̴�
		
		blockNum = (int)Math.floor((curPage-1)/pageCount);	//�̰ɷ� ���۹�ȣ�� ���� �� �ִٴ�...
		//���� �Խñ��� 5������ �������� �߰� �ȴٸ� 39��° �Խñ��� 39/5 = 7.8 ��, 8�ʿ��� 4��° ���̰���? �׷� curPage �޾ƿ°��� �и� 8�̶� ������... 
		//�׷� 8���� 1�� ���� 7�� �ǰ���? 7�� ������ī��Ʈ�� 5�� ��������.. �׷��� 1.4���ٰ� floor�޼ҵ忡 ���� 1�� �ȴ�
		blockStartNum = (pageCount * blockNum)+1;	//�� ������ ������ī��Ʈ 5�� ��ݱ��� ����ѹ� 1�� ���ϸ� �״�� 5�̰�, 1�� ���ϸ� 6�� ����? 
		//�װ� �ٷ� �ش� �������� ���ۺ���ѹ��� ����!!!
		blockLastNum = blockStartNum+(pageCount-1);	//���۳ѹ� + ������ī��Ʈ-1�̸� ����ȣ�� ��������?? ũũ
	}
	public void makeLastPageNum() {
		DogGoodsService service = DogGoodsService.getInstance();
		int total = service.getCountS();
		
		if(total % pageCount == 0) {
			lastPageNum = (int)Math.floor(total/pageCount);	//lastPageNum ������ ��ü page�� ��Ʋ� ������ page ��ȣ�� ��� �����Դϴ�.
		}else {
			lastPageNum = (int)Math.floor(total/pageCount) + 1;
		}
	}
	public void makeLastPageNum(String is_keyword) {	//�˻� ��ɶ����� �������̵��� ��
		DogGoodsService service = DogGoodsService.getInstance();
		int total = service.getCountS(is_keyword);
		
		if(total % pageCount == 0) {
			lastPageNum = (int)Math.floor(total/pageCount);	//lastPageNum ������ ��ü page�� ��Ʋ� ������ page ��ȣ�� ��� �����Դϴ�.
		}else {
			lastPageNum = (int)Math.floor(total/pageCount) + 1;
		}
	}
}
