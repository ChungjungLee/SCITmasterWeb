package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/* /posttest라고 하면 WebContent 폴더 밑에 posttest가 있는 것과 마찬가지
 * 만약에 /jsp/posttest라고 하면 WebContent-jsp 폴더에 생성
 */
@WebServlet("/posttest")
public class PostController extends HttpServlet {
	protected void doPost(
			HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		// submit해서 넘어온 값들은 getParam()으로 받아준다.
		String str = request.getParameter("str");
		String num = request.getParameter("num");
		
		int inum = 0;
		try {
			inum = Integer.parseInt(num);
		} catch (Exception e) {
			// no body
		}
		
		// radio button의 값은 하나만 존재하기 때문에 getParam()으로 받을 수 있다.
		String ra = request.getParameter("ra");
		
		// check box는 여러개 존재할 수 있어 getParam()으로 받을 수 없다.
		String[] ch = request.getParameterValues("ch");
		
		System.out.println("---POST TEST---");
		System.out.println("str: " + str);
		System.out.println("num: " + inum);
		System.out.println("ra: " + ra);
		for (String ch1 : ch) {
			System.out.print(ch1 + ", ");
		}
		System.out.println();
		
		// forward가 아닌 다른 방법으로 페이지 넘기기
		response.sendRedirect("index.jsp");
	}

}





















