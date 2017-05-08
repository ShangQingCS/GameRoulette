package cn.sqhl.shop.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/index")
public class IndexController {
	
	@RequestMapping("/vip")
	public String Vip(Model model, HttpServletRequest request){
		return "/jsp/vipview/roulette";
	}
	
	
	
	@RequestMapping("/view")
	public String View(Model model, HttpServletRequest request){
		return "/jsp/mview/mRoulette";
	}
	
	
	
	@RequestMapping("/demo")
	public String Demn(Model model, HttpServletRequest request){
		return "/jsp/view/roulette";
	}
	
	
}
