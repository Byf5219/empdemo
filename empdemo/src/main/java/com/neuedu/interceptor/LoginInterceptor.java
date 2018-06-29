package com.neuedu.interceptor;

import com.neuedu.entity.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

public class LoginInterceptor implements HandlerInterceptor{
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        //判断session中是否有user对象
        HttpSession httpSession = httpServletRequest.getSession();
        User user = (User) httpSession.getAttribute("user");
        if(user == null){
            //如果session中没有，则看cookie中是否有user对象
            Cookie[] cookies = httpServletRequest.getCookies();
            if(cookies != null){
                for (Cookie cookie:cookies) {
                    if (cookie.getValue()!= null && cookie.getName().equals("username")) {
                        return true;
                    } else {
                        httpServletResponse.sendRedirect("/empdemo/user/loginView");
                        return false;
                    }
                }
            }else{
                httpServletResponse.sendRedirect("/empdemo/user/loginView");
                return false;
            }
        }
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
