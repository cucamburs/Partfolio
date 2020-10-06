package com.springconf.controllers;

import com.db.entitis.Admin;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/controllers/main")
public class MainController {


    @GetMapping("/main")
    public String indexPage(Model model) {
        model.addAttribute("firstName" , "GDTSJKHD");
        return "/main";
    }

    @GetMapping("/about")
    public String aboutPage(Model model) {
     model.addAttribute("firstName", "Yuriy");
        return "/about";
    }
}
