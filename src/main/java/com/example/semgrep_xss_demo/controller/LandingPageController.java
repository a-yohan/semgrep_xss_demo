package com.example.semgrep_xss_demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LandingPageController {

    @GetMapping(path = { "" })
    public String index() {
        return "redirect:/user";
    }
}
