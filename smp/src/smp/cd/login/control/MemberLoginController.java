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
			request.getSession().setAttribute("messageType", "알림 메세지");
			request.getSession().setAttribute("messageContent", "아이디와 비밀번호 모두 입력해주세요");
			response.sendRedirect("login/login.jsp");
			return;
		}
		MemberService service = MemberService.getInstance();
		int result = service.loginCheckS(id, pwd);
		
		if(result == 0) {
			request.getSession().setAttribute("messageType", "알리미");
			request.getSession().setAttribute("messageContent", "존재하지 않는 아이디거나 비밀번호가 맞지 않습니다");
			response.sendRedirect("login/login.jsp");
			return;
		}else if(result == 1) {
			request.getSession().setAttribute("messageType", "환영합니다");
			request.getSession().setAttribute("messageContent", "로그인에 성공했습니다");
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
		//정규식 지역변수들----------------------------------------------------
		Pattern engNumP = Pattern.compile("^[a-zA-Z0-9]*$");
		Pattern numP = Pattern.compile("^01(?:0|1|[6-9])-(?:\\d{3}|\\d{4})-\\d{4}$");
		Pattern korP = Pattern.compile("^[가-힣]*$");
		Pattern emailP = Pattern.compile("^[a-zA-Z0-9]{5,15}+@[a-zA-Z0-9]{3,12}+.[a-z]{3}+$");
		
		Matcher idM = engNumP.matcher(id);
		Matcher pwdM = engNumP.matcher(pwd1);
		Matcher m_phoneM = numP.matcher(m_phone);
		Matcher m_nameM = korP.matcher(m_name);
		Matcher m_emailM = emailP.matcher(m_email);
		
		//데이터베이스 오류 방지 정규식----------------------------------------
		Pattern idDBP = Pattern.compile("^[a-zA-Z0-9]{4,15}$");
		Pattern pwdDBP = Pattern.compile("^[a-zA-Z0-9]{6,20}$");
		Pattern nameDBP = Pattern.compile("^[가-힣]{2,5}$");
		
		Matcher idDBM = idDBP.matcher(id);
		Matcher pwdDBM = pwdDBP.matcher(pwd1);
		Matcher nameDBM = nameDBP.matcher(m_name);
		
		//---------------------------------------------------------------------
		if(id == null || id.equals("") || pwd1 == null || pwd1.equals("") || pwd2 == null || pwd2.equals("") || m_name == null || m_name.equals("") ||
				m_email == null || m_email.equals("") || m_phone == null || m_phone.equals("")) {
			request.getSession().setAttribute("messageType", "Error!");
			request.getSession().setAttribute("messageContent", "모든 내용을 입력해주세요");
			response.sendRedirect("login/join.jsp");
			return;
		}
		else if(!(idM.find())) {
			request.getSession().setAttribute("messageType", "Error!");
			request.getSession().setAttribute("messageContent", "아이디는 영문,숫자만 가능합니다");
			response.sendRedirect("login/join.jsp");
			return;
		}
		else if(!(idDBM.find())) {
			request.getSession().setAttribute("messageType", "Error!");
			request.getSession().setAttribute("messageContent", "아이디는 최소 4글자 이상 최대 15글자 이하입니다");
			response.sendRedirect("login/join.jsp");
			return;
		}
		else if(!(m_nameM.find())) {
			request.getSession().setAttribute("messageType", "Error!");
			request.getSession().setAttribute("messageContent", "음... 특수문자? 영문? 숫자? 이름에 이상한 게 들어가있군요? 한글만 입력해주세요 ^^");
			response.sendRedirect("login/join.jsp");
			return;
		}
		else if(!(nameDBM.find())) {
			request.getSession().setAttribute("messageType", "Error!");
			request.getSession().setAttribute("messageContent", "이름은 최소 2글자 이상 최대 5글자 이하입니다");
			response.sendRedirect("login/join.jsp");
			return;
		}
		else if(!(m_phoneM.find())) {
			request.getSession().setAttribute("messageType", "Error!");
			request.getSession().setAttribute("messageContent", "잘못된 연락처 표기입니다<br/><br/> 올바른 예)010-0000-0000");
			response.sendRedirect("login/join.jsp");
			return;
		}
		else if(!(m_emailM.find())) {
			request.getSession().setAttribute("messageType", "Error!");
			request.getSession().setAttribute("messageContent", "최소한의 이메일 형식은 갖춰야죠...<br/><br/> ex) king12@naver.com");
			response.sendRedirect("login/join.jsp");
			return;
		}
		
		
		if(!(pwd1.equals(pwd2))) {
			request.getSession().setAttribute("messageType", "Error!");
			request.getSession().setAttribute("messageContent", "비밀번호가 서로 일치하지 않습니다");
			response.sendRedirect("login/join.jsp");
			return;
		}else if(!(pwdM.find())) {
			request.getSession().setAttribute("messageType", "Error!");
			request.getSession().setAttribute("messageContent", "비밀번호는 영문,숫자만 가능합니다");
			response.sendRedirect("login/join.jsp");
			return;
		}else if(!(pwdDBM.find())) {
			request.getSession().setAttribute("messageType", "Error!");
			request.getSession().setAttribute("messageContent", "비밀번호는 최소 6자리 이상 20자리 이하입니다");
			response.sendRedirect("login/join.jsp");
			return;
		}
		MemberService service = MemberService.getInstance();
		int result = service.joinS(id, pwd1, m_name, m_email, m_phone);
		if(result == 1) {
			request.getSession().setAttribute("messageType", "환영합니다");
			request.getSession().setAttribute("messageContent", "회원가입에 성공했습니다");
			request.getSession().setAttribute("id", id);
			response.sendRedirect("index.jsp");
			return;
		}else {
			request.getSession().setAttribute("messageType", "Error!");
			request.getSession().setAttribute("messageContent", "이미 존재하는 회원입니다!");
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
