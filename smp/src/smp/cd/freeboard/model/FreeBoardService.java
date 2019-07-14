package smp.cd.freeboard.model;

import java.util.ArrayList;

public class FreeBoardService {
	private FreeBoardDAO dao;
	private static FreeBoardService instance = new FreeBoardService();
	FreeBoardService(){
		dao = new FreeBoardDAO();
	}
	public static FreeBoardService getInstance() {
		return instance;
	}
	public ArrayList<FreeBoardDTO> selectS(){
		return dao.select();
	}
	public FreeBoardDTO selectS2(int db_seq) {
		return dao.select2(db_seq);
	}
	public void insertS(FreeBoardDTO dto) {
		dao.insert(dto);
	}
	public FreeBoardDTO updateSS(FreeBoardDTO dto) {
		return dao.updateS(dto);
	}
	public void updateUS(FreeBoardDTO dto) {
		dao.updateU(dto);
	}
	public void deleteS(int seq) {
		dao.delete(seq);
	}
	public void readnumS(int seq) {
		dao.readnum(seq);
	}
}
