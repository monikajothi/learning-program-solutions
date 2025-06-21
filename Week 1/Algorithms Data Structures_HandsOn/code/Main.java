package com.ecommerce.search;

public class Main {
    public static void main(String[] args) {
        Product[] products = {
            new Product(101, "Laptop", "Electronics"),
            new Product(102, "Shampoo", "Personal Care"),
            new Product(103, "Notebook", "Stationery"),
            new Product(104, "Desk", "Furniture"),
            new Product(105, "Mouse", "Electronics")
        };

        Product result1 = SearchUtils.linearSearch(products, "Mouse");
        System.out.println("Linear Search Result: " + result1);

        Product result2 = SearchUtils.binarySearch(products, "Mouse");
        System.out.println("Binary Search Result: " + result2);
    }
}