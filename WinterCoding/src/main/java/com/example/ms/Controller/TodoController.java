package com.example.ms.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.ms.Mapper.TodoMapper;
import com.example.ms.Vo.TodoVo;

@Controller
public class TodoController {
	@Autowired
	TodoMapper todomapper;
	
	static List<TodoVo> TodoList;
	static int max = 1;
	
	
	@RequestMapping("/insert")
	   public String home() {
		   System.out.println("==insert!==");
		   return "todoinsert"; //insert page jsp 이동 
	}
	
	//insert
	@RequestMapping(value = "/insertsucess", method = RequestMethod.POST)
	public String insert(@ModelAttribute TodoVo vo) throws Exception {
		System.out.println("=======================!! insert COntroller !!========================= ");
		max = max+1;
		vo.setPosition(max);
		vo.setComplete("incomplete");
		todomapper.todoinsert(vo);
		return "redirect:/home";
	}
	
	
	
	//
	
	@RequestMapping(value="/home")  
	public ModelAndView todolist(ModelAndView mav) throws Exception {		
		TodoList = todomapper.todolist(); //  전체리스트를 담는다.		
		mav.addObject("TodoList", TodoList); // list를 담아    
		mav.setViewName("home");   // 상품 전체 list를 보여주는 home.jsp로 이동 
		                           // home.jsp에서 foreach 돌면서 해당 name에 따른 img를 띄운다
		                           // ( 상품에 대한 이미지는 src/main/resources/static/productImg에 )
		max = TodoList.size();
		return mav;
	}
	
	public void positionfunction(int noposition) throws Exception {
		//삭제누르면
		//또는 포지션 변경시
	    // 그 뒤에 있는 포지션 앞으로 하나씩 다 땡겨져야한다.
		System.out.println("======="+noposition+"======");
		TodoList = todomapper.todolist(); // 
		for(int i =0; i<TodoList.size(); i++){
			if(TodoList.get(i).getPosition() >noposition){
				int newposition = TodoList.get(i).getPosition()-1;
				TodoList.get(i).setPosition(newposition);
				todomapper.todoupdate(TodoList.get(i));
			}
		}
	
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(@ModelAttribute TodoVo vo) throws Exception {
		System.out.println("=============== !! update Controller !!================== ");
		//todomapper.movieupdate(vo);
		return "redirect:home";
	}
	
	@RequestMapping(value = "/delete/{no}/{position}", method=RequestMethod.GET)
	public String delete(@PathVariable("no") int no, @PathVariable("position") int position) throws Exception {
		System.out.println("================!! delete Controller !! ==================");
		todomapper.tododelete(no);
		//
		positionfunction(position);
		return "redirect:/home";
	}


}
