package com.example.ms.Controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	static Map<String,Object> Todo;
	static List<TodoVo> TodoList,finisedTodoList;
	static int max = 1;
    static Date d = new Date();
	
	@RequestMapping(value="/test")  
	public ModelAndView a(ModelAndView mav) throws Exception {		
		TodoList = todomapper.todoliststate("incomplete");		
		mav.addObject("TodoList", TodoList);
		mav.setViewName("test");
		max = TodoList.size();
		return mav;
	}
	
	//select incomplete
	
	@RequestMapping(value="/home")  
	public ModelAndView todolistincomplete() throws Exception {
		  System.out.println("==home!==");
		TodoList = todomapper.todoliststate("incomplete");
		max = TodoList.size();
		 
		// 마감일 지난 todo 계산 
		
		finisedTodoList = new ArrayList<>(); 
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	    String now = sdf.format(d);
	    
	    Date nowday = sdf.parse(now);
		for(int i =0; i<TodoList.size(); i++) {
			Date duedate = TodoList.get(i).getDuedate();
		    int compare = nowday.compareTo(duedate);  
		    if(compare > 0){ //마감기한 지남
		    	System.out.println("!!!!!!!!!!!!!");
		    	finisedTodoList.add(TodoList.get(i));
		    }
		}

		Todo = new HashMap<>();
		
		Todo.put("TodoListKey",TodoList);
		Todo.put("finisedTodoListKey", finisedTodoList);
		
		 System.out.println(Todo.size());
	
		ModelAndView mav = new ModelAndView();
		mav.addObject("Todo",Todo);
		mav.setViewName("home");
		
		return mav;
	}

	//select complete

	@RequestMapping(value="/completedlist")
	public ModelAndView todolistcomplete(ModelAndView mav) throws Exception {	
		TodoList = todomapper.todoliststate("complete");		
		mav.addObject("TodoList", TodoList);     
		mav.setViewName("todocompletelist"); 		
		return mav;
	}
	
	//insert
	@RequestMapping("/insert")
	   public String home() {
		   System.out.println("==insert!==");
		   return "todoinsert"; //insert page jsp 이동 
	}
	
	@RequestMapping(value = "/insertsuccess", method = RequestMethod.POST)
	public String insert(@ModelAttribute TodoVo vo) throws Exception {
		System.out.println("=======================!! insert COntroller !!========================= ");
		max = max+1;
		vo.setPosition(max);
		vo.setComplete("incomplete");
		todomapper.todoinsert(vo);
		return "redirect:/home";
	}
	
	//update
	
	@RequestMapping(value = "/update/{no}", method = RequestMethod.GET)
	public ModelAndView view(@PathVariable("no") int no) throws Exception {
		System.out.println("=====================!! update !! ====================");
		System.out.println(no);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("todoupdate");
		TodoVo vo = todomapper.read(no);
		vo.setMax(max);
		mav.addObject("vo", vo);
		return mav;
	}
	
	
	@RequestMapping(value = "/updatesuccess", method = RequestMethod.POST)
	public String update(@ModelAttribute TodoVo vo) throws Exception {
		System.out.println("=============== !! update Controller !!================== ");
		System.out.println(vo.getPosition());
		vo.setComplete("incomplete");
		todomapper.todoupdate(vo);
		
		// 해당 번호 앞뒤로 밀고당기고 
		positionfunction2(vo.getNo(),vo.getPreposition(),vo.getPosition());
		
		return "redirect:home";
	}
	
	//incomplete todo delete
	
	@RequestMapping(value = "/delete/{no}/{position}", method=RequestMethod.GET)
	public String delete(@PathVariable("no") int no, @PathVariable("position") int position) throws Exception {
		System.out.println("================!! delete Controller !! ==================");
		todomapper.tododelete(no);
		//
		positionfunction(position);
		return "redirect:/home";
	}
	
	//completed todo delete
	@RequestMapping(value = "/completedtododelete/{no}", method=RequestMethod.GET)
	public String delete(@PathVariable("no") int no) throws Exception {
		System.out.println("================!! delete Controller !! ==================");
		todomapper.tododelete(no);
		return "redirect:/completedlist";
	}
	
	
	//incomplete -> complete 
	
	@RequestMapping(value = "/completechange/{no}/{position}", method = RequestMethod.GET)
	public String completeupdate(@PathVariable("no") int no,@PathVariable("position") int position) throws Exception {
		TodoVo vo = new TodoVo();
		vo.setNo(no);
		vo.setPosition(0); // complete 상태로 변경하니 우선순위 0 으로 변경  
		vo.setComplete("complete");
		todomapper.todostateupdate(vo);
		
		System.out.println("=============== !! complete change !!================== ");
		
		positionfunction(position);
		return "redirect:/completedlist";
	}
	

	
	//삭제시 position 재 배열 함수	
	public void positionfunction(int noposition) throws Exception {
		//삭제 시
	    // 포지션 앞으로 하나씩 다 땡겨져야한다.
		System.out.println("======="+noposition+"======");
		TodoList = todomapper.todoliststate("incomplete"); // 
		for(int i =0; i<TodoList.size(); i++){
			if(TodoList.get(i).getPosition() >noposition){
				int newposition = TodoList.get(i).getPosition()-1;
				TodoList.get(i).setPosition(newposition);
				todomapper.todoupdate(TodoList.get(i));
			}
		}
	}
	
	//postion 변경시 position 재 배열 함수 
	public void positionfunction2(int no,int preposition, int position) throws Exception {
		
		TodoList = todomapper.todoliststate("incomplete"); // 
		
		// 기존 우선순위보다 우선순위를 앞으로 할경우  
		
		if(preposition > position) {
			for(int i =0; i<TodoList.size(); i++) {
				//자기 자신은 제외 
				if(TodoList.get(i).getNo() == no) continue;
				int po = TodoList.get(i).getPosition();
                if(po >=preposition) break;
				if(po >=position && po<preposition){
					int newposition = TodoList.get(i).getPosition()+1;
					TodoList.get(i).setPosition(newposition);
					todomapper.todoupdate(TodoList.get(i));
				}
			}
		}
		// 기존 우선순위보다 우선순위를 뒤로 할경우 
		else if(preposition < position){
			for(int i =0; i<TodoList.size(); i++) {
				if(TodoList.get(i).getNo() == no) continue;
				int po = TodoList.get(i).getPosition();
                if(po >position) break;
				if(po >preposition && po <=position){
					int newposition = TodoList.get(i).getPosition()-1;
					TodoList.get(i).setPosition(newposition);
					todomapper.todoupdate(TodoList.get(i));
				}
			}

		}
	}
	
	
	
}
