package com.sist.main;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.member.dao.*;
import com.sist.dao.YoseksaDAO;

@Controller
public class JoinController {
	
	@Resource(name="mdao")
	private MemberDAO dao;
	@Autowired
	private YoseksaDAO ydao;
	@RequestMapping("member/member_insert.do")
	public String member_insert(Model model){
		   model.addAttribute("mainview", "../member/member_insert.jsp");
	      return "main/main";
	}
	@RequestMapping("member/member_insert_ok.do")
	public String member_insert_ok(MemberVO vo)
	{
		dao.memberInsert(vo);
		return "redirect:/main/main.do";
	}
	@RequestMapping("detail/detail.do")
	public String detail(Model model) throws Exception{
		List<String> yList=ydao.ytitle();
		List<String> yList2=ydao.ycontent();
		
		model.addAttribute("yList", yList);
		model.addAttribute("yList2", yList2);
		model.addAttribute("mainview", "../detail/detail.jsp");
		return "main/main";
	}
	
}
