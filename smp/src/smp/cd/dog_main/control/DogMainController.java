package smp.cd.dog_main.control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import smp.cd.dog_main.model.DogMainDTO;
import smp.cd.dog_main.model.DogMainService;

@WebServlet("/dmc.do")
public class DogMainController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String m = request.getParameter("m");
		String is_keyword = request.getParameter("is_keyword");
		if(m != null) {
			m = m.trim();
			if(m.equals("pacel")) {
				pacelOut(request,response);
			}else if(m.equals("backg")) {
				response.sendRedirect("view/backg_dog.jsp");
			}
		}else {
			if(is_keyword != null) {
				is_keyword = is_keyword.trim();
				searchList(request,response,is_keyword);
			}else {
				introduce(request,response);
			}
		}
	}
	private void introduce(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		DogMainService service = DogMainService.getInstance();
		ArrayList<DogMainDTO> list = service.selectS();
		request.setAttribute("list", list);
		RequestDispatcher rd = request.getRequestDispatcher("main/dog_main.jsp");
		rd.forward(request,response);
	}
	private void searchList(HttpServletRequest request, HttpServletResponse response, String is_keyword) throws ServletException, IOException{
		DogMainService service = DogMainService.getInstance();
		ArrayList<DogMainDTO> list = service.searchS(is_keyword);
		request.setAttribute("list", list);
		RequestDispatcher rd = request.getRequestDispatcher("main/dog_main.jsp");
		rd.forward(request,response);
	}
	
	
	private void pacelOut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		RequestDispatcher rd = request.getRequestDispatcher("pacel/dog_pacel.jsp");
		rd.forward(request,response);
	}
}
