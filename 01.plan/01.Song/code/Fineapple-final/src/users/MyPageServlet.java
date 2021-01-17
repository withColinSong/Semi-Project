package users;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class myPageServlet
 */
@WebServlet("/mypage/mypage")
public class MyPageServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();



		// song 

		/* 커넥션 연결 */

		BoardDao dao = new BoardDao();


		if(dao.sqlSession == null) {
			System.out.println("연결 중 오류 ..");

		}else {
			System.out.println("연결 성공");

			/* select */
			HttpSession session = request.getSession();
			String name = (String) session.getAttribute("member_mid");
			System.out.println(name);
			
			request.setAttribute("name", name);
			
			/* 마이바티스 유저 정보 검색 쿼리문 */
			List<MemberVo> list = dao.sqlSession.selectList("board.users", name);
			
			/* 핸드폰 번호 쿼리문 */
			String findPhone = dao.sqlSession.selectOne("board.findPhone", name);
			
			ServletContext app = request.getServletContext();
			
			/* 유저 객체 저장 */
			for(MemberVo vo : list) {
				MemberVo userInfo = new MemberVo();
				
				request.setAttribute("list", list);
				
				userInfo.setMember_mid(vo.getMember_mid());
				userInfo.setMember_pwd(vo.getMember_pwd());
				userInfo.setMember_name(vo.getMember_name());
				userInfo.setMember_email(vo.getMember_email());
				userInfo.setMember_phone(findPhone);
				userInfo.setMember_zipcode(vo.getMember_zipcode());
				userInfo.setMember_address(vo.getMember_address());
				
				
				request.setAttribute("userInfo", userInfo);
				request.setAttribute("pwd", vo.getMember_pwd());
				
				/* 앱에 저장 */
				app.setAttribute("Info", userInfo);
		
			}

			RequestDispatcher dis = request.getRequestDispatcher("/mypage/mypage.jsp");
			dis.forward(request, response);

		}
	}

}

