package ru.efimov.jdbcdemo.controller;

import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import ru.efimov.jdbcdemo.repository.JdbcRepository;

import java.util.List;

@AllArgsConstructor
@RestController
public class JdbcController {

    private final JdbcRepository jdbcRepository;

    @GetMapping("/products/fetch-product")
    public List<String> getProductName(@RequestParam String name) {
        return jdbcRepository.getProductName(name);
    }
}