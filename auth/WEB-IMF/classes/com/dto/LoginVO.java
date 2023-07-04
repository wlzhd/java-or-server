package com.dto;

public class LoginVO{

    private String username = "jtr6120";
    private String password = "123456";

    public LoginVO(){}

    public LoginVO(String username, String password){
        this.username = username;
        this.password = password;
    }

    public String getUsername(){
        return username;
    }

    public String getPassword(){
        return password;
    }


}