package smp.cd.cat_main.model;

import java.util.ArrayList;

public class CatMainService {
	private CatMainDAO dao;
	private static CatMainService instance = new CatMainService();
	
	public CatMainService() {
		dao = new CatMainDAO();
	}
	public static CatMainService getInstance() {
		return instance;
	}
	public ArrayList<CatMainDTO> selectS(){
		return dao.select();
	}
	public ArrayList<CatMainDTO> searchS(String is_keyword){
		return dao.search(is_keyword);
	}
}
