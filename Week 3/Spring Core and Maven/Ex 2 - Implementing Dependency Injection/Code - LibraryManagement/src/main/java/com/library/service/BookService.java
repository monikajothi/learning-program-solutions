package com.library.service;
import com.library.repository.BookRepository;

public class BookService {
    private BookRepository bookRepository;
    public BookService(){
        System.out.println("Book Service created");
    }
    public void setBookRepository(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
        System.out.println("BookRepository injected into BookService");
    }
    public void addBook() {
        System.out.println("BookService: Adding a book...");
        bookRepository.saveBook();
    }

}
