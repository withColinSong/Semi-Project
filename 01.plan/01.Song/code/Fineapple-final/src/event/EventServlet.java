package event;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.NoticePage;

@WebServlet(urlPatterns = "/event.do")
public class EventServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		String event = req.getParameter("event");

		EventDao dao = new EventDao();
		EventVo vo;
		
		RequestDispatcher rd = null;
		String msg;
		String findStr = "";
		int nowPage = 1;
		
		switch(event) {
		
		case "insert":
			break;
			
		case "select":
			
			break;
		case "view":
			
			break;
		}
	}

	
}
