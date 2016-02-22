package net.infobank.ibwork;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/main.ib")
public class HelloController {
	
	@RequestMapping("/hello.ib")
	public String hello(Model model){
		model.addAttribute("greeting", "æ»≥Á«œººø‰");
		return "test/hello";
	}

}
