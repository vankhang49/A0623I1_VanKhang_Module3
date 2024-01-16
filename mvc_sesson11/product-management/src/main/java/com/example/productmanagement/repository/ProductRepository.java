package com.example.productmanagement.repository;

import com.example.productmanagement.model.Product;

import java.util.List;

public interface ProductRepository {
    List<Product> findAll();
    void save(Product product);
    List<Product> findByName(String name);
    Product findById(int id);
    void update(Product product);
    void remove(Product product);
}
