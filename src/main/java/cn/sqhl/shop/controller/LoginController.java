package cn.sqhl.shop.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;

import cn.sqhl.shop.service.LoginService;
import cn.sqhl.shop.vo.GameDemo;
import cn.sqhl.shop.vo.HatchetMan;
import cn.sqhl.shop.vo.LoginStatus;
import cn.sqhl.shop.vo.User;

@Controller
@RequestMapping("Login")
public class LoginController {
	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping("/vip")
	public String Vip(Model model, HttpServletRequest request){
		return "/jsp/authority/viplogin";
	}
	
	
	
	@RequestMapping("/view")
	public String View(Model model, HttpServletRequest request){
		return "/jsp/authority/mlogin";
	}
	
	
	
	@RequestMapping("/demo")
	public String Demn(Model model, HttpServletRequest request){
		return "/jsp/authority/demologin";
	}
	
	@ResponseBody
	@RequestMapping("/validate")
	public String Authentication(Model model, HttpServletRequest request){
		JSONObject jsobj=new JSONObject();
		Map map=request.getParameterMap();
		String type =map.get("authenticationType")+"";
		String pwd =map.get("pwd")+"";
		String  uname=map.get("uname")+"";
		String  ename=map.get("ename")+"";
		String  dname=map.get("dname")+"";
		
		boolean valid = false;
		//根据种类查找是否能够找到对应的人
		if(type.equals("1")){
			User objmap=loginService.AuthenticationUser(uname,pwd);
			if(objmap!=null){
				jsobj.put("result", "1");
				jsobj.put("message", "验证通过！");
				jsobj.put("data", objmap);
				jsobj.put("url", "/index/vip.do");
				valid=true;
			}else{
				jsobj.put("result", "0");
				jsobj.put("message", "用户名或者密码有误！");
				jsobj.put("data", null);
			}
		}else if(type.equals("2")){
			HatchetMan objmap=loginService.AuthenticationHatchetMan(ename,uname);
			if(objmap!=null){
				jsobj.put("result", "1");
				jsobj.put("message", "验证通过！");
				jsobj.put("data", objmap);
				jsobj.put("url", "/index/view.do");
				valid=true;
			}else{
				jsobj.put("result", "0");
				jsobj.put("message", "用户名或者密码有误！");
				jsobj.put("data", null);
			}
		}else if(type.equals("0")){
			GameDemo objmap=loginService.AuthenticationGameDemo(dname,pwd);
			if(objmap!=null){
				jsobj.put("result", "1");
				jsobj.put("message", "验证通过！");
				jsobj.put("data", objmap);
				jsobj.put("url", "/index/demo.do");
				valid=true;
			}else{
				jsobj.put("result", "0");
				jsobj.put("message", "用户名或者密码有误！");
				jsobj.put("data", null);
			}
		}
		
		if(valid){//存在用户
			LoginStatus loginstatus =loginService.updateSession(uname, ename, dname, request.getSession().getId());
			if(loginstatus==null){
				jsobj.put("result", "0");
				jsobj.put("message", "存储出错！请重新尝试登陆");
				jsobj.put("data", null);
			}
		}
		
		return jsobj.toJSONString();
	}
	
}
