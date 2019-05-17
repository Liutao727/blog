package com.blog.interceptor;


import java.util.Map;

import org.springframework.stereotype.Controller;

import com.blog.entity.Manager;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

/**
 * 监听器--监听用户是否登陆了
 * @author hao
 *
 */
@Controller
public class ActionInterceptor implements Interceptor {

	public void destroy() {
		
	}

	public void init() {
		
	}

	public String intercept(ActionInvocation ai) throws Exception {
		
		String name=ai.getAction().getClass().getName();
		System.out.println("ActionName:"+name);
		
		 String result=ai.invoke();
		 
		 System.out.println("endAction:"+name);
			return result;
		}
	}

 
