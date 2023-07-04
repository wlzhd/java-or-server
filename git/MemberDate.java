package com.dao;

import java.util.ArrayList;
import com.dto.MemberVO;

public class MemberDate {
    // 1. 데이터 추가 
    // 공간 만들기
    private ArrayList<MemberVO> listOfMembers =  new ArrayList<MemberVO>();

    // 2. 정보저장
    // 공간 할당하고 정보저장
    public MemberDate(){
        MemberVO m1 = new MemberVO(1,"산대특","2기","김지성","남","2023-07-03");
        MemberVO m2 = new MemberVO(2,"산대특","2기","주일권","남","2023-07-03");
        MemberVO m3 = new MemberVO(3,"산대특","2기","김태수","남","2023-07-03");
    
        listOfMembers.add(m1);
        listOfMembers.add(m2);
        listOfMembers.add(m3);
    }

    //전체 목록 가져오기
    public ArrayList<MemberVO> memberTotal(){
        return listOfMembers;
    }

    // 상세 목록 가져오기



}