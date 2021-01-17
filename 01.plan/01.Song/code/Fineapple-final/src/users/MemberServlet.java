package users;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;

import jdk.jshell.SourceCodeAnalysis.Completeness;

/**
 * Servlet implementation class memberServlet
 */
@WebServlet("/UsersJoin/result")
public class MemberServlet extends HttpServlet {


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();


		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();

		
		System.out.println("doPost() 실행");

		String mid = request.getParameter("frm_id");
		String pwd = request.getParameter("frm_password");
		String name = request.getParameter("frm_name");
		String email = request.getParameter("frm_email");
		String phone = request.getParameter("frm_phone");
		String zipcode = request.getParameter("zipcode");
		String address = request.getParameter("address");
		String[] phoneFirst = request.getParameterValues("phone_first");

		/* 아이디 체크 */

		BoardDao dao = new BoardDao();

		if(dao.sqlSession == null) {
			System.out.println("연결 중 오류 ..");

		}else {

			System.out.println("연결 성공!");

			/* 중복체크 */
			MemberVo vo = new MemberVo();
		

			/* insert */
			vo.setMember_mid(mid);
			System.out.println(mid);
			vo.setMember_pwd(pwd);
			vo.setMember_name(name);
			vo.setMember_email(email);

			// 010, 017 유효검사
			if(phoneFirst[0].equals("010")) {
				vo.setMember_phone(phoneFirst[0] +"-"+ phone);
			}else {
				vo.setMember_phone(phoneFirst[1] +"-"+ phone);
			}

			vo.setMember_zipcode(zipcode);
			vo.setMember_address(address);

			int cnt = dao.sqlSession.insert("board.insert", vo);
			System.out.println("vo : " + vo);

			if( cnt > 0 ) {
				System.out.println("INSERT : " + vo);
				dao.sqlSession.commit();

			}else {
				System.out.println("Insert 오류");
				dao.sqlSession.rollback();
			}

		} //else {

		
		response.sendRedirect("/Fineapple-final/UsersJoin/complete.jsp");
		

	}


}
