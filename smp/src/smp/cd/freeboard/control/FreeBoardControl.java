package smp.cd.freeboard.control;

import java.io.IOException; 
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import smp.cd.freeboard.model.FreeBoardDTO;
import smp.cd.freeboard.model.FreeBoardService;

@WebServlet("/board.do")
public class FreeBoardControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    HttpSession session;
      
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String m = request.getParameter("m");
		if(m != null) {
			m = m.trim();
			if(m.equals("list"))  list(request, response);
			else if(m.equals("write_form")) write_form(request, response);
			else if(m.equals("write")) write(request, response);
			else if(m.equals("update_form")) update_form(request, response);
			else if(m.equals("update")) update(request, response);
			else if(m.equals("content")) content(request, response);
			else if(m.equals("delete")) delete(request, response);
		}else {
			list(request, response);		}
	}
	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		FreeBoardService service = FreeBoardService.getInstance();
		int db_seq = Integer.parseInt(request.getParameter("db_seq"));
		service.deleteS(db_seq);
		response.sendRedirect("board.do?m=list");
	}
	private void update_form(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int db_seq = Integer.parseInt(request.getParameter("db_seq"));
		if(db_seq != -1) {
			String id = request.getParameter("id");
			String db_subject = request.getParameter("db_subject");
			String db_content = request.getParameter("db_content");
			
			FreeBoardDTO dto = new FreeBoardDTO(db_seq, id, -1, db_subject, db_content, -1, null, -1, null);
			FreeBoardService service = FreeBoardService.getInstance();
			
			FreeBoardDTO dto2 = service.updateSS(dto);
			request.setAttribute("dto", dto2);
			RequestDispatcher rd = request.getRequestDispatcher("board/up_form.jsp");
			rd.forward(request, response);
		}else {
			response.sendRedirect("board.do");
		}
	}
	private void content(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		FreeBoardService service = FreeBoardService.getInstance();
		int db_seq = Integer.parseInt(request.getParameter("db_seq"));
		service.readnumS(db_seq);
		FreeBoardDTO dto = service.selectS2(db_seq);
		request.setAttribute("dto", dto);
		RequestDispatcher rd = request.getRequestDispatcher("board/content.jsp");
		rd.forward(request, response);
	}
	private void update(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException{
		FreeBoardService service = FreeBoardService.getInstance();
		String db_subject = request.getParameter("db_subject");
		String db_content = request.getParameter("db_content");
		int db_seq = Integer.parseInt(request.getParameter("db_seq"));
		FreeBoardDTO dto = new FreeBoardDTO(db_seq, null, 0, db_subject, db_content, 0, null, 0, null);
		service.updateUS(dto);
		response.sendRedirect("board.do");
	}
	private void list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		FreeBoardService service = FreeBoardService.getInstance();
		ArrayList<FreeBoardDTO> list = service.selectS();
		request.setAttribute("list", list);
		RequestDispatcher rd = request.getRequestDispatcher("board/list.jsp");
		rd.forward(request, response);
	}
	private void write_form(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		response.sendRedirect("board/write_form.jsp");
	}
	private void write(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		//ServletContext sc = getServletContext();
		//String saveDir = sc.getRealPath("/board2/reboard");
		//int maxPostSize = 1*1028*1028;
		//String encoding = "utf-8";
		//FileRenamePolicy policy = new DefaultFileRenamePolicy();
		//MultipartRequest mr = new MultipartRequest(request, saveDir, maxPostSize, encoding, policy);
		
		//int db_seq = Integer.parseInt(request.getParameter("db_seq"));
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		String db_subject = request.getParameter("db_subject");
		String db_content = request.getParameter("db_content");
		System.out.println(db_subject);
		FreeBoardDTO dto = new FreeBoardDTO(0, id, 0, db_subject, db_content, 0, null, 0, null);		
		FreeBoardService service = FreeBoardService.getInstance();
		service.insertS(dto);
		response.sendRedirect("board.do?m=list");
	}
}
