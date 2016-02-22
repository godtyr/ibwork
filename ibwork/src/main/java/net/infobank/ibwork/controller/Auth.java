package net.infobank.ibwork.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.StandardPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
public class Auth {
	
	@Autowired
	StandardPasswordEncoder passwordEncoder;
	
	
	Logger log = Logger.getLogger(this.getClass());
	

	@RequestMapping(value = "/login.ib")
	public String login(Model model,
			@RequestParam(value = "error", required = false) String error, 			
			@RequestParam(value = "logout", required = false) String logout) {

		return "login";

	}
	
	
	@RequestMapping(value="passwordEncoder.ib", method={RequestMethod.GET, RequestMethod.POST})
	public String passwordEncoder(@RequestParam(value="str", required=false, defaultValue="") String str, Model model){
		
	    if(StringUtils.hasText(str)){
	    	
	    	log.debug(passwordEncoder.matches(str, "64a242c9476d6720f866b8bec05b1b5c156a391506f1fd63995f41df7650e79296aab72d0e981990"));
	    	
	        // 암호화 작업
	        String sha256 = passwordEncoder.encode(str);
	        model.addAttribute("targetStr", str);
	        model.addAttribute("sha256", sha256);
	    }

	    return "/test/pwdEnc";

	}

}
