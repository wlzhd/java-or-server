package com.dto;

public class BoardVO{
    private String idx = "";
    private String username = "";
    private String name = "";
    private String subiect = "";
    private String contenet = "";
    private String regdate = "";


    public BoardVO(String idx, String username, String name, String subiect, String contenet, String regdate){
        this.idx = idx;
        this.username = username;
        this.name = name;
        this.subiect = subiect;
        this.contenet = contenet;
        this.regdate = regdate;
    }

    // SET
    public void setIdx(String idx){
        this.idx = idx;
    }
    public void setUsername(String username){
        this.username = username;
    }
    public void setName(String name){
        this.name = name;
    }
    public void setSubiext(String subiect){
        this.subiect = subiect;
    }
    public void setContenet(String contenet){
        this.contenet = contenet;
    }
    public void setRegdate(String regdate){
        this.regdate = regdate;
    }


    // GET
    public String getIdx(){
        return idx;
    }
    public String getUsername(){
        return username;
    }
    public String getName(){
        return name;
    }
    public String getSubiext(){
        return subiect;
    }
    public String getContenet(){
        return contenet;
    }
    public String getRegdate(){
        return regdate;
    }


}