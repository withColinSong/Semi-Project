package inquirybook;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


public class FileUpload {
	public static final String saveDir = "C:\\Users\\USER\\FineApple\\Fineapple-final\\WebContent\\inquiryUpload\\";
	int maxSize = 1024*1024*100;
	String encoding = "utf-8";
	MultipartRequest mul;
	String sysFile = "";
	String oriFile = "";
	List<InquiryBookAttVo> attList = new ArrayList<>();
	
	
	public FileUpload(HttpServletRequest req) {
		try {
			mul = new MultipartRequest(req, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());
			
			Enumeration<String> en = mul.getFileNames();
			while(en.hasMoreElements()) {
				String tag = (String) en.nextElement();
				sysFile = mul.getFilesystemName(tag); // ������ ���ϸ�
				oriFile = mul.getOriginalFileName(tag); // ���� ���ϸ�
				if(oriFile == null) {
					continue;
				}
				InquiryBookAttVo attVo = new InquiryBookAttVo();
				attVo.setSysFile(sysFile);
				attVo.setOriFile(oriFile);
				attList.add(attVo);
			}
			
			
		} catch (Exception e) {
			System.out.println("FileUpload ����");
			e.printStackTrace();
		}
	}
	
	public InquiryBookVo getInquiryBookVo(char mode) {
		InquiryBookVo vo = new InquiryBookVo();
		int pserial = Integer.parseInt(mul.getParameter("pserial"));
		int serial = Integer.parseInt(mul.getParameter("serial"));
		int hit = Integer.parseInt(mul.getParameter("hit"));
		
		vo.setSerial(serial);
		vo.setInquiryType(mul.getParameter("inquiryType"));
		vo.setMemberName(mul.getParameter("name"));
		vo.setPwd(mul.getParameter("pwd"));
		vo.setSubject(mul.getParameter("subject"));
		vo.setDoc(mul.getParameter("doc"));
		vo.setDocVisible(mul.getParameter("docvisible"));
		vo.setPserial(pserial);
		vo.setHit(hit);
		vo.setMserial(Integer.parseInt(mul.getParameter("mserial")));
		
		if(mul.getParameter("serial") != null) {
			vo.setPserial(Integer.parseInt(mul.getParameter("serial")));
		}
		if(mul.getParameter("hit") != null) {
			vo.setHit(Integer.parseInt(mul.getParameter("hit")));
		}	
		if(attList.size() > 0) {
			vo.setAttList(attList);
		}

		if(mode == 'u' || mode == 'd') {
			vo.setSerial(Integer.parseInt(mul.getParameter("serial")));
			if(mul.getParameterValues("delFiles") != null) {
				List<InquiryBookAttVo> delFiles = new ArrayList<>();
				for(String s : mul.getParameterValues("delFiles")) {
					InquiryBookAttVo v = new InquiryBookAttVo();
					v.setSysFile(s);
					delFiles.add(v);
				}
				vo.setDelFiles(delFiles);
			}
		}
		
		return vo;
	}
	
	public CsPage getPage() {
		CsPage page = new CsPage(); 
		if(mul.getParameter("findStr") != null) {
			page.setFindStr(mul.getParameter("findStr"));
		}
		if((mul.getParameter("nowPage")) != null && !mul.getParameter("nowPage").equals("")) {
			int nowPage = Integer.parseInt(mul.getParameter("nowPage"));
			page.setNowPage(nowPage);
		}
		else {
			page.setNowPage(1);
		}
		return page;
	}

}
