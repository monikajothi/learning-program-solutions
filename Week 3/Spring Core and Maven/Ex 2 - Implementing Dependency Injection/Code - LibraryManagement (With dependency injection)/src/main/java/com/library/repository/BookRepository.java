package com.library.repository;

public class BookRepository {
    public BookRepository(){
        System.out.println("Book Repository created");
    }

    public void saveBook(){
        System.out.println("Book saved to the database");
    }
}
