package com.example.BookStore.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "books")
public class BookModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int bookNo;

    @Column
    private String title;

    private String author;
    private String publisher;
    private String category;
    private int price;

    public BookModel() { }

    public BookModel(int bookNo, String title, String author, String publisher, String category, int price) {
        this.bookNo = bookNo;
        this.title = title;
        this.author = author;
        this.publisher = publisher;
        this.category = category;
        this.price = price;
    }

    public int getBookNo() { return bookNo; }
    public void setBookNo(int bookNo) { this.bookNo = bookNo; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getAuthor() { return author; }
    public void setAuthor(String author) { this.author = author; }

    public String getPublisher() { return publisher; }
    public void setPublisher(String publisher) { this.publisher = publisher; }

    public String getCategory() { return category; }
    public void setCategory(String category) { this.category = category; }

    public int getPrice() { return price; }
    public void setPrice(int price) { this.price = price; }

    @Override
    public String toString() {
        return "PathModel [bookNo=" + bookNo + ", title=" + title + ", author=" + author +
                ", publisher=" + publisher + ", category=" + category + ", price=" + price + "]";
    }
}
