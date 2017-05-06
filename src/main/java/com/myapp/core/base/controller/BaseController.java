package com.myapp.core.base.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import com.myapp.core.util.BaseUtil;

/**
 *-----------MySong---------------
 * ©MySong基础框架搭建
 * @author mySong @date 2017年3月12日 
 * @system:
 *  基础controller的核心类
 *-----------MySong---------------
 */
public class BaseController {
	protected final Logger log = LogManager.getLogger(BaseController.class);
    protected static Integer STATUSCODE_INFO = 0;
    protected static Integer STATUSCODE_ERROR = -1;
    protected static Integer STATUSCODE_SUCCESS = 1;
    protected static Integer STATUSCODE_EXCEPTION = -100;
    protected static Integer STATUSCODE_WARNING = 100;
    protected int statusCode = STATUSCODE_SUCCESS;//默认值
    protected String statusMesg = "";
    @Autowired
    public HttpServletRequest request;
    
    
    public ModelAndView toPage(String page,Map params){
    	return initMav(page,params);
    }
    
    private ModelAndView initMav(String action,Map params){
    	if(BaseUtil.isEmpty(action)) return null;
    	ModelAndView mav = new ModelAndView();
    	mav.setViewName(action);
    	if(!BaseUtil.isEmpty(params)&&params.size()>0){
			mav.addAllObjects(params);
		}
    	return mav;
    }
    
    public ModelAndView redirectAction(String actionName,Map params){
    	if(BaseUtil.isEmpty(actionName)) return null;
    	if(actionName.charAt(0)!='/'){
    		actionName = "/"+actionName;
    	}
    	return initMav("redirect:"+actionName,params);
    }
    //请求转发
    public ModelAndView forwardAction(String actionName,Map params){
    	if(BaseUtil.isEmpty(actionName)) return null;
    	if(actionName.charAt(0)!='/'){
    		actionName = "/"+actionName;
    	}
    	return initMav("forward:"+actionName,params);
    }
}
