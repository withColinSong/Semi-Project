package event;


import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import event.EventVo;
import bean.CsPage;

public class ev_FileUpload {
	public static final String saveDir = "C:\\Users\\wotjd\\git\\jquery\\kh-web-20201202\\WebContent\\upload\\";
	int maxSize = 1024*1024*100;//100Mb;
	String encoding = "utf-8";
	MultipartRequest mul;
	String sysFile = "";
	String oriFile = "";
	
	public ev_FileUpload(HttpServletRequest req) {
		try {
			mul = new MultipartRequest(req,saveDir,maxSize, encoding, new DefaultFileRenamePolicy());
			//업로드된 파일명
			Enumeration<String> en = mul.getFileNames();
			while(en.hasMoreElements()) {
				String tag = (String)en.nextElement();
				sysFile = mul.getFilesystemName(tag); // 수정된 파일명
				oriFile = mul.getOriginalFileName(tag); //원본 파일명
			}
			
			
		}catch(Exception ex) {
			
		}
	}
	
	public EventVo getMember() {
		EventVo vo = new EventVo();
		vo.setMdate(mul.getParameter("mdate"));
		vo.setMid(mul.getParameter("mid"));
		vo.setPwd(mul.getParameter("pwd"));
		vo.setDoc(mul.getParameter("doc"));
		vo.setSubject(mul.getParameter("subject"));
		vo.setHit(Integer.parseInt(mul.getParameter("hit")));
		vo.setPhoto(sysFile);
		vo.setDelFile(mul.getParameter("delFile"));
		
		return vo;
	}
	

	
	
}