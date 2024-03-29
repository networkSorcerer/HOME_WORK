package com.example;

public class BookVO {
	private String title;
	private String author;
	private String publisher;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public BookVO(String title, String author, String publisher) {
		super();
		this.title = title;
		this.author = author;
		this.publisher = publisher;
	}
	public BookVO() {
		
	}
	@Override
	public String toString() {
		return "BookVO [title=" + title + ", author=" + author + ", publisher=" + publisher + "]";
	}
	
}
