// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.team13.club.domain;

import com.team13.club.domain.Activitydetail;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Activitydetail_Roo_Jpa_Entity {
    
    declare @type: Activitydetail: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Activitydetail.id;
    
    @Version
    @Column(name = "version")
    private Integer Activitydetail.version;
    
    public Long Activitydetail.getId() {
        return this.id;
    }
    
    public void Activitydetail.setId(Long id) {
        this.id = id;
    }
    
    public Integer Activitydetail.getVersion() {
        return this.version;
    }
    
    public void Activitydetail.setVersion(Integer version) {
        this.version = version;
    }
    
}
