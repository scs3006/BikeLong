package com.bikelong.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SharingBoardController {
	
	@RequestMapping(value = "list.action", method = RequestMethod.GET)
	public String list() {
		
		return "list";
	}
	
	@RequestMapping(value = "detail.action", method = RequestMethod.GET)
	public String detail() {
		
		return "detail";
	}
	
	@RequestMapping(value = "write.action", method = RequestMethod.GET)
	public String write() {
		return "write";
	}
	
	@RequestMapping(value = "writeditor.action", method = RequestMethod.POST)
	public String writeditor(HttpServletRequest req, HttpServletResponse resp) {
		
	    try {
		String sFileInfo = "";
		//파일명 - 싱글파일업로드와 다르게 멀티파일업로드는 HEADER로 넘어옴 
		String name = req.getHeader("file-name");
		String ext = name.substring(name.lastIndexOf(".")+1);
		//파일 기본경로
		String defaultPath = "/bikelong/src/main/webapp/resources/photoUpload/";
		//파일 기본경로 _ 상세경로
		String path = defaultPath + "upload" + File.separator;
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
		sFileInfo += "&bNewLine=true&sFileName="+ name+"&sFileURL=/bikelong/src/main/webapp/resources/photoUpload/"+realname;
		
		PrintWriter out = resp.getWriter();
		
		out.println(sFileInfo);
	    }catch (Exception e) {
		}
		
		return "index";
	}
	
	@RequestMapping(value = "writeditor1.action", method = RequestMethod.POST)
	public String writeditor1(HttpServletRequest req, HttpServletResponse resp) throws IOException {
			
			String return1="";
			String return2="";
			String return3="";
			String name = "";
			if (ServletFileUpload.isMultipartContent(req)){
				try {
				    ServletFileUpload uploadHandler = new ServletFileUpload(new DiskFileItemFactory());
				    //UTF-8 인코딩 설정
				    uploadHandler.setHeaderEncoding("UTF-8");
				    java.util.List<FileItem> items = uploadHandler.parseRequest(req);
				    //각 필드태그들을 FOR문을 이용하여 비교를 합니다.
				    for (FileItem item : items) {
				        if(item.getFieldName().equals("callback")) {
				            return1 = item.getString("UTF-8");
				        } else if(item.getFieldName().equals("callback_func")) {
				            return2 = "?callback_func="+item.getString("UTF-8");
				        } else if(item.getFieldName().equals("Filedata")) {
				            //FILE 태그가 1개이상일 경우
				            if(item.getSize() > 0) {
				                String ext = item.getName().substring(item.getName().lastIndexOf(".")+1);
				                //파일 기본경로
				                String defaultPath = "/bikelong/src/main/webapp/resources/photoUpload/";
				                //파일 기본경로 _ 상세경로
				                String path = defaultPath + "upload" + File.separator;
				                 
				                File file = new File(path);
				                 
				                //디렉토리 존재하지 않을경우 디렉토리 생성
				                if(!file.exists()) {
				                    file.mkdirs();
				                }
				                //서버에 업로드 할 파일명(한글문제로 인해 원본파일은 올리지 않는것이 좋음)
				                String realname = UUID.randomUUID().toString() + "." + ext;
				                ///////////////// 서버에 파일쓰기 ///////////////// 
				                InputStream is = item.getInputStream();
				                OutputStream os=new FileOutputStream(path + realname);
				                int numRead;
				                byte b[] = new byte[(int)item.getSize()];
				                while((numRead = is.read(b,0,b.length)) != -1){
				                    os.write(b,0,numRead);
				                }
				                if(is != null)  is.close();
				                os.flush();
				                os.close();
				                ///////////////// 서버에 파일쓰기 /////////////////
				                return3 += "&bNewLine=true&sFileName="+name+"&sFileURL=/bikelong/src/main/webapp/resources/photoUpload/"+realname;
				            }else {
				                return3 += "&errstr=error";
				            }
				        }
				    } 
			    } catch (Exception ex) {
			    	ex.printStackTrace();
			    }
			}
			resp.sendRedirect(return1+return2+return3);
			return "index";
		}
	
	@RequestMapping(value = "update.action", method = RequestMethod.GET)
	public String update() {
		
		return "update";
	}
	
  
}
