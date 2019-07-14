package smp.cd.dog_main.model;

import java.util.ArrayList;

public class DogMainService {
	private DogMainDAO dao;
	private static DogMainService instance = new DogMainService();
	
	public DogMainService() {
		dao = new DogMainDAO(); 
	}
	public static DogMainService getInstance() {
		return instance;
	}
	public ArrayList<DogMainDTO> selectS(){
		return dao.select();
	}
	public ArrayList<DogMainDTO> searchS(String is_keyword){
		return dao.search(is_keyword);
	}
}
