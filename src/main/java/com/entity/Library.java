package com.entity;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Library {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) // or AUTO
	private int bookId;
	private String bookName;
	private String author;
	private String description;
	private long price;

	public Library(int bookId, String bookName, String author, long price, String description) {
		super();
		this.bookId = bookId;
		this.bookName = bookName;
		this.author = author;
		this.price = price;
		this.description = description;
	}

	public Library() {
		super();
		// TODO Auto-generated constructor stub
	}

	

	@Override
	public String toString() {
		return "Library [bookId=" + bookId + ", bookName=" + bookName + ", author=" + author + ", description="
				+ description + ", price=" + price + "]";
	}

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public String getbookName() {
		return bookName;
	}

	public void setbookName(String bookName) {
		this.bookName = bookName;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public long getPrice() {
		return price;
	}

	public void setPrice(long price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
