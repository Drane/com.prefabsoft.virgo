package com.prefabsoft.virgo.host;

import java.io.IOException;
import java.net.URL;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HostController {

	 @RequestMapping("/")
	    public ModelAndView get(HttpServletRequest request) throws IOException {

	    	//classic logging via SLF4J
	    	Log log = LogFactory.getLog(HostController.class);
	        log.fatal("*** in HomeController @ /");

	    	//classic logging via SLF4J
//	        MDC.put("*** ipAddress", request.getRemoteAddr());


	    	URL host = request.getServletContext().getResource("host:/WEB-INF/sample.properties");
	    	Properties host_props = new Properties();
	    	if(host != null){
	    		host_props.load(host.openStream());
	    	}
	    	URL snap = request.getServletContext().getResource("/WEB-INF/sample.properties");
	    	Properties snap_props = new Properties();
	    	if(snap != null){
	    		snap_props.load(snap.openStream());
	    	}
	    	return new ModelAndView("home.xhtml").addObject("host", host_props.getProperty("some.property"))
											.addObject("snap", snap_props.getProperty("some.property"));
	    }


}
