package com.test.controller;

import com.test.pojo.Books;
import com.test.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController{
    // controller call service layer

    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;

    // enquire all books, and return to that page
    @RequestMapping("/allBook")
    public String list(Model model){
        List<Books> list = bookService.queryAllBook();
        model.addAttribute("list",list);
        return "allBook";
    }

    // jump to addBook page
    @RequestMapping("/toAddBook")
    public String toAddPage(){
        return "addBook";
    }

    // Add a book
    @RequestMapping("/addBook")
    public String addBook(Books books){
        bookService.addBook(books);
        return "redirect:/book/allBook";
    }

    // jump to rectify page
    @RequestMapping("/toUpdate")
    public String toUpdatePage(int id, Model model){
        Books book = bookService.queryBookById(id);
        model.addAttribute("QBook",book);
        return "updateBook";
    }

    // update book
    @RequestMapping("/updateBook")
    public String updateBook(Books books){
        bookService.updateBook(books);
        // redirect，會自動刷新(重新查詢一次所有書籍)
        return "redirect:/book/allBook";
    }

    // delete book
    @RequestMapping("/deleteBook/{bookId}")
    public String deleteBook(@PathVariable("bookId") int id){
        bookService.deleteBookById(id);
        // redirect，會自動刷新(重新查詢一次所有書籍)
        return "redirect:/book/allBook";
    }

    // query a book
    @RequestMapping("/searchBook")
    public String queryBook(String queryBookName, Model model){
        Books book = bookService.queryBookByName(queryBookName);
        List<Books> list = new ArrayList<>();
        list.add(book);

        // if that book does not exists, show all book
        if(book == null){
            return "redirect:/book/allBook";
        }

        model.addAttribute("list",list);
        return "allBook";
    }
}