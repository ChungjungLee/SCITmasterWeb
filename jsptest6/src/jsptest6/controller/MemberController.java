package jsptest6.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jsptest6.dao.MemberDAO;
import jsptest6.vo.Member;

@WebServlet("/member")
public class MemberController extends HttpServlet {
	// servlet 객체는 프로그램(프로젝트)이 종료되기 전까지는 계속 살아있다고 함
	
	private MemberDAO memberDao = new MemberDAO();
	
	protected void doGet(
			HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		
		/* action 이라는 parameter에 따라 다른 행동 */
		String action = request.getParameter("action");
		
		if (action == null) {
			//System.out.println("뭘 하라고?");
			return;
		}
		
		/* 주소를 유저에게 보여주고 싶지 않다면 sendRedirect가 아니라 forward를 통해 jsp페이지로 보낸다 */
		if (action.equals("joinForm")) {
			/* 가입 폼으로 이동 */
			request.getRequestDispatcher("joinForm.jsp")
					.forward(request, response);
			//response.sendRedirect("joinForm.jsp");
			
		} else if (action.equals("join")) {
			/* 가입 관련 실행 */
			String id = request.getParameter("id");
			String password = request.getParameter("password");
			String name = request.getParameter("name");
			String phone = request.getParameter("phone");
			String address = request.getParameter("address");
			Member member = new Member(id, password, name, phone, address);
			
			memberDao.insertMember(member);
			
			// 현재 본인 폴더로 가겠습니다 -> ./
			// 본인 폴더를 가리키는 기호 -> .
			response.sendRedirect("./");
			
		} else if (action.equals("loginForm")) {
			/* 로그인 폼으로 이동 */
			request.getRequestDispatcher("loginForm.jsp").forward(request, response);
			
		} else if (action.equals("login")) {
			/* 로그인 처리 */
			String id = request.getParameter("id");
			String password = request.getParameter("password");
			
			Member member = memberDao.selectMember(id);
			
			if (member == null) {
				response.sendRedirect("./");
				// 실제로 리다이렉트만 한다고 끝나지 않기 때문에 return이 필요
				return;
			} 
			
			if (!password.equals(member.getPassword())) {
				// 사용자에게 틀림을 보여줌
				
				// 밑의 방식은 서블릿을 통해 html 만드는 방법임
				PrintWriter out = response.getWriter();
				out.println("<html><script>");
				out.println("alert('비밀번호가 틀립니다')");
				out.println("location.href='./';");
				out.println("</script></html>");
				return;
				
			} 
			
			// 로그인 기능
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			session.setAttribute("username", member.getName());
			
			/* 로그인 후 index로 이동 */
			//request.getRequestDispatcher("index.jsp").forward(request, response);
			response.sendRedirect("./");
			
		} else if (action.equals("logout")) {
			
			// 요청한 곳의 세션을 취득
			HttpSession session = request.getSession();
			// 세션 내의 모든 정보가 날아간다.
			session.invalidate();
			
			// 세션 내 특정 attribute만 삭제
			// session.removeAttribute(name);
			
			response.sendRedirect("./");
			
		} else if (action.equals("updateForm")) {
			/* 수정폼으로 이동*/
			
			// 세션으로부터 아이디 얻기
			HttpSession session = request.getSession();
			
			// 아이디가 없으면 index로 보내기
			String id = (String) session.getAttribute("id");
			if (id == null) {
				response.sendRedirect("./");
				return;
			}
			
			// db로부터 사용자 얻기
			Member member = memberDao.selectMember(id);
			
			// 사용자 존재하지 않으면 index로 보내기
			if (member == null) {
				response.sendRedirect("./");
				return;
			}
			
			// 존재하면 request 통해 폼으로 보내기
			request.setAttribute("member", member);
			
			request.getRequestDispatcher("updateForm.jsp").forward(request, response);
			
		} else if (action.equals("update")) {
			/* 수정 */
			HttpSession session = request.getSession();
			String id = (String) session.getAttribute("id");
			
			if (id == null) {
				response.sendRedirect("./");
				return;
			}
			
			String password = request.getParameter("password");
			String name = request.getParameter("name");
			String phone = request.getParameter("phone");
			String address = request.getParameter("address");
			
			Member member = new Member(id, password, name, phone, address);
			
			memberDao.updateMember(member);
			
			response.sendRedirect("./");
			
		} else if (action.equals("checkId")) {
			String id = request.getParameter("id");
			
			if (id == null) {
				response.sendRedirect("./");
				return;
			}
			
			Member member = memberDao.selectMember(id);
			
			// check를 했는지의 여부를 회원가입 페이지에 넘겨주려고
			request.setAttribute("check", true);
			
			if (member == null) {
				request.setAttribute("duplicated", false);
			} else {
				request.setAttribute("duplicated", true);
			}
			
			request.getRequestDispatcher("checkId.jsp").forward(request, response);
			
		}
		
	} // doGet()

	protected void doPost(
			HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		
		// 어떤 POST 요청이 오더라도 GET으로 동작시키도록 하겠다
		doGet(request, response);
	}

}

