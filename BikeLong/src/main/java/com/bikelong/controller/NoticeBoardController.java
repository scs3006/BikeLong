package com.bikelong.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bikelong.service.NoticeBoardService;
import com.bikelong.vo.Board;
import com.bikelong.vo.SharingBoard;

@Controller
@RequestMapping(value = "noticeboard")
public class NoticeBoardController {
	
	@Autowired
	@Qualifier(value = "noticeBoardService")
	private NoticeBoardService noticeBoarService;
	
	
	@GetMapping(value = "list.action")
	public String getList(Model model) {
		List<Board> noticeBoardLists = noticeBoarService.findBoardList();
		model.addAttribute("noticeList", noticeBoardLists);
		return "notice/list";
	}
	
	
	@GetMapping(value = "detail.action")
	public String getDetail(String boardNo, Model model, SharingBoard sharingBoardDetail) {
//		boardNo = "2";
//		sharingBoardDetail = sharingBoarService.findBoard(boardNo);
//		
//		sharingBoardDetail.setDate(sharingBoardDetail.getDate().substring(0, 10));
//		
//		model.addAttribute("sharingBoardDetail", sharingBoardDetail);
		return "notice/detail";
	}
	
	
	@GetMapping(value = "write.action")
	public String getWrite(HttpSession session) {
//		if(session.getAttribute("id")!=null) {
//			return "sharingwrite";
//		}else {
//			return "sign-in";
//		}
		return "notice/write";
	}
	
	
	@PostMapping(value = "write.action")
	public String postWrite(Board board) {
		//게시판 분류 번호
		int category = 3;
		//공지사항에는 필요없는 지역번호지면 Not Null 컬럼이기 때문에 임의의 int값을 넣어준다.
		int locationNo = 1;
		
		board.setCategory(category);
		board.setLocationNo(locationNo);
		noticeBoarService.writeBoard(board);
		
		return "redirect:list.action";
	}
	
	
	@PostMapping(value = "multiuploadimage.action")
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
		sFileInfo += "&bNewLine=true&sFileName="+ name+"&sFileURL=/bikelong/resources/photoupload/"+realname;
		return sFileInfo;
	}
	
	
	@PostMapping(value = "singleuploadimage.action")
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
		sFileInfo += "&bNewLine=true&sFileName="+ name+"&sFileURL=/bikelong/resources/photoupload/"+realname;
		
		PrintWriter out = resp.getWriter();
		
		out.println(sFileInfo);
	    }catch (Exception e) {
		}
	}
	
	
	@GetMapping(value = "update.action")
	public String update() {
		
		return "notice/update";
	}
	
}