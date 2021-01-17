package admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import product.ProductVo;

@WebServlet(urlPatterns = "/admin.do")
public class AdminIndexServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		String job = req.getParameter("job");
		
		RequestDispatcher rd = null;
		
		int nowPage = 1;
		String findStr = "";
		AdminPage page = new AdminPage();
		AdminDao dao = new AdminDao();
		
		if(req.getParameter("nowPage") != null) {
			nowPage = Integer.parseInt(req.getParameter("nowPage"));
		}
		
		switch(job) {
			case "productSelect": 
				page.setNowPage(nowPage);
				Map<String, Object> map = dao.select(page);
				
				
				List<ProductVo> list = (List<ProductVo>) map.get("list");
				page = (AdminPage) map.get("page");
				
				req.setAttribute("list", list);
				req.setAttribute("page", page);
				
				rd = req.getRequestDispatcher("./admin/admin_product.jsp");
				rd.forward(req, resp);
				break;
		}
		
	}

	
		
}
