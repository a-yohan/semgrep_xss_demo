package com.example.semgrep_xss_demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.semgrep_xss_demo.model.User;

public interface UserRepository extends JpaRepository<User, Long> {
    public List<User> findByNameContains(String name);
}
