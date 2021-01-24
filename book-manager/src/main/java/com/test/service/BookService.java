package com.test.service;

import com.test.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookService {
    // add a book
    int addBook(Books books);

    // delete a book
    int deleteBookById(int id);

    // update a book
    int updateBook(Books books);

    // enquire a book
    Books queryBookById(int id);

    // enquire all books
    List<Books> queryAllBook();

    // search a book
    Books queryBookByName(String bookName);
}
