package com.example.BookStore.repository.LoginRepository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.BookStore.model.LoginModel;

public interface LoginRepository extends JpaRepository<LoginModel,String> {
	

}

