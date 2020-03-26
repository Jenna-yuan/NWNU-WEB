package com.nwnu.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.nwnu.pojo.Mannager;

public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object obj) throws Exception {
		// 获取请求URL
		String url = req.getRequestURI();
		// 除login外，拦截所有控制
		if (url.indexOf("admin") >= 0) {
			return true;
		}
		// 获取Session
		HttpSession session = req.getSession();
		Mannager mannager = (Mannager) session.getAttribute("USER_SESSION");
		if (mannager != null) {
			return true;
		}
		// 不符合条件，添加提示信息，并页面转向
		req.setAttribute("msg", "您还没有登录，请登录");
		req.getRequestDispatcher("admin.jsp").forward(req, res);
		return false;
	}

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}
}
