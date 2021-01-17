package inquirybook;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;


@WebServlet(urlPatterns = "/inquiry.do")
public class InquiryBookServlet extends HttpServlet {
	String url = "/cs/cs_func_page.jsp?func=../cs_center/";
	InquiryBookDao dao;
	CsPage page;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	}

	@Override
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		String job = req.getParameter("job");

		int nowPage = 1;
		String findStr = "";
		String msg = "";
		String findType = "";
		int serial = 0;
		RequestDispatcher rd = null;
		dao = new InquiryBookDao();
		page = new CsPage();
		InquiryBookVo vo;
		FileUpload fu;
		
		
		
		if(req.getParameter("nowPage") != null) {
			nowPage = Integer.parseInt(req.getParameter("nowPage"));
		}
		if(req.getParameter("findStr") != null) {
			findStr = req.getParameter("findStr");
		}
		if(req.getParameter("findType") != null) {
			findType = req.getParameter("findType");
		}		
		
		System.out.println(findType);
		page.setFindType(findType);
		page.setNowPage(nowPage);
		page.setFindStr(findStr);
		
		switch(job) {
		case "insertR": 
			fu = new FileUpload(req);
			vo = new InquiryBookVo(); 
			vo = fu.getInquiryBookVo('i');
			page = fu.getPage();
			msg = dao.insert(vo);
			
			req.setAttribute("msg", msg);
			req.setAttribute("page", page);
			
			rd = req.getRequestDispatcher("inquiry.do?job=select");
			rd.forward(req, resp);
			break;
		
		case "select":
			Map<String, Object> map = dao.select(page);
			
			List<InquiryBookVo> list = (List<InquiryBookVo>) map.get("list");
			page = (CsPage) map.get("page");
			
			req.setAttribute("list", list);
			req.setAttribute("page", page);
			rd = req.getRequestDispatcher("./cs_center/cs_func_page.jsp?func=cs_board.jsp");
			rd.forward(req, resp);

			break;
			
		case "view" :
			serial = Integer.parseInt(req.getParameter("serial"));
			int hit = Integer.parseInt(req.getParameter("hit"));
			vo = new InquiryBookVo(); 
			InquiryHitVo vo2 = new InquiryHitVo();
			int hitup = hit + 1;
			vo2.setHit(hitup);
			vo2.setSerial(serial);
			msg = dao.updateHit(vo2);
			vo = dao.view(serial);
			req.setAttribute("vo", vo);
			req.setAttribute("page", page);
			rd = req.getRequestDispatcher("./cs_center/cs_func_page.jsp?func=cs_view.jsp");
			rd.forward(req, resp);
			break;
			
		case "update": 
			serial = Integer.parseInt(req.getParameter("serial"));
			vo = new InquiryBookVo(); 
			vo = dao.view(serial);
			
			req.setAttribute("vo", vo);
			req.setAttribute("page", page);
			rd = req.getRequestDispatcher("./cs_center/cs_func_page.jsp?func=cs_update.jsp");
			rd.forward(req, resp);
			break;
			
		case "Aupdate": 
			serial = Integer.parseInt(req.getParameter("serial"));
			System.out.println(serial);
			vo = new InquiryBookVo(); 
			vo = dao.view(serial);
			
			req.setAttribute("vo", vo);
			System.out.println(vo.getAttList());
			req.setAttribute("page", page);
			rd = req.getRequestDispatcher("./cs_center/cs_func_page.jsp?func=cs_answer_update.jsp");
			rd.forward(req, resp);
			break;
			
		case "updateR":
			System.err.println("답변 수정중");
			fu = new FileUpload(req);
			vo = fu.getInquiryBookVo('u');
			page = fu.getPage();
			msg = dao.update(vo);
			
			req.setAttribute("msg", msg);
			req.setAttribute("page", page);
			
			rd = req.getRequestDispatcher("inquiry.do?job=select");
			rd.forward(req, resp);
			break;
			
		case "delete":
			vo = new InquiryBookVo(); 
			vo.setSerial(Integer.parseInt(req.getParameter("serial")));
			vo.setPwd(req.getParameter("pwd"));
			
			if(req.getParameter("delFiles") != null) {
				List<InquiryBookAttVo> delFiles = new ArrayList<>();
				for(String s : req.getParameterValues("delFiles")) {
					InquiryBookAttVo v = new InquiryBookAttVo();
					v.setSysFile(s);
					delFiles.add(v);
				}
				vo.setDelFiles(delFiles);
			}
			msg = dao.delete(vo);
			
			req.setAttribute("page", page);
			req.setAttribute("msg", msg);
			rd = req.getRequestDispatcher("inquiry.do?job=select");
			rd.forward(req, resp);
			break;
		
		case "insertA": 
			fu = new FileUpload(req);
			vo = new InquiryBookVo();
			vo = fu.getInquiryBookVo('i');
			
			msg = dao.insertA(vo);
			
			
			req.setAttribute("msg", msg);
			req.setAttribute("page", page);
			
			rd = req.getRequestDispatcher("inquiry.do?job=select");
			rd.forward(req, resp);
			
			break;
		}
	}
}

















