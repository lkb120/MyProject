package net.book.repository;

import java.util.List;

import net.book.entity.Book;

public interface BookManagerIml {
     boolean addBook(Book book);
     boolean deleteBook(Book book);
}
