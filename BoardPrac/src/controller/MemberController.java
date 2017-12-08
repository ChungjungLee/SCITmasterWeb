package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;
import vo.Member;

@WebServlet("/member")
public class MemberController extends HttpServlet {
	
	MemberDAO dao = new MemberDAO();
	
	protected void doGet(
			HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		
		String action = request.getParameter("action");
		
		if (action == null) {
			return;
		}
		
		if (action.equals("loginhome")) {
			/* 로그인 홈 화면으로 이동 */
			request.getRequestDispatcher("jsp/loginHome.jsp").forward(request, response);
			
		} else if (action.equals("joinhome")) {
			/* 회원가입 화면으로 이동 */
			request.getRequestDispatcher("jsp/memberJoin.jsp").forward(request, response);
			
		} else if (action.equals("login")) {
			/* 로그인 시도 */
			
		} else if (action.equals("join")) {
			/* 회원가입 시도*/
			System.out.println("enter join in member servlet");
			
			String name = request.getParameter("name");
			String id = request.getParameter("id");
			String password = request.getParameter("password");
			String[] emailList = request.getParameterValues("email");
			String[] addressList = request.getParameterValues("address");
			String[] phonenumList = request.getParameterValues("phonenum");
			String carrier = request.getParameter("carrier");
			String[] telnumList = request.getParameterValues("telnum");
			
			// 제대로 넘어온 값이 없는지 확인
			// TODO: 여러 input이 하나의 input을 이루고 있을 때 각자에 name을 다르게 주는 것이 나은지?
			if (name == null || id == null || password == null || 
				emailList == null || addressList == null || 
				phonenumList == null || carrier == null || 
				telnumList == null) {
				response.sendRedirect("./");
				return;
			}
			
			String email = "";
			for (int i = 0; i < emailList.length; i++) {
				email += emailList[i];
			}
			String address = "";
			for (int i = 0; i < addressList.length; i++) {
				address += addressList[i];
			}
			String phonenum = "";
			for (int i = 0; i < phonenumList.length; i++) {
				phonenum += phonenumList[i];
			}
			String telnum = "";
			for (int i = 0; i < telnumList.length; i++) {
				telnum += telnumList[i];
			}
			
			Member member = new Member(name, id, password, email, 
					address, phonenum, carrier, telnum);
			
			dao.joinMember(member);
			
			response.sendRedirect("./");
			
		} else if (action.equals("idDuplicate")) {
			String id = request.getParameter("id");
			
			if (id == null) {
				response.sendRedirect("./");
				return;
			}
			
			Member member = dao.getMember(id);
			
			request.setAttribute("checked", true);
			
			if (member != null) {
				request.setAttribute("canUse", false);
			} else {
				request.setAttribute("canUse", true);
			}
			
			request.getRequestDispatcher("jsp/idCheck.jsp").forward(request, response);
			
		}
		
	}

	protected void doPost(
			HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		doGet(request, response);
	}
	

}





























