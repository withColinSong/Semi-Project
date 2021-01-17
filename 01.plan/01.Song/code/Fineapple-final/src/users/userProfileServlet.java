package users;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;
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
 * Servlet implementation class userProfileServlet
 */
@WebServlet("/userProfileServlet.do")
public class userProfileServlet extends HttpServlet {

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();	
		out.println("get테스트");
		
		BoardDao dao = new BoardDao();
		
		if(dao.sqlSession == null) {
			out.print("연결 중 오류");
		}else {
			out.print("돼!");
			
			HttpSession session = request.getSession();
			String name = (String) session.getAttribute("member_mid");
			
			
			MemberVo vo = new MemberVo();
			
			String song = request.getParameter("frm_phone");
			String song_ = "010-" + song;
			System.out.println("song :" + song_);

			
			vo.setMember_mid(request.getParameter("frm-id"));
			vo.setMember_pwd(request.getParameter("re_frm_password"));
			vo.setMember_name(request.getParameter("frm-name"));
			vo.setMember_email(request.getParameter("frm-email"));
			vo.setMember_phone(song_);
			vo.setMember_zipcode(request.getParameter("zipcode"));
			vo.setMember_address(request.getParameter("address"));
			
			System.out.println(vo);
			
			/* 유저 객체 저장 */
			ServletContext app = request.getServletContext();
			
			int update = dao.sqlSession.update("board.up_profile", vo);
			

			
			if(update > 0) {
				System.out.println(update);
				dao.sqlSession.commit();
				System.out.println("커밋됨");
			}else {
				System.out.println("UPDATE 오류");
				dao.sqlSession.rollback();
			}
			
			response.sendRedirect("/Fineapple-final/mypage/mypage");
		}
		
		
	}

}
