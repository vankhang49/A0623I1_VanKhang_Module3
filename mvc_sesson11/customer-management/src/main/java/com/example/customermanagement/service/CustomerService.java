package com.example.customermanagement.service;

import com.example.customermanagement.model.Customers;

import java.util.List;

public interface CustomerService {
    List<Customers> findAll();
    void save(Customers customers);
    Customers findById(int id);
    void update(int id, Customers customer);
    void remove(int id);
}
