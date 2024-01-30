package com.MSebas55.pruebaspring.servicies;

import com.MSebas55.pruebaspring.models.Product;
import com.MSebas55.pruebaspring.repositories.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {
    @Autowired
    private ProductRepository productRepository;
    public List<Product> getAllProducts() {

        return productRepository.findAll();
    }
    public Product getProductById(Integer id) {
        return productRepository.findById(id).get();
    }
}
