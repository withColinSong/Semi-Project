package users;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.MemberDao;


@WebServlet("/purchase/purchase.do")
public class purchaseServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
	
		PrintWriter out = response.getWriter();
		System.out.println("doget() 실행");
		
		
		// session 객체에서 member_mid 불러오기
		HttpSession session = request.getSession();
		String name = (String) session.getAttribute("member_mid");
	
	
		// sqlSession 연결
		BoardDao dao = new BoardDao();
	
		
		// 핸드폰 번호
		String findPhone = dao.sqlSession.selectOne("board.findPhone", name);
		
		
		// 객체 생성
		MemberVo vo = new MemberVo();
		List<MemberVo> list = dao.sqlSession.selectList("board.users", name);
	
		
		for(MemberVo vo1 : list) {
			System.out.println("list : " + list);
			
			vo = vo1;
			vo.setMember_phone(findPhone);
		}
		
		request.setAttribute("vo", vo);
		System.out.println("request.setAttribute(\"vo\") : " + vo);
		
		
		
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/purchase/index.jsp");
		dispatcher.forward(request, response);
	}
	
}
