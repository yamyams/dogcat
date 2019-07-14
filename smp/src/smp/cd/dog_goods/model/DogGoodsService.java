package smp.cd.dog_goods.model;

import java.util.ArrayList;

public class DogGoodsService {
	private DogGoodsDAO dao;
	private static DogGoodsService instance = new DogGoodsService();
	
	public DogGoodsService() {
		dao = new DogGoodsDAO();
	}
	
	public static DogGoodsService getInstance() {
		return instance;
	}
	public ArrayList<DogGoodsDTO> selectS(){
		return dao.select();
	}
	public ArrayList<DogGoodsDTO> searchS(String is_keyword){
		return dao.search(is_keyword);
	}
	public void writeS(String id, String dg_subject, String dg_content) {
		dao.write(id, dg_subject, dg_content);
	}
	public DogGoodsDTO infoS(int dg_seq) {
		return dao.info(dg_seq);
	}
	public void UpdateReadCntS(int dg_seq) {
		dao.updateReadCnt(dg_seq);
	}
	public void deleteS(int dg_seq) {
		dao.delete(dg_seq);
	}
	public int getCountS() {
		return dao.getCount();
	}
	public int getCountS(String is_keyword) {
		return dao.getCount();
	}
}
