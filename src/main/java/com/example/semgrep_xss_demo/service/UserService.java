package com.example.semgrep_xss_demo.service;

import java.util.List;

import com.example.semgrep_xss_demo.dto.UserDto;
import com.example.semgrep_xss_demo.model.User;

public interface UserService {
    public User find(Long id);

    public List<User> search(String name);

    public User create(UserDto userDto);

    public User edit(Long id, UserDto userDto);
}
