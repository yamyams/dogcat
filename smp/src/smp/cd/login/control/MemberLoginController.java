package smp.cd.login.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import smp.cd.login.model.MemberService;

@WebServlet("/mem.do")
public class MemberLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String m = request.getParameter("m");
		if(m != null) {
			m = m.trim();
			if(m.equals("join")) {
				join(request,response);
			}else if(m.equals("joinCheck")) {
				joinCheck(request,response);
			}else if(m.equals("login")) {
				login(request,response);
			}else if(m.equals("logout")) {
				response.sendRedirect("login/logout.jsp");
			}
		}else {
			response.sendRedirect("login/join.jsp");
		}
	}
	protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		if(id == null || pwd == null) {
			response.sendRedirect("login/login.jsp");
			return;
		}else if(id.equals("") || pwd.equals("")) {
			request.getSession().setAttribute("messageType", "�˸� �޼���");
			request.getSession().setAttribute("messageContent", "���̵�� ��й�ȣ ��� �Է����ּ���");
			response.sendRedirect("login/login.jsp");
			return;
		}
		MemberService service = MemberService.getInstance();
		int result = service.loginCheckS(id, pwd);
		
		if(result == 0) {
			request.getSession().setAttribute("messageType", "�˸���");
			request.getSession().setAttribute("messageContent", "�������� �ʴ� ���̵�ų� ��й�ȣ�� ���� �ʽ��ϴ�");
			response.sendRedirect("login/login.jsp");
			return;
		}else if(result == 1) {
			request.getSession().setAttribute("messageType", "ȯ���մϴ�");
			request.getSession().setAttribute("messageContent", "�α��ο� �����߽��ϴ�");
			request.getSession().setAttribute("id", id);
			response.sendRedirect("index.jsp");
			return;
		}
	}
	protected void join(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String id = request.getParameter("id");
		String pwd1 = request.getParameter("pwd1");
		String pwd2 = request.getParameter("pwd2");
		String m_name = request.getParameter("m_name");
		String m_email = request.getParameter("m_email");
		String m_phone = request.getParameter("m_phone");
		
		if(id != null || id.equals("")) {
			id = id.trim();
		}
		//���Խ� ����������----------------------------------------------------
		Pattern engNumP = Pattern.compile("^[a-zA-Z0-9]*$");
		Pattern numP = Pattern.compile("^01(?:0|1|[6-9])-(?:\\d{3}|\\d{4})-\\d{4}$");
		Pattern korP = Pattern.compile("^[��-�R]*$");
		Pattern emailP = Pattern.compile("^[a-zA-Z0-9]{5,15}+@[a-zA-Z0-9]{3,12}+.[a-z]{3}+$");
		
		Matcher idM = engNumP.matcher(id);
		Matcher pwdM = engNumP.matcher(pwd1);
		Matcher m_phoneM = numP.matcher(m_phone);
		Matcher m_nameM = korP.matcher(m_name);
		Matcher m_emailM = emailP.matcher(m_email);
		
		//�����ͺ��̽� ���� ���� ���Խ�----------------------------------------
		Pattern idDBP = Pattern.compile("^[a-zA-Z0-9]{4,15}$");
		Pattern pwdDBP = Pattern.compile("^[a-zA-Z0-9]{6,20}$");
		Pattern nameDBP = Pattern.compile("^[��-�R]{2,5}$");
		
		Matcher idDBM = idDBP.matcher(id);
		Matcher pwdDBM = pwdDBP.matcher(pwd1);
		Matcher nameDBM = nameDBP.matcher(m_name);
		
		//---------------------------------------------------------------------
		if(id == null || id.equals("") || pwd1 == null || pwd1.equals("") || pwd2 == null || pwd2.equals("") || m_name == null || m_name.equals("") ||
				m_email == null || m_email.equals("") || m_phone == null || m_phone.equals("")) {
			request.getSession().setAttribute("messageType", "Error!");
			request.getSession().setAttribute("messageContent", "��� ������ �Է����ּ���");
			response.sendRedirect("login/join.jsp");
			return;
		}
		else if(!(idM.find())) {
			request.getSession().setAttribute("messageType", "Error!");
			request.getSession().setAttribute("messageContent", "���̵�� ����,���ڸ� �����մϴ�");
			response.sendRedirect("login/join.jsp");
			return;
		}
		else if(!(idDBM.find())) {
			request.getSession().setAttribute("messageType", "Error!");
			request.getSession().setAttribute("messageContent", "���̵�� �ּ� 4���� �̻� �ִ� 15���� �����Դϴ�");
			response.sendRedirect("login/join.jsp");
			return;
		}
		else if(!(m_nameM.find())) {
			request.getSession().setAttribute("messageType", "Error!");
			request.getSession().setAttribute("messageContent", "��... Ư������? ����? ����? �̸��� �̻��� �� ���ֱ���? �ѱ۸� �Է����ּ��� ^^");
			response.sendRedirect("login/join.jsp");
			return;
		}
		else if(!(nameDBM.find())) {
			request.getSession().setAttribute("messageType", "Error!");
			request.getSession().setAttribute("messageContent", "�̸��� �ּ� 2���� �̻� �ִ� 5���� �����Դϴ�");
			response.sendRedirect("login/join.jsp");
			return;
		}
		else if(!(m_phoneM.find())) {
			request.getSession().setAttribute("messageType", "Error!");
			request.getSession().setAttribute("messageContent", "�߸��� ����ó ǥ���Դϴ�<br/><br/> �ùٸ� ��)010-0000-0000");
			response.sendRedirect("login/join.jsp");
			return;
		}
		else if(!(m_emailM.find())) {
			request.getSession().setAttribute("messageType", "Error!");
			request.getSession().setAttribute("messageContent", "�ּ����� �̸��� ������ �������...<br/><br/> ex) king12@naver.com");
			response.sendRedirect("login/join.jsp");
			return;
		}
		
		
		if(!(pwd1.equals(pwd2))) {
			request.getSession().setAttribute("messageType", "Error!");
			request.getSession().setAttribute("messageContent", "��й�ȣ�� ���� ��ġ���� �ʽ��ϴ�");
			response.sendRedirect("login/join.jsp");
			return;
		}else if(!(pwdM.find())) {
			request.getSession().setAttribute("messageType", "Error!");
			request.getSession().setAttribute("messageContent", "��й�ȣ�� ����,���ڸ� �����մϴ�");
			response.sendRedirect("login/join.jsp");
			return;
		}else if(!(pwdDBM.find())) {
			request.getSession().setAttribute("messageType", "Error!");
			request.getSession().setAttribute("messageContent", "��й�ȣ�� �ּ� 6�ڸ� �̻� 20�ڸ� �����Դϴ�");
			response.sendRedirect("login/join.jsp");
			return;
		}
		MemberService service = MemberService.getInstance();
		int result = service.joinS(id, pwd1, m_name, m_email, m_phone);
		if(result == 1) {
			request.getSession().setAttribute("messageType", "ȯ���մϴ�");
			request.getSession().setAttribute("messageContent", "ȸ�����Կ� �����߽��ϴ�");
			request.getSession().setAttribute("id", id);
			response.sendRedirect("index.jsp");
			return;
		}else {
			request.getSession().setAttribute("messageType", "Error!");
			request.getSession().setAttribute("messageContent", "�̹� �����ϴ� ȸ���Դϴ�!");
			response.sendRedirect("login/join.jsp");
			return;
		}
	}
	protected void joinCheck(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String id = request.getParameter("id");
		MemberService service = MemberService.getInstance();
		response.getWriter().write(service.joinCheckS(id) + "");
	}
}
