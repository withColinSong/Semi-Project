package users;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;

/**
 * Servlet implementation class memberServlet
 */
@WebServlet("/UsersJoin/result.jsp")
public class memberServlet extends HttpServlet {


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Hello");


	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("UTF-8");
		
		System.out.println("Hello");

		PrintWriter out = response.getWriter();
		out.println("hello");

		String mid = request.getParameter("frm-id");
		String pwd = request.getParameter("frm-password");
		String name = request.getParameter("frm-name");
		String email = request.getParameter("frm-email");
		String phone = request.getParameter("frm-phone");
		String zipcode = request.getParameter("zipcode");
		String address = request.getParameter("address");
		

	
		out.printf("%s, %s, %s", mid, pwd, name);


		BoardDao dao = new BoardDao();


		if(dao.sqlSession == null) {
			System.out.println("연결 중 오류 ..");
		}else {
			System.out.println("연결 성공!");

			MemberVo vo = new MemberVo();
			
			vo.setMid(mid);
			vo.setPwd(pwd);
			vo.setName(name);
			vo.setEmail(email);
			vo.setPhone(phone);
			vo.setZipcode(zipcode);
			vo.setAddress(address);


			int cnt = dao.sqlSession.insert("board.insert", vo);
			System.out.println("vo : " + vo);
			if( cnt > 0 ) {
				System.out.println("INSERT : " + vo);
				dao.sqlSession.commit();
			}else {
				System.out.println("Insert 오류");
			}

			dao.sqlSession.close();
		}

		System.out.println("dao : " + dao);
		out.printf("%s, %s, %s", mid, pwd, name);

	}

}
