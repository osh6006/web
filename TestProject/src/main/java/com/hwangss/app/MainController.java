package com.hwangss.app;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hwangss.domain.PlayerVO;
import com.hwangss.service.ListService;


@Controller
@RequestMapping("/mainhome/*")
public class MainController {
	
	 @Inject
	 private ListService service;
	 
	 // 게시물 목록 반환
	 @RequestMapping(value = "/userlist", method = RequestMethod.GET)
	 public void getList(Model model) throws Exception {
	  
		  List list = null;
		  list = service.list();
		  model.addAttribute("list", list);
		 
	 }
	 @RequestMapping(value = "/resist", method = RequestMethod.GET)
	 public void doWrite2(Model model) throws Exception { 
	 }
	 
	 // 작성
	 @RequestMapping(value = "/resist", method = RequestMethod.POST)
	 public String doWrite(PlayerVO vo) throws Exception {
	    
		 System.out.println("컨트롤러의 doWrite 메소드 시작");
		 service.doWrite(vo);
		return "mainhome/resist";
	 }
	 
	 @RequestMapping(value = "/usersearch", method = RequestMethod.GET)
	 public void search(Model model) throws Exception {
	  
	 }

	 
}
