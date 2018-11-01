package com.example.ms.Mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.ms.Vo.TodoVo;

@Repository("com.example.ms.Mapper.TodoMapper")
public interface TodoMapper {
	
	//todolist -> home  
	public List<TodoVo> todolist() throws Exception;
	
	//insert
	public void todoinsert(TodoVo vo) throws Exception;
	
	//read(update)
	public TodoVo read(int no) throws Exception;
	
	//update
	public void todoupdate(TodoVo vo) throws Exception;
	
	// delete
	public void tododelete(int no) throws Exception;
	
}
