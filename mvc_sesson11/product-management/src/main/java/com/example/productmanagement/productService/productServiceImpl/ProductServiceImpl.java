package com.example.productmanagement.productService.productServiceImpl;

import com.example.productmanagement.model.Product;
import com.example.productmanagement.productService.ProductService;
import com.example.productmanagement.repository.ProductRepository;
import com.example.productmanagement.repository.repositoryImpl.ProductRepositoryImpl;

import java.util.List;

public class ProductServiceImpl implements ProductService {
    private static ProductRepository productRepository = new ProductRepositoryImpl();

    @Override
    public List<Product> findAll() {
        return productRepository.findAll();
    }

    @Override
    public boolean save(Product product) {
        if (productRepository.findByName(product.getName()) != null){
            productRepository.save(product);
            return true;
        }
        return false;
    }

    @Override
    public List<Product> findByName(String name) {
        return productRepository.findByName(name);
    }

    @Override
    public void update(Product product) {
        productRepository.update(product);
    }

    @Override
    public void remove(Product product) {
        productRepository.remove(product);
    }

    @Override
    public Product findById(int id) {
        return productRepository.findById(id);
    }
}
