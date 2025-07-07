

package com.example.BookStore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.BookStore.model.BookModel;
import com.example.BookStore.model.LoginModel;
import com.example.BookStore.repository.LoginRepository.BookRepository;
import com.example.BookStore.repository.LoginRepository.LoginRepository;

@Controller
public class Controller1 {

    @Autowired
    LoginRepository repol;

    @Autowired
    BookRepository bookRepo;

    @GetMapping("/home")
    public String home() {
        return "home";
    }

    @GetMapping("/login1")
    public String login() {
        return "login1";
    }

    @PostMapping("/submitlogin")
    public String submitBook(@ModelAttribute LoginModel login, Model model) {
        if ("admin".equals(login.getUsername()) && "123".equals(login.getPassword())) {
            return "opertions";
        } else {
            model.addAttribute("error", "Invalid Username or Password!");
            return "login1";
        }
    }

    @GetMapping("/logout")
    public String logout() {
        return "login1";
    }

    @GetMapping("/viewBooks")
    public String viewBooks(Model model) {
        List<BookModel> books = bookRepo.findAll();
        model.addAttribute("books", books);
        return "view";
    }

    @GetMapping("/addBook")
    public String addBookPage() {
        return "addBook";
    }

    @PostMapping("/addBook")
    public String addBook(@ModelAttribute BookModel book, Model model) {
        bookRepo.save(book);
        model.addAttribute("message", "Book Added Successfully!");
        return "addBook";
    }

    @GetMapping("/updateBook")
    public String updateBookPage() {
        return "update";
    }

    @GetMapping("/getBookForUpdate")
    public String getBookForUpdate(@RequestParam int bookNo, Model model) {
        BookModel book = bookRepo.findById(bookNo).orElse(null);
        if (book != null) {
            model.addAttribute("book", book);
        } else {
            model.addAttribute("error", "Book ID not found!");
        }
        return "update";
    }

    @PostMapping("/updateBookDetails")
    public String updateBookDetails(@ModelAttribute BookModel book, Model model) {
        bookRepo.save(book);
        model.addAttribute("message", "Book Updated Successfully!");
        return "update";
    }

    @GetMapping("/deleteBook")
    public String deleteBookPage() {
        return "delete";
    }

    @PostMapping("/deleteBook")
    public String deleteBook(@RequestParam int bookNo, Model model) {
        bookRepo.deleteById(bookNo);
        model.addAttribute("message", "Book Deleted Successfully!");
        return "delete";
    }
}
