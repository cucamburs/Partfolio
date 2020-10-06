package com.springconf.controllers;

import com.db.entitis.Admin;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/controllers/sdet")
public class SdetController {

    @GetMapping("/login")
    public String sdetLogInPage(Model model) {
        model.addAttribute("firstName", "Yuriy");
        return "controllers/sdet/login";
    }

    @PostMapping("/topscreen")
    public String topScreemPage(@ModelAttribute("admin") Admin admin) {
        return "templates/topscreen";
    }



}
