// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.team13.club.domain;

import com.team13.club.domain.Club;
import com.team13.club.domain.Gender;
import com.team13.club.domain.Major;
import com.team13.club.domain.Members;
import java.util.Set;

privileged aspect Members_Roo_JavaBean {
    
    public String Members.getName() {
        return this.Name;
    }
    
    public void Members.setName(String Name) {
        this.Name = Name;
    }
    
    public String Members.getIDMember() {
        return this.IDMember;
    }
    
    public void Members.setIDMember(String IDMember) {
        this.IDMember = IDMember;
    }
    
    public Gender Members.getGender() {
        return this.Gender;
    }
    
    public void Members.setGender(Gender Gender) {
        this.Gender = Gender;
    }
    
    public Integer Members.getAge() {
        return this.Age;
    }
    
    public void Members.setAge(Integer Age) {
        this.Age = Age;
    }
    
    public Major Members.getMajor() {
        return this.Major;
    }
    
    public void Members.setMajor(Major Major) {
        this.Major = Major;
    }
    
    public Set<Club> Members.getClub() {
        return this.Club;
    }
    
    public void Members.setClub(Set<Club> Club) {
        this.Club = Club;
    }
    
}