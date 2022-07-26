package org.scdc.controller;

import javax.servlet.http.HttpSession;

import org.scdc.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;


@Controller
@RequestMapping("/*")
@AllArgsConstructor
public class LoginController {
	
	UserService userService;
	
	@RequestMapping("/login")
	public String login() {
		System.out.println("==== loginPage Start ====");
		return "login";
	}
	//로그인 기능 테스트용
	@RequestMapping("authentication")
	public void authentication() {
		
	}
	
	// 로그아웃
    @RequestMapping("logout")
    public String logout(HttpSession session) {
    	 session.setAttribute("userLoginInfo", null);
        return "redirect:login";
    }
    
}
