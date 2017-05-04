package cn.sqhl.shop.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.filter.OncePerRequestFilter;

import cn.sqhl.shop.service.LoginService;
import cn.sqhl.shop.vo.HatchetMan;
import cn.sqhl.shop.vo.LoginStatus;
import cn.sqhl.shop.vo.User;

public class Checkfilter extends OncePerRequestFilter {

	protected ServletContext scontext;
	
	protected LoginService loginService;
	
	protected void initFilterBean() throws ServletException {
		super.initFilterBean();
		scontext=this.getServletContext();
		WebApplicationContext context = (WebApplicationContext) scontext.getAttribute(WebApplicationContext.ROOT_WEB_APPLICATION_CONTEXT_ATTRIBUTE);
		loginService=(LoginService)context.getBean("loginService");
	};
	
	@Override
	protected void doFilterInternal(HttpServletRequest request,
			HttpServletResponse response, FilterChain chain)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String path=request.getRequestURI();
		HttpSession session = request.getSession();
		
		LoginStatus lstatus=loginService.querySession(session.getId());
		
		String hid=lstatus.getHmanid();
		String uid=lstatus.getUserid();
		String did=lstatus.getDemoid();
		
		if(path.equals("/index/vip.do")){//有VIP权限
			
			if(StringUtils.isNotEmpty(uid) && StringUtils.isEmpty(hid)){
				chain.doFilter(request, response);
			}else{
				response.sendRedirect("/login/vip.do");//返回没有权限
			}
		}else if(path.equals("/index/view.do")){//有打手权限
			
			if(StringUtils.isNotEmpty(uid) && StringUtils.isNotEmpty(hid)){
				response.sendRedirect("/login/view.do");//返回没有权限
			}else{
				chain.doFilter(request, response);
			}
		}else if(path.equals("/index/demo.do")){
			
			if(StringUtils.isEmpty(uid) && StringUtils.isEmpty(hid) && StringUtils.isNotEmpty(did)){//有登陆
				response.sendRedirect("/login/demo.do");//返回没有权限
			}else{
				chain.doFilter(request, response);
			}
		}else{
			response.sendRedirect("/login/vip.do");//返回没有权限
		}
	}

}
