package com.example.ms.Vo;

import java.sql.Date;

public class TodoVo {
 private int no; 
 private String title; 
 private String content;
 private int position;
 private Date duedate ;
 private String duedate2="";
 private String complete;
 private int max;
 private int preposition;
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

public String getDuedate2() {
	return duedate2;
}

public void setDuedate2(String duedate2) {
	this.duedate2 = duedate2;
}

public String getComplete() {
	return complete;
}
public void setComplete(String complete) {
	this.complete = complete;
}

public int getMax() {
	return max;
}

public void setMax(int max) {
	this.max = max;
}

public int getPreposition() {
	return preposition;
}

public void setPreposition(int preposition) {
	this.preposition = preposition;
}


}
