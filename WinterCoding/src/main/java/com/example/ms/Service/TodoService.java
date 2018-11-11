package com.example.ms.Service;

import java.util.List;

import com.example.ms.Vo.TodoVo;

public interface TodoService {

	//todolist -> all  
	public List<TodoVo> todolist() throws Exception;
	
	//todolist -> incomplete or complete
	public List<TodoVo> todoliststate(String complete) throws Exception;
	
	//insert
	public void todoinsert(TodoVo vo) throws Exception;
	
	//read(update)
	public TodoVo read(int no) throws Exception;
	
	//update
	public void todoupdate(TodoVo vo) throws Exception;
	
	// delete
	public void tododelete(int no) throws Exception;
	
	
	//incomlete -> complete 
	
	public void todostateupdate(TodoVo vo) throws Exception;
	
}
