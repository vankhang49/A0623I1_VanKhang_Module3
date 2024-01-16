package com.example.customermanagement.service;

import com.example.customermanagement.model.Customers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerServiceImpl implements CustomerService{
    private static Map<Integer, Customers> customersList;

    static {
        customersList = new HashMap<>();
        customersList.put(1, new Customers(1, "John", "john@codegym.vn", "Hanoi"));
        customersList.put(2, new Customers(2, "Bill", "bill@codegym.vn", "Danang"));
        customersList.put(3, new Customers(3, "Alex", "alex@codegym.vn", "Saigon"));
        customersList.put(4, new Customers(4, "Adam", "adam@codegym.vn", "Beijin"));
        customersList.put(5, new Customers(5, "Sophia", "sophia@codegym.vn", "Miami"));
        customersList.put(6, new Customers(6, "Rose", "rose@codegym.vn", "Newyork"));
    }

    @Override
    public List<Customers> findAll() {
        return new ArrayList<>(customersList.values());
    }

    @Override
    public void save(Customers customers) {
        customersList.put(customers.getId(), customers);
    }

    @Override
    public Customers findById(int id) {
        return customersList.get(id);
    }

    @Override
    public void update(int id, Customers customer) {
        customersList.put(id, customer);
    }

    @Override
    public void remove(int id) {
        customersList.remove(id);
    }
}
