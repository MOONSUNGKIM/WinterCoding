package com.example.ms.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.ms.Mapper.TodoMapper;
import com.example.ms.Vo.TodoVo;

@Controller
public class TodoController {
	@Autowired
	TodoMapper todomapper;
	
	@RequestMapping("/")
	   public String home() {
		   System.out.println("==home!==");
		   
		   return "home"; //home jsp 이동 
	   }
	
	static List<TodoVo> TodoList;
	
	@RequestMapping(value="/home")  
	public ModelAndView productlist(ModelAndView mav) throws Exception {		
		TodoList = todomapper.todolist(); //  상품전체리스트를 담는다.		
		mav.addObject("TodoList", TodoList); // list를 담아    
		mav.setViewName("home");   // 상품 전체 list를 보여주는 home.jsp로 이동 
		                           // home.jsp에서 foreach 돌면서 해당 name에 따른 img를 띄운다
		                           // ( 상품에 대한 이미지는 src/main/resources/static/productImg에 )
		
		System.out.println("=============" + TodoList.get(0).getTitle());
		System.out.println("==TodoList -> home ==");
		return mav;            
	}	

}
