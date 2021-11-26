package co.nero.lms.member.web;

import java.util.List;

//import java.io.IOException;
//import java.io.PrintWriter;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import co.nero.lms.member.service.MemberService;
import co.nero.lms.member.service.MemberVO;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberDao;
	
	@RequestMapping("/idcheck.do")
	@ResponseBody				// 호출한 쪽으로 돌려줘라
	public String idcheck(Model model, @Param("id") String id){
		System.out.println(id+"===================");
		boolean b = memberDao.isCheckId(id);
		String result = "T";
		if(!b) {
			result = "F";
		}
		return result;
	}
	
//	@RequestMapping("/idcheck.do")
//	public void idcheck(Model model, HttpServletRequest request, HttpServletResponse response) throws IOException{
//		PrintWriter out = response.getWriter();
//		System.out.println(request.getParameter("id")+"===================");
//		boolean b = memberDao.isCheckId(request.getParameter("id"));
//		String result = "T";
//		if(!b) {
//			result = "F";
//		}
//		out.print(result);
//	}
	
	@RequestMapping("/memberList.do")
	@ResponseBody
	public List<MemberVO> memberList() {
		
		return memberDao.memberSelectList("A");
	}
}
