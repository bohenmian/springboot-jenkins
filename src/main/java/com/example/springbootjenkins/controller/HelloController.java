package com.example.springbootjenkins.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping("/hello")
    public String hello() {
        return "hello world";
    }

    @GetMapping("/hooks")
    public String hooks() {
        return "this is github hooks";
    }
}
