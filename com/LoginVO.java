package com.dto;
import java.io.Serializable;

public class LoginVO implements java.io.Serializable{
     private String username;
     private String password;

   public LoginVO(){}

   public LoginVO(String username, String password){
      this.username = username;
      this.password = password;
   }

   public void setName(String username){
      this.username = username;
   }
   public void setPassword(String password){
      this.password = password;
   }
    
}