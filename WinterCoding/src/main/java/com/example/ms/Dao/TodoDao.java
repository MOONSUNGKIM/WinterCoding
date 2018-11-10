package com.example.ms.Dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.ms.Vo.TodoVo;

@Repository
public class TodoDao {
 @Autowired
 SqlSession ss;
 
 // todolist -> all
 public List<TodoVo> todolist() throws Exception{
	 System.out.println("todolist dao");
	 return ss.selectList("todolist");
 }
 
 //todolist -> incomplete or complete
 public List<TodoVo> todoliststate(String complete) throws Exception{
	 System.out.println("todoliststate dao");
	 return ss.selectList("todoliststate",complete);
 }
 
 // insert
 public void todoinsert(TodoVo vo) throws Exception{
	 System.out.println("todoinsert dao");
	 ss.insert("todoinsert",vo);
 }
 
 //read(update)
 public TodoVo read(int no) throws Exception{
	 System.out.println("todolistread dao");
	 return ss.selectOne("read",no);
 }
 
 //update
 public void todoupdate(TodoVo vo) throws Exception{
	 System.out.println("todolistupdate dao");
	 ss.update("todoupdate",vo);
 }
 
 //delete
 public void tododelete(int no) throws Exception{
	 System.out.println("todolistdelete dao");
	 ss.delete("tododelete",no);
 }
 
 //incomplete -> complete 
 public void todostateupdate(TodoVo vo) throws Exception{
	 System.out.println("todostateupdate dao");
	 ss.update("todostateupdate",vo);
 }
 
 
}
