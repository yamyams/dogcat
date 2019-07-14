package smp.cd.dog_goods.control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import smp.cd.dog_goods.model.DogGoodsDTO;
import smp.cd.dog_goods.model.DogGoodsService;

@WebServlet("/dgc.do")
public class DogGoodsControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String m = request.getParameter("m");
		String is_keyword = request.getParameter("is_keyword");
		if(m!=null) {
			m = m.trim();
			if(m.equals("goods")) {
				goods(request,response);
			}else if(m.equals("wirte_form")) {
				response.sendRedirect("goods/write_form.jsp");
			}else if(m.equals("write")) {
				write(request,response);
			}else if(m.equals("info")) {
				info(request,response);
			}else if(m.equals("delete")) {
				delete(request,response);
			}
		}else {
			if(is_keyword != null) {
				is_keyword = is_keyword.trim();
				search(request,response,is_keyword);
			}else {
				goods(request,response);
			}
		}
	}
	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dg_seqStr = request.getParameter("dg_seq");
		int dg_seq = Integer.parseInt(dg_seqStr);
		DogGoodsService service = DogGoodsService.getInstance();
		service.deleteS(dg_seq);
		response.sendRedirect("dgc.do");
	}
	private void info(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dg_seqStr = request.getParameter("dg_seq");
		int dg_seq = Integer.parseInt(dg_seqStr);
		
		DogGoodsService service = DogGoodsService.getInstance();
		service.UpdateReadCntS(dg_seq);
		DogGoodsDTO info = service.infoS(dg_seq);
		if(request.getSession() != null) {
			HttpSession session = request.getSession();
			String idCheck = null;
			if(session.getAttribute("id") != null){
				idCheck = (String)session.getAttribute("id");
			}
			if(idCheck != null) {
				if(idCheck.equals(info.getId())) {	//아이디 체크해서 삭제버튼 유무 판단
					request.setAttribute("remove", "remove");
				}
			}
		}
		request.setAttribute("info", info);
		RequestDispatcher rd = request.getRequestDispatcher("goods/dog_goods.jsp");	//따로 새창을 만들지 않고 곧바로 PET GOODS 화면에 작업한다
		rd.forward(request, response);
	}
	
	private void goods(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DogGoodsService service = DogGoodsService.getInstance();
		ArrayList<DogGoodsDTO> list = service.selectS();
		request.setAttribute("list", list);
		RequestDispatcher rd = request.getRequestDispatcher("goods/dog_goods.jsp");
		rd.forward(request, response);
	}
	private void search(HttpServletRequest request, HttpServletResponse response, String is_keyword) throws ServletException, IOException {
		DogGoodsService service = DogGoodsService.getInstance();
		ArrayList<DogGoodsDTO> list = service.searchS(is_keyword);
		request.setAttribute("list", list);
		RequestDispatcher rd = request.getRequestDispatcher("goods/dog_goods.jsp");
		rd.forward(request, response);
	}
	private void write(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String dg_subject = request.getParameter("dg_subject");
		String dg_content = request.getParameter("dg_content");
		if(dg_subject == null || dg_content == null) {
			response.sendRedirect("goods/write_form.jsp");
			return;
		}else if(dg_subject.equals("") || dg_content.equals("")){
			request.getSession().setAttribute("messageType", "알리미");
			request.getSession().setAttribute("messageContent", "아니... 공백으로 쓸거면 뭐하러 글 쓰나요?");
			response.sendRedirect("goods/write_form.jsp");
			return;
		}
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		
		DogGoodsService service = DogGoodsService.getInstance();
		service.writeS(id, dg_subject, dg_content);
		response.sendRedirect("dgc.do");
	}
}
