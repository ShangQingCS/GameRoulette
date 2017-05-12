package cn.sqhl.shop.filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.ResourceBundle;

import javax.servlet.FilterChain;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.time.DateUtils;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.filter.OncePerRequestFilter;

import cn.sqhl.shop.service.LoginService;
import cn.sqhl.shop.utils.DateHelper;
import cn.sqhl.shop.vo.LoginStatus;

public class Checkfilter extends OncePerRequestFilter {

	protected ServletContext scontext;

	protected LoginService loginService;

	protected List urllist = null;

	protected void initFilterBean() throws ServletException {
		super.initFilterBean();
		scontext = this.getServletContext();
		WebApplicationContext context = (WebApplicationContext) scontext
				.getAttribute(WebApplicationContext.ROOT_WEB_APPLICATION_CONTEXT_ATTRIBUTE);
		loginService = (LoginService) context.getBean("loginService");

		ResourceBundle interfacelist = ResourceBundle.getBundle("checkurl");
		Enumeration<String> code = interfacelist.getKeys();
		urllist = new ArrayList();
		while (code.hasMoreElements()) {
			String key = code.nextElement();
			urllist.add(interfacelist.getString(key));
		}
	}

	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain chain)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String path = request.getRequestURI();
		HttpSession session = request.getSession();
		
//		response.setHeader("SET-COOKIE", "JSESSIONID=" + request.getSession().getId() + ";");
//		Cookie[] cookies = request.getCookies();
//		cookies[0].setHttpOnly(false);
//		response.addCookie(cookies[0]);
//		
		try{
		if (urllist.contains(path)) {// 是否符合check 内容
			LoginStatus lstatus = loginService.querySession(session.getId());
			if (lstatus != null) {
				String hid = lstatus.getHmanid();
				String uid = lstatus.getUserid();
				String did = lstatus.getDemoid();
				String date = lstatus.getUpdatetime();

				if (DateHelper.getDifference(date) > 30) {
					if (path.equals("/index/vip.do")) {// 有VIP权限
						response.sendRedirect("/login/vip.do");// 返回没有权限

					} else if (path.equals("/index/view.do")) {// 有打手权限
						response.sendRedirect("/login/view.do");// 返回没有权限

					} else if (path.equals("/index/demo.do")) {
						response.sendRedirect("/login/demo.do");// 返回没有权限

					} else {
						response.sendRedirect("/login/vip.do");// 返回没有权限
					}

				} else {
					if (path.equals("/index/vip.do")) {// 有VIP权限

						if (StringUtils.isNotEmpty(uid) && StringUtils.isEmpty(hid)) {
							chain.doFilter(request, response);
						} else {
							response.sendRedirect("/login/vip.do");// 返回没有权限
						}
					} else if (path.equals("/index/view.do")) {// 有打手权限

						if (StringUtils.isNotEmpty(uid) && StringUtils.isNotEmpty(hid)) {
							chain.doFilter(request, response);
						} else {
							response.sendRedirect("/login/view.do");// 返回没有权限
						}
					} else if (path.equals("/index/demo.do")) {

						if (StringUtils.isEmpty(uid) && StringUtils.isEmpty(hid) && StringUtils.isNotEmpty(did)) {// 有登陆
							chain.doFilter(request, response);
						} else {
							response.sendRedirect("/login/demo.do");// 返回没有权限
						}
					} else {
						response.sendRedirect("/login/vip.do");// 返回没有权限
					}
				}

			} else {
				response.sendRedirect("/login/vip.do");// 返回没有权限
			}
		} else {
			chain.doFilter(request, response);
		}
		}catch(Exception e){
			response.sendRedirect("/login/vip.do");// 返回没有权限
		}
	}

}
