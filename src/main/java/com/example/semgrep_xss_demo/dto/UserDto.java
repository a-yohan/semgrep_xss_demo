package com.example.semgrep_xss_demo.dto;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserDto {
    
    @NotNull
    @Pattern(regexp = "^[\\p{L} .'-]+$", message = "Name contains not allowed character")
    private String name;
    
    @NotNull
    private String address;
}
