package com.amz.reviews.web;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

    @GetMapping("/NotFound")
    public String notFound(Model model) {
        model.addAttribute("typeMessage", "");
        model.addAttribute("message", "<img class='not-found' src='/resources/images/404.png'/>");
        return "/exception/404";
    }
}