package com.example.ms.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.ms.Dao.TodoDao;
import com.example.ms.Vo.TodoVo;

@Service
public class TodoServiceimpl implements TodoService{

	@Autowired
	TodoDao dao;
	
	@Override
	public List<TodoVo> todolist() throws Exception {
		// TODO Auto-generated method stub
		return dao.todolist();
	}

	@Override
	public List<TodoVo> todoliststate(String complete) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("TodoServiceImpl -> todoliststate");
		return dao.todoliststate(complete);
	}

	@Override
	public void todoinsert(TodoVo vo) throws Exception {
		// TODO Auto-generated method stub
		dao.todoinsert(vo);
	}

	@Override
	public TodoVo read(int no) throws Exception {
		// TODO Auto-generated method stub
		return dao.read(no);
	}

	@Override
	public void todoupdate(TodoVo vo) throws Exception {
		// TODO Auto-generated method stub
		dao.todoupdate(vo);
	}

	@Override
	public void tododelete(int no) throws Exception {
		// TODO Auto-generated method stub
		dao.tododelete(no);
	}

	@Override
	public void todostateupdate(TodoVo vo) throws Exception {
		// TODO Auto-generated method stub
		dao.todostateupdate(vo);
	}

}
