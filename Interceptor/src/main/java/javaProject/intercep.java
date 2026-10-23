package javaProject;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class intercep extends HandlerInterceptorAdapter {

    @Override
    public boolean preHandle(javax.servlet.http.HttpServletRequest request,
                             javax.servlet.http.HttpServletResponse response,
                             Object handler) throws Exception {

//        return super.preHandle(request, response, handler);

        System.out.println("this is PreHandle method");
        return true;

    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
       System.out.println("this is PostHandle method");
        super.postHandle(request, response, handler, modelAndView);
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        System.out.println("this is AfterCompletion method");
        super.afterCompletion(request, response, handler, ex);
    }
}
