package com.amz.reviews.web.articles;

import com.amz.reviews.service.ArticlesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class ArticlesUIController {

    @Autowired
    private ArticlesService service;

    @GetMapping("/article/{language}/{name}")
    public String getArticles(@PathVariable("language") String language, @PathVariable("name") String name, Model model) {
        model.addAttribute("article", service.getArticle(language, name));
        return "article";
    }

}