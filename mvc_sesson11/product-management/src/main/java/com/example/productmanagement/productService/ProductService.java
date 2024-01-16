package com.example.productmanagement.productService;

import com.example.productmanagement.model.Product;

import java.util.List;

public interface ProductService {
    List<Product> findAll();
    boolean save(Product product);
    List<Product> findByName(String name);
    Product findById(int id);
    void update(Product product);
    void remove(Product product);
}
