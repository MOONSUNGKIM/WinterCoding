package com.example.ms.Vo;

import java.sql.Date;

public class TodoVo {
 private int no;
 private String title;
 private String content;
 private int position;
 private Date duedate;
 private String complete;
 
public int getNo() {
	return no;
}

public void setNo(int no) {
	this.no = no;
}

public String getTitle() {
	return title;
}

public void setTitle(String title) {
	this.title = title;
}

public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public int getPosition() {
	return position;
}
public void setPosition(int position) {
	this.position = position;
}
public Date getDuedate() {
	return duedate;
}
public void setDuedate(Date duedate) {
	this.duedate = duedate;
}
public String getComplete() {
	return complete;
}
public void setComplete(String complete) {
	this.complete = complete;
}




}
