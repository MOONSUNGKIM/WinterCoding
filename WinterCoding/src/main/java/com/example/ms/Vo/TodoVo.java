package com.example.ms.Vo;

import java.util.Date;

public class TodoVo {
 private int no;
 private String title;
 private String content;
 private int position;
 private Date duedate;
 private int complete;
 
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
public int getComplete() {
	return complete;
}
public void setComplete(int complete) {
	this.complete = complete;
}




}
