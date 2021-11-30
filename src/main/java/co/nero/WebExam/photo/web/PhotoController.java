package co.nero.WebExam.photo.web;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import co.nero.WebExam.photo.service.PhotoService;
import co.nero.WebExam.photo.service.PhotoVO;

@Controller
public class PhotoController {
	
	@Autowired
	private PhotoService photoDao;
	
	@RequestMapping("/photoList.do")
	public String photoList(Model model) {
		model.addAttribute("photos", photoDao.photoSelectList());
		return "photo/photoList";
	}
	
	@RequestMapping("/photoForm.do")
	public String photoForm() {
		return "photo/photoForm";
	}
	
	//customfile
	
	@RequestMapping("/photoResister.do")
	public String photoResister(MultipartHttpServletRequest multi) {
		String filePath = "C:\\Dev\\workspace\\WebExam\\src\\main\\webapp\\img\\";
		MultipartFile mpf = multi.getFile("image");
		
		String original = mpf.getOriginalFilename();

		String safeFile = filePath + original;
		try {
			mpf.transferTo(new File(safeFile));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		PhotoVO vo = new PhotoVO();
		vo.setImage(original);
		vo.setTitle(multi.getParameter("title"));
		vo.setSubject(multi.getParameter("subject"));
		photoDao.photoInsert(vo);
		
		return "redirect:photoList.do";
	}

}
