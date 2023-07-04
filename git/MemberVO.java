package com.dto;

public class MemberVO{

    private int idx = 0;
    private String course ="";
    private String gisu = "";
    private String name = "";
    private String gender = "";
    private String regdate = "";

    public MemberVO(){}

    public MemberVO(int idx, String course, String gisu, String name, String gender, String regdate){
        this.idx = idx;
        this.course = course;
        this.gisu = gisu;
        this.name = name;
        this.gender = gender;
        this.regdate = regdate;
    }

    // SET
    public void setIdx(int idx){
        this.idx=idx;
    }

    public void setCourse(String course){
        this.course = course;
    }

    public void setGisu(String gisu){
        this.gisu=gisu;
    }

    public void setName(String name){
        this.name=name;
    }

    public void setGender(String gender){
        this.gender=gender;
    }

    public void setRegdate(String regdate){
        this.regdate = regdate;
    }    


    // GET
    public int getIdx(){
        return idx;
    }

    public String getCourse(){
        return course;
    }

    public String getGisu(){
        return gisu;
    }

    public String getName(){
        return name;
    }

    public String getGender(){
        return gender;
    }

    public String getRegdate(){
        return regdate;
    }

}