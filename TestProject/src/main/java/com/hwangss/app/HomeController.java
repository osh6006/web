package com.hwangss.app;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hwangss.domain.SignVO;
import com.hwangss.service.SignUpService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	 @Inject
	 private SignUpService service;
	 
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		System.out.println("home");
		
		return "home";
		
		
	}
	
	@RequestMapping(value = "/signUp", method = RequestMethod.POST)
	public String postWirte(SignVO vo) throws Exception {
		service.sign_write(vo);
		System.out.println("/signUp");
		return "home";
		}
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/sample", method = RequestMethod.GET)
	public String sample(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		System.out.println("home");
		
		return "sample";
	}
	
	@RequestMapping(value="/login_check", method=RequestMethod.POST)
	public ModelAndView login_check(@ModelAttribute SignVO vo, HttpSession session ) {
		System.out.println("/logincheck");
		String name = service.login_check(vo, session);
		System.out.println("최종 이름은? : " + name);
		ModelAndView mav = new ModelAndView();
		if(name != null) { // 로그인성공 하면 메인 홈페이지로 이동
			mav.setViewName("main");
		}else {   
			mav.setViewName("home"); // 실패하면 다시 login페이지로 돌아감
			mav.addObject("message", "error"); // error message
			// commit message please
		}
		return mav;
	}
}
