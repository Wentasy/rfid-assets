package com.gdzc.dev.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gdzc.dev.web.dao.po.TbUser;


/**
 * 类说明 用户监听
 * @version 1.0
 * 
 */
public class LoginFilter implements Filter {

	public static ThreadLocal<Object> threadLocal = new ThreadLocal<Object>();

	public void destroy() {

	}

	/**
	 * 过滤
	 */
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest servletRequest = (HttpServletRequest) request;
		HttpServletResponse sercletResponse = (HttpServletResponse) response;
		HttpSession session = servletRequest.getSession();
		Object user = session.getAttribute("user");

		// 如果接受到TbUser实例 获得TbUser
		if (user instanceof TbUser) {
			user = (TbUser) session.getAttribute("user");
		}

		String url = servletRequest.getRequestURI();
		// 获取失败就跳转
		if (user == null && url.indexOf("login") < 0) {
			sercletResponse.sendRedirect("/GDZC/admin/jsp/login/login.jsp");
			return;
		} else {
			if (user != null) {
				LoginFilter.setContext(user);
			}
			chain.doFilter(request, response);
		}
	}

	public static Object getContext() {
		return threadLocal.get();
	}

	public static void setContext(Object user) {
		threadLocal.set(user);
	}

	public static void cleanContext() {
		threadLocal.set(null);
	}

	public void init(FilterConfig filterConfig) throws ServletException {

	}
}
