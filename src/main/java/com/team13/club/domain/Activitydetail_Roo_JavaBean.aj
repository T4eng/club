// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.team13.club.domain;

import com.team13.club.domain.Activity;
import com.team13.club.domain.Activitydetail;
import java.util.Calendar;

privileged aspect Activitydetail_Roo_JavaBean {
    
    public Activity Activitydetail.getActivity() {
        return this.Activity;
    }
    
    public void Activitydetail.setActivity(Activity Activity) {
        this.Activity = Activity;
    }
    
    public String Activitydetail.getDetail() {
        return this.Detail;
    }
    
    public void Activitydetail.setDetail(String Detail) {
        this.Detail = Detail;
    }
    
    public Calendar Activitydetail.getDateTimes() {
        return this.DateTimes;
    }
    
    public void Activitydetail.setDateTimes(Calendar DateTimes) {
        this.DateTimes = DateTimes;
    }
    
    public String Activitydetail.getTimes() {
        return this.Times;
    }
    
    public void Activitydetail.setTimes(String Times) {
        this.Times = Times;
    }
    
    public Float Activitydetail.getBudget() {
        return this.Budget;
    }
    
    public void Activitydetail.setBudget(Float Budget) {
        this.Budget = Budget;
    }
    
}