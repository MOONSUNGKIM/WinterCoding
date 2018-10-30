package com.example.ms.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/home")
	   public String home() {
		   System.out.println("==home!==");
		   
		   return "home"; //home jsp 이동 
	   }
	
}
