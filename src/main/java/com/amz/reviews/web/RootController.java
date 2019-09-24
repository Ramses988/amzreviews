package com.amz.reviews.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RootController {

    @GetMapping("/")
    public String root() {
        return "index";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @GetMapping("/contacts")
    public String registerDisplay() {
        return "contacts";
    }

    @GetMapping("/help")
    public String help() {
        return "help";
    }

    @GetMapping("/articles")
    public String articles() {
        return "articles";
    }
}