package com.example.BookStore.repository.LoginRepository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.example.BookStore.model.BookModel;

public interface BookRepository extends JpaRepository <BookModel,Integer> {
	
	

}
