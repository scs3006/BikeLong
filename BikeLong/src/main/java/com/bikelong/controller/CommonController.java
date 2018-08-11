package com.bikelong.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CommonController {
	
	@RequestMapping(value = "multiuploadimage.action", method = RequestMethod.POST)
	@ResponseBody
	public String uploadMultipleImage(HttpServletRequest req) {
		
		String sFileInfo = "";
		//파일명 - 싱글파일업로드와 다르게 멀티파일업로드는 HEADER로 넘어옴 
		String name = req.getHeader("file-name");
		String ext = name.substring(name.lastIndexOf(".")+1);
		//파일 기본경로
		String defaultPath = req.getSession().getServletContext().getRealPath("/");
		//파일 기본경로 _ 상세경로
		String path = defaultPath + "resources/photoupload/" + File.separator;
		File file = new File(path);
		if(!file.exists()) {
		   file.mkdirs();
		}
		String realname = UUID.randomUUID().toString() + "." + ext;
		try {
			
			InputStream is = req.getInputStream();
			OutputStream os=new FileOutputStream(path + realname);
			int numRead;

			// 파일쓰기
			byte b[] = new byte[Integer.parseInt(req.getHeader("file-size"))];
			while((numRead = is.read(b,0,b.length)) != -1){
			    os.write(b,0,numRead);
			}
			if(is != null) {
			    is.close();
			}
			os.flush();
			os.close();
		}catch (Exception e) {
		} 
		sFileInfo += "&bNewLine=true&sFileName="+ name+"&sFileURL="+"/bikelong/resources/photoupload/"+realname;
		return sFileInfo;
	}
	
	
	@RequestMapping(value = "singleuploadimage.action", method = RequestMethod.POST)
	public void writeditor1(HttpServletRequest req, HttpServletResponse resp) {
		
	    try {
		String sFileInfo = "";
		//파일명 - 싱글파일업로드와 다르게 멀티파일업로드는 HEADER로 넘어옴 
		String name = req.getHeader("file-name");
		String ext = name.substring(name.lastIndexOf(".")+1);
		//파일 기본경로
		String defaultPath = req.getSession().getServletContext().getRealPath("/");
		//파일 기본경로 _ 상세경로
		String path = defaultPath +  "resources/photoupload/" + File.separator;
		File file = new File(path);
		if(!file.exists()) {
		    file.mkdirs();
		}
		String realname = UUID.randomUUID().toString() + "." + ext;
		InputStream is = req.getInputStream();
		OutputStream os=new FileOutputStream(path + realname);
		int numRead;
		// 파일쓰기
		byte b[] = new byte[Integer.parseInt(req.getHeader("file-size"))];
		while((numRead = is.read(b,0,b.length)) != -1){
		    os.write(b,0,numRead);
		}
		if(is != null) {
		    is.close();
		}
		os.flush();
		os.close();
		sFileInfo += "&bNewLine=true&sFileName="+ name+"&sFileURL="+"/bikelong/resources/photoupload/"+realname;
		
		PrintWriter out = resp.getWriter();
		
		out.println(sFileInfo);
	    }catch (Exception e) {
		}
	}
	
	@GetMapping(value = "download.action")
	public String getDownload() {
		return "download";
	}
	
	@GetMapping(value = "downloadAPK.action")
	@ResponseBody
	public void getDownloadAPK(HttpServletRequest req,HttpServletResponse resp) throws Exception {
		
		ServletContext application = req.getSession().getServletContext();
		String path = application.getRealPath("/WEB-INF/BikeLong.apk");
		
		resp.setContentType("application/octet-stream");
		resp.addHeader("Content-Disposition", 
				"Attachment;filename=\"" + 
				new String("BikeLong.apk".getBytes("euc-kr"), "ISO-8859-1") + 
				"\"");
		
		//다운로드 컨텐츠를 응답스트림에 기록
		BufferedInputStream bistream = 
				new BufferedInputStream(new FileInputStream(path));
		BufferedOutputStream bostream = 
				new BufferedOutputStream(resp.getOutputStream());
		while (true) {
			int data = bistream.read();			
			if (data == -1) break; //EOF (end of file)			
			bostream.write(data);
		}
		
		bistream.close();
		bostream.close();
		
		
	}

}







