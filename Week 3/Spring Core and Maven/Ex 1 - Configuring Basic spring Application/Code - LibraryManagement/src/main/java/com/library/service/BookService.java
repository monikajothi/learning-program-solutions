package com.library.service;
import com.library.repository.BookRepository;

public class BookService {
    private BookRepository bookRepository;
    public BookService(){
        System.out.println("Book Service created");
        this.bookRepository=new BookRepository();
    }

    public void addBook() {
        System.out.println("BookService: Adding a book...");
        bookRepository.saveBook();
    }

}
