package com.example.semgrep_xss_demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.semgrep_xss_demo.dto.UserDto;
import com.example.semgrep_xss_demo.model.User;
import com.example.semgrep_xss_demo.service.UserService;

@Controller
@RequestMapping(path = { "user" })
public class UserController {

    @Autowired
    UserService userService;

    @GetMapping(path = { "" })
    public String index(
            @RequestParam(name = "q", defaultValue = "") String search,
            Model model) {
        model.addAttribute("search", search);
        return "user/index";
    }

    @GetMapping(path = { "create" })
    public String create() {
        return "user/create";
    }

    @PostMapping(path = { "create" })
    public String create(@ModelAttribute UserDto userDto, Model model) {
        User user = userService.create(userDto);
        return "redirect:/user/edit/" + user.getId();
    }

    @GetMapping(path = { "edit/{id}" })
    public String edit(@PathVariable(name = "id") Long id, Model model) {
        User user = userService.find(id);
        model.addAttribute("user", user);
        return "user/edit";
    }

    @PostMapping(path = { "edit/{id}" })
    public String edit(@PathVariable(name = "id") Long id, @ModelAttribute UserDto userDto, Model model) {
        User user = userService.edit(id, userDto);
        return "redirect:/user/edit/" + user.getId();
    }
}
