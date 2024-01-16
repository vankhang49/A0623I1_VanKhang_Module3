package com.example.productmanagement.repository.repositoryImpl;

import com.example.productmanagement.model.Product;
import com.example.productmanagement.repository.ProductRepository;

import java.util.ArrayList;
import java.util.List;

public class ProductRepositoryImpl implements ProductRepository {
    private static List<Product> productList = new ArrayList<>();
    static {
        productList.add(new Product(1, "Blueberry & Strawberry Juice", "14/1/2024", "Make by Blueberry and Strawberry"
                , 4.5, "blueberry-strawberry-juice.jfif"));
        productList.add(new Product(2, "Kiwi Juice", "14/1/2024", "Make by Kiwi"
                , 4.5, "kiwiJuice.jfif"));
        productList.add(new Product(3, "Mango Juice", "14/1/2024", "Make by Mango"
                , 4.5, "mangoJuice.jfif"));
        productList.add(new Product(4, "Orange Juice", "14/1/2024", "Make by Orange"
                , 4.5, "orangeJuice.jfif"));
    }

    @Override
    public List<Product> findAll() {
        return productList;
    }

    @Override
    public void save(Product product) {
        productList.add(product);
    }

    @Override
    public List<Product> findByName(String name) {
        List<Product> productList1 = new ArrayList<>();
        for (Product p: productList){
            if (p.getName().contains(name)){
                productList1.add(p);
            }
        }
        return productList1;
    }

    @Override
    public void update(Product product) {
        for (int i = 0; i < productList.size(); i++){
            if (productList.get(i).getId() == product.getId()){
                productList.set(i, product);
                break;
            }
        }
    }

    @Override
    public void remove(Product product) {
        productList.remove(product);
    }

    @Override
    public Product findById(int id) {
        for (Product product: productList){
            if (product.getId() == id){
                return product;
            }
        }
        return null;
    }
}
