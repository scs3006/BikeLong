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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bikelong.service.TrailBoardService;
import com.bikelong.vo.Board;
import com.bikelong.vo.SharingBoard;

@Controller
@RequestMapping(value = "trailpathboard")
public class TrailBoardController {

	@Autowired
	@Qualifier(value = "trailBoardService")
	private TrailBoardService trailBoardService;

	@GetMapping(value = "list.action")
	public String list(Model model) {
		List<Board> trailBoardlist = trailBoardService.findBoardList();
		model.addAttribute("trailBoardlist", trailBoardlist);
		return "trail/list";
	}

	@GetMapping(value = "detail.action")
	public String detail(int boardNo, Model model) {
		Board trailBoarddetail = trailBoardService.findBoard(boardNo);
		model.addAttribute("trailBoarddetail",trailBoarddetail);
		return "trail/detail";
	}

	@GetMapping(value = "write.action")
	public String write(HttpSession session) {
		if(session.getAttribute("id")!=null) {
			return "trail/write";
		}else {
			return "sign-in";
		}
	}

	@PostMapping(value = "write.action")
	public String writePost(Board trailBoard) {
		int cate = 1;
		trailBoard.setCategory(cate);
		trailBoardService.writeBoard(trailBoard);

		return "trail/write";
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
	public String writeditor1(HttpServletRequest req, HttpServletResponse resp) {

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

		return "index";
	}


	@GetMapping(value = "update.action")
	public String update(@RequestParam (value ="boardNo", defaultValue ="0")
	int boardNo, Model model, Board trailboardupdate) {
		trailboardupdate = trailBoardService.findBoard(boardNo);
		trailboardupdate.setBoardNo(boardNo);
		trailboardupdate.setDate(trailboardupdate.getDate().substring(0, 10));
		return "trail/update";
	}
	
	
	@GetMapping(value = "delete.action")
	public String delete(
			@RequestParam(value ="boardNo", defaultValue = "-1")int boardNo,
			@RequestParam(value ="pageNo", defaultValue = "1") int pageNo) {
		
		System.out.println(boardNo);
		trailBoardService.deleteBoard(boardNo);
		return "redirect:list.action?pageno=" + pageNo;
	}
}
