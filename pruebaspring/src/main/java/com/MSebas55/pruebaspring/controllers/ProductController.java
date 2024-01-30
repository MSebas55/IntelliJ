package com.MSebas55.pruebaspring.controllers;

import com.MSebas55.pruebaspring.models.Product;
import com.MSebas55.pruebaspring.servicies.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/product")
public class ProductController {
    @Autowired
    private ProductService productService;
    @GetMapping
    public List<Product> getAllProduct() {
        return productService.getAllProducts();
    }

    @GetMapping("/by-id/{id}")
    public Product getProductById(@PathVariable Integer id) {
        return productService.getProductById(id);
    }

}
