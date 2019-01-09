package com.example.blog;

import java.sql.Date;

public class Post {
		
   private String title;
   private String body;
   private Date date;
   private String id;
 
   public Post(String id, String title, String body, Date date) {
		this.title = title;
	    this.body = body;
		this.date = date;
		this.id = id;
   }
 
   public Post() {
	// TODO Auto-generated constructor stub
}

public String getBody() {
       return body;
   }
 
   public void setBody(String body) {
       this.body = body;
   }

	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public Date getDate() {
		return date;
	}
	
	public void setDate(Date date) {
		this.date = date;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

}
