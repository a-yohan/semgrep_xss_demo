package com.example.semgrep_xss_demo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.semgrep_xss_demo.dto.UserDto;
import com.example.semgrep_xss_demo.model.User;
import com.example.semgrep_xss_demo.repository.UserRepository;
import com.example.semgrep_xss_demo.service.UserService;

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    UserRepository userRepository;

    @Override
    public User find(Long id) {
        return userRepository.findById(id).orElseGet(null);
    }

    @Override
    public User create(UserDto userDto) {
        User user = new User();
        user.setName(userDto.getName());
        user.setAddress(userDto.getAddress());
        return userRepository.save(user);
    }

    @Override
    public User edit(Long id, UserDto userDto) {
        User user = userRepository.findById(id).orElseThrow();
        user.setName(userDto.getName());
        user.setAddress(userDto.getAddress());
        return userRepository.save(user);
    }

    @Override
    public List<User> search(String name) {
        return userRepository.findByNameContains(name);
    }
    
}
