package org.example.jdbc_api_netology.controller;

import org.example.jdbc_api_netology.service.ProductService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/products")
public class ProductController {

    private final ProductService service;

    public ProductController(ProductService service) {
        this.service = service;
    }

    @GetMapping("/fetch-product")
    public ResponseEntity<String> getProductName(@RequestParam("name") String name) {
        return ResponseEntity.ok(service.getProductName(name));
    }

}
