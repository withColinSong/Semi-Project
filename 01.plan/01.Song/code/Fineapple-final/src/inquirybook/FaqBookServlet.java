package inquirybook;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.CsPage;


//요청값을 받는 url정의?
@WebServlet(urlPatterns = "/faqbook.do")
public class FaqBookServlet extends HttpServlet {
	InquiryBookDao dao = new InquiryBookDao();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		String qa = req.getParameter("qa");
		
		RequestDispatcher rd = null;
		
		//Page 초기 값 설정
		int nowPage = 1;
		String findStr = "";
		
		//변수 선언
		InquiryBookVo vo = new InquiryBookVo();
		CsPage page;
		
		//btn 별 기능 선언
		switch(qa) {
		case "selectFaq":
			
			List<FaqBookVo> list;
			if(req.getParameter("findStr") != null) {
				findStr = req.getParameter("findStr");
			}
			
			list = new FaqBookDao().select(findStr);
			
			req.setAttribute("list", list);
			rd = req.getRequestDispatcher("./cs_center/cs_func_page.jsp?func=cs_FAQ.jsp");
			rd.forward(req, resp);
			break;
		case "insert":
			FaqBookVo faqvo = new FaqBookVo();
			String doc = req.getParameter("doc");
			String subject = req.getParameter("subject");
			String docType = req.getParameter("inquiryType");
			
			faqvo.setSubject(subject);
			faqvo.setDoc(doc);
			faqvo.setDocType(docType);
			FaqBookDao faqDao = new FaqBookDao();
			
			faqDao.insert(faqvo);

			rd = req.getRequestDispatcher("/faqbook.do?qa=selectFaq");
			rd.forward(req, resp);
			break;
		}
	}
}
















