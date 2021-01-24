package com.test.dao;

import com.test.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookMapper {
    // add a book
    int addBook(Books books);

    // delete a book
    int deleteBookById(@Param("bookId") int id);

    // update a book
    int updateBook(Books books);

    // enquire a book
    Books queryBookById(@Param("bookId") int id);

    // enquire all books
    List<Books> queryAllBook();

    // search a book
    Books queryBookByName(@Param("bookName") String bookName);
}
